//===-- NeoCoreFXISelLowering.cpp - NeoCoreFX DAG Lowering -----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXISelLowering.h"
#include "NeoCoreFX.h"
#include "NeoCoreFXSubtarget.h"
#include "NeoCoreFXTargetMachine.h"
#include "MCTargetDesc/NeoCoreFXMCTargetDesc.h"
#include "llvm/CodeGen/CallingConvLower.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/CodeGen/SelectionDAGNodes.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

#include "NeoCoreFXGenCallingConv.inc"

NeoCoreFXTargetLowering::NeoCoreFXTargetLowering(const TargetMachine &TM,
                                                 const NeoCoreFXSubtarget &STI)
    : TargetLowering(TM, STI), Subtarget(STI) {

  // Set up register classes
  addRegisterClass(MVT::i32, &NeoCoreFX::GPRRegClass);
  computeRegisterProperties(Subtarget.getRegisterInfo());

  // Set scheduling preference
  setSchedulingPreference(Sched::RegPressure);

  // Stack alignment
  setMinStackArgumentAlignment(Align(4));

  // Boolean results are i32
  setBooleanContents(ZeroOrOneBooleanContent);

  // Operations we need to expand (no hardware support)
  setOperationAction(ISD::SELECT, MVT::i32, Custom);
  setOperationAction(ISD::BR_CC, MVT::i32, Expand);
  setOperationAction(ISD::SELECT_CC, MVT::i32, Expand);
  setOperationAction(ISD::BR_JT, MVT::Other, Expand);
  setOperationAction(ISD::BRIND, MVT::Other, Expand);
  setOperationAction(ISD::SIGN_EXTEND_INREG, MVT::i1, Expand);
  setOperationAction(ISD::SIGN_EXTEND_INREG, MVT::i8, Expand);
  setOperationAction(ISD::SIGN_EXTEND_INREG, MVT::i16, Expand);

  // No divide/remainder in v0
  setOperationAction(ISD::SDIV, MVT::i32, Custom);
  setOperationAction(ISD::UDIV, MVT::i32, Custom);
  setOperationAction(ISD::SREM, MVT::i32, Custom);
  setOperationAction(ISD::UREM, MVT::i32, Custom);
  setOperationAction(ISD::SDIVREM, MVT::i32, Expand);
  setOperationAction(ISD::UDIVREM, MVT::i32, Expand);

  // No rotates
  setOperationAction(ISD::ROTL, MVT::i32, Expand);
  setOperationAction(ISD::ROTR, MVT::i32, Expand);

  // No cttz, ctlz, ctpop
  setOperationAction(ISD::CTTZ, MVT::i32, Expand);
  setOperationAction(ISD::CTLZ, MVT::i32, Expand);
  setOperationAction(ISD::CTPOP, MVT::i32, Expand);

  // No BSWAP
  setOperationAction(ISD::BSWAP, MVT::i32, Expand);

  // GlobalAddress lowering
  setOperationAction(ISD::GlobalAddress, MVT::i32, Custom);
  setOperationAction(ISD::ExternalSymbol, MVT::i32, Custom);

  // Dynamic stack allocation
  setOperationAction(ISD::DYNAMIC_STACKALLOC, MVT::i32, Expand);

  // Stack pointer register
  setStackPointerRegisterToSaveRestore(NeoCoreFX::R15);

  // Generic DAG expansion can emit these libcalls for intrinsic lowering.
  setLibcallImpl(RTLIB::MEMCPY, RTLIB::impl_memcpy);
  setLibcallImpl(RTLIB::MEMMOVE, RTLIB::impl_memmove);
  setLibcallImpl(RTLIB::MEMSET, RTLIB::impl_memset);

}

const char *NeoCoreFXTargetLowering::getTargetNodeName(unsigned Opcode) const {
  switch (static_cast<NeoCoreFXISD::NodeType>(Opcode)) {
  case NeoCoreFXISD::FIRST_NUMBER: break;
  case NeoCoreFXISD::RET:  return "NeoCoreFXISD::RET";
  case NeoCoreFXISD::CALL: return "NeoCoreFXISD::CALL";
  case NeoCoreFXISD::LA:   return "NeoCoreFXISD::LA";
  }
  return nullptr;
}

SDValue NeoCoreFXTargetLowering::LowerOperation(SDValue Op,
                                                SelectionDAG &DAG) const {
  switch (Op.getOpcode()) {
  case ISD::SELECT: {
    SDLoc DL(Op);
    SDValue Cond = Op.getOperand(0);
    SDValue TrueV = Op.getOperand(1);
    SDValue FalseV = Op.getOperand(2);
    EVT VT = Op.getValueType();

    SDValue CondZero = DAG.getConstant(0, DL, Cond.getValueType());
    SDValue CondNZ = DAG.getSetCC(DL, Cond.getValueType(), Cond, CondZero,
                                  ISD::SETNE);
    if (CondNZ.getValueType() != VT)
      CondNZ = DAG.getZExtOrTrunc(CondNZ, DL, VT);

    SDValue Zero = DAG.getConstant(0, DL, VT);
    SDValue Mask = DAG.getNode(ISD::SUB, DL, VT, Zero, CondNZ);
    SDValue Diff = DAG.getNode(ISD::XOR, DL, VT, TrueV, FalseV);
    SDValue SelectBits = DAG.getNode(ISD::AND, DL, VT, Diff, Mask);
    return DAG.getNode(ISD::XOR, DL, VT, FalseV, SelectBits);
  }
  case ISD::SDIV:
  case ISD::UDIV:
  case ISD::SREM:
  case ISD::UREM: {
    assert(Op.getValueType() == MVT::i32 && "Only i32 div/rem is expected");
    SDLoc DL(Op);
    SmallVector<SDValue, 2> Args = {Op.getOperand(0), Op.getOperand(1)};
    MakeLibCallOptions CallOptions;
    RTLIB::LibcallImpl Impl = RTLIB::Unsupported;
    switch (Op.getOpcode()) {
    case ISD::SDIV: Impl = RTLIB::impl___divsi3; break;
    case ISD::UDIV: Impl = RTLIB::impl___udivsi3; break;
    case ISD::SREM: Impl = RTLIB::impl___modsi3; break;
    case ISD::UREM: Impl = RTLIB::impl___umodsi3; break;
    default: llvm_unreachable("Unexpected div/rem opcode");
    }
    auto [Res, Chain] = makeLibCall(DAG, Impl, MVT::i32, Args, CallOptions, DL);
    (void)Chain;
    return Res;
  }
  case ISD::GlobalAddress: {
    const GlobalAddressSDNode *GA = cast<GlobalAddressSDNode>(Op);
    SDLoc DL(Op);
    EVT VT = Op.getValueType();
    const GlobalValue *GV = GA->getGlobal();
    SDValue GANode = DAG.getTargetGlobalAddress(GV, DL, VT, GA->getOffset());
    SDValue Base = DAG.getNode(NeoCoreFXISD::LA, DL, VT, GANode);
    return DAG.getNode(ISD::ADD, DL, VT, Base, DAG.getConstant(0, DL, VT));
  }
  case ISD::ExternalSymbol: {
    const ExternalSymbolSDNode *ES = cast<ExternalSymbolSDNode>(Op);
    SDLoc DL(Op);
    EVT VT = Op.getValueType();
    SDValue Sym = DAG.getTargetExternalSymbol(ES->getSymbol(), VT);
    SDValue Base = DAG.getNode(NeoCoreFXISD::LA, DL, VT, Sym);
    return DAG.getNode(ISD::ADD, DL, VT, Base, DAG.getConstant(0, DL, VT));
  }
  default:
    llvm_unreachable("Custom lowering not implemented for this operation");
  }
}

SDValue NeoCoreFXTargetLowering::LowerFormalArguments(
    SDValue Chain, CallingConv::ID CallConv, bool IsVarArg,
    const SmallVectorImpl<ISD::InputArg> &Ins, const SDLoc &DL,
    SelectionDAG &DAG, SmallVectorImpl<SDValue> &InVals) const {

  MachineFunction &MF = DAG.getMachineFunction();
  MachineRegisterInfo &RegInfo = MF.getRegInfo();

  // Analyze incoming arguments
  SmallVector<CCValAssign, 16> ArgLocs;
  CCState CCInfo(CallConv, IsVarArg, MF, ArgLocs, *DAG.getContext());
  CCInfo.AnalyzeFormalArguments(Ins, CC_NeoCoreFX);

  for (auto &VA : ArgLocs) {
    if (VA.isRegLoc()) {
      // Argument passed in register
      Register VReg = RegInfo.createVirtualRegister(&NeoCoreFX::GPRRegClass);
      RegInfo.addLiveIn(VA.getLocReg(), VReg);
      SDValue ArgVal = DAG.getCopyFromReg(Chain, DL, VReg, MVT::i32);
      InVals.push_back(ArgVal);
      Chain = ArgVal.getValue(1);
    } else {
      // Argument passed on stack
      assert(VA.isMemLoc() && "Expected memory location for argument");
      int FI = MF.getFrameInfo().CreateFixedObject(4, VA.getLocMemOffset(),
                                                    true);
      SDValue FIN = DAG.getFrameIndex(FI, MVT::i32);
      SDValue Load = DAG.getLoad(MVT::i32, DL, Chain, FIN,
                                  MachinePointerInfo::getFixedStack(MF, FI));
      InVals.push_back(Load);
      Chain = Load.getValue(1);
    }
  }

  return Chain;
}

SDValue NeoCoreFXTargetLowering::LowerReturn(
    SDValue Chain, CallingConv::ID CallConv, bool IsVarArg,
    const SmallVectorImpl<ISD::OutputArg> &Outs,
    const SmallVectorImpl<SDValue> &OutVals, const SDLoc &DL,
    SelectionDAG &DAG) const {

  SmallVector<CCValAssign, 16> RVLocs;
  CCState CCInfo(CallConv, IsVarArg, DAG.getMachineFunction(), RVLocs,
                 *DAG.getContext());
  CCInfo.AnalyzeReturn(Outs, RetCC_NeoCoreFX);

  SDValue Glue;
  SmallVector<SDValue, 4> RetOps(1, Chain);

  for (unsigned i = 0; i < RVLocs.size(); ++i) {
    CCValAssign &VA = RVLocs[i];
    Chain = DAG.getCopyToReg(Chain, DL, VA.getLocReg(), OutVals[i], Glue);
    Glue = Chain.getValue(1);
    RetOps.push_back(DAG.getRegister(VA.getLocReg(), VA.getLocVT()));
  }

  RetOps[0] = Chain;
  if (Glue.getNode())
    RetOps.push_back(Glue);

  return DAG.getNode(NeoCoreFXISD::RET, DL, MVT::Other, RetOps);
}

SDValue NeoCoreFXTargetLowering::LowerCall(
    TargetLowering::CallLoweringInfo &CLI,
    SmallVectorImpl<SDValue> &InVals) const {
  CLI.IsTailCall = false;

  SelectionDAG &DAG = CLI.DAG;
  SDLoc DL = CLI.DL;
  MachineFunction &MF = DAG.getMachineFunction();

  SmallVector<CCValAssign, 16> ArgLocs;
  CCState CCInfo(CLI.CallConv, CLI.IsVarArg, MF, ArgLocs, *DAG.getContext());
  CCInfo.AnalyzeCallOperands(CLI.Outs, CC_NeoCoreFX);

  unsigned NumBytes = CCInfo.getStackSize();
  SDValue Chain = CLI.Chain;
  Chain = DAG.getCALLSEQ_START(Chain, NumBytes, 0, DL);

  SmallVector<std::pair<Register, SDValue>, 8> RegsToPass;
  SmallVector<SDValue, 8> MemOpChains;
  EVT PtrVT = getPointerTy(DAG.getDataLayout());

  for (const CCValAssign &VA : ArgLocs) {
    assert(VA.getValNo() < CLI.OutVals.size() &&
           "CC assignment refers to invalid outgoing value");
    SDValue Arg = CLI.OutVals[VA.getValNo()];

    if (VA.getLocInfo() == CCValAssign::SExt)
      Arg = DAG.getNode(ISD::SIGN_EXTEND, DL, VA.getLocVT(), Arg);
    else if (VA.getLocInfo() == CCValAssign::ZExt)
      Arg = DAG.getNode(ISD::ZERO_EXTEND, DL, VA.getLocVT(), Arg);
    else if (VA.getLocInfo() == CCValAssign::AExt)
      Arg = DAG.getNode(ISD::ANY_EXTEND, DL, VA.getLocVT(), Arg);

    if (VA.isRegLoc()) {
      RegsToPass.push_back(std::make_pair(VA.getLocReg(), Arg));
      continue;
    }

    assert(VA.isMemLoc() && "Unexpected non-register/non-memory argument");
    SDValue StackPtr = DAG.getRegister(NeoCoreFX::R15, PtrVT);
    SDValue PtrOff = DAG.getIntPtrConstant(VA.getLocMemOffset(), DL);
    SDValue Address = DAG.getNode(ISD::ADD, DL, PtrVT, StackPtr, PtrOff);
    MemOpChains.push_back(DAG.getStore(Chain, DL, Arg, Address, MachinePointerInfo()));
  }

  if (!MemOpChains.empty())
    Chain = DAG.getNode(ISD::TokenFactor, DL, MVT::Other, MemOpChains);
  SDValue Glue;
  for (const auto &[Reg, Value] : RegsToPass) {
    Chain = DAG.getCopyToReg(Chain, DL, Reg, Value, Glue);
    Glue = Chain.getValue(1);
  }

  SDValue Callee = CLI.Callee;
  // External symbols/global addresses may already be custom-lowered as
  //   add(la(symbol), 0). Recover the direct symbol form so CALL selection
  // can keep using a direct call pseudo.
  if (Callee.getOpcode() == ISD::ADD) {
    SDValue LHS = Callee.getOperand(0);
    SDValue RHS = Callee.getOperand(1);
    if (LHS.getOpcode() == NeoCoreFXISD::LA && isa<ConstantSDNode>(RHS) &&
        cast<ConstantSDNode>(RHS)->isZero())
      Callee = LHS;
  }
  if (Callee.getOpcode() == NeoCoreFXISD::LA)
    Callee = Callee.getOperand(0);

  if (const auto *G = dyn_cast<GlobalAddressSDNode>(Callee)) {
    Callee = DAG.getTargetGlobalAddress(G->getGlobal(), DL, PtrVT,
                                        G->getOffset(), G->getTargetFlags());
  } else if (const auto *ES = dyn_cast<ExternalSymbolSDNode>(Callee)) {
    const char *Sym = ES->getSymbol();
    if (!Sym)
      report_fatal_error("NeoCoreFX external symbol call has null symbol");
    Callee = DAG.getTargetExternalSymbol(Sym, PtrVT, ES->getTargetFlags());
  } else {
    report_fatal_error("NeoCoreFX only supports direct symbol calls");
  }

  SmallVector<SDValue, 8> Ops;
  Ops.push_back(Chain);
  Ops.push_back(Callee);

  for (const auto &[Reg, Value] : RegsToPass)
    Ops.push_back(DAG.getRegister(Reg, Value.getValueType()));

  const uint32_t *Mask =
      Subtarget.getRegisterInfo()->getCallPreservedMask(MF, CLI.CallConv);
  Ops.push_back(DAG.getRegisterMask(Mask));

  if (Glue.getNode())
    Ops.push_back(Glue);
  SDVTList NodeTys = DAG.getVTList(MVT::Other, MVT::Glue);
  Chain = DAG.getNode(NeoCoreFXISD::CALL, DL, NodeTys, Ops);
  Glue = Chain.getValue(1);

  Chain = DAG.getCALLSEQ_END(Chain, NumBytes, 0, Glue, DL);
  Glue = Chain.getValue(1);

  SmallVector<CCValAssign, 16> RVLocs;
  CCState RetCCInfo(CLI.CallConv, CLI.IsVarArg, MF, RVLocs, *DAG.getContext());
  RetCCInfo.AnalyzeCallResult(CLI.Ins, RetCC_NeoCoreFX);

  for (const CCValAssign &VA : RVLocs) {
    SDValue Val =
        DAG.getCopyFromReg(Chain, DL, VA.getLocReg(), VA.getLocVT(), Glue);
    Chain = Val.getValue(1);
    Glue = Val.getValue(2);

    if (VA.getLocInfo() == CCValAssign::SExt)
      Val = DAG.getNode(ISD::AssertSext, DL, VA.getLocVT(), Val,
                        DAG.getValueType(VA.getValVT()));
    else if (VA.getLocInfo() == CCValAssign::ZExt)
      Val = DAG.getNode(ISD::AssertZext, DL, VA.getLocVT(), Val,
                        DAG.getValueType(VA.getValVT()));

    if (VA.getLocVT() != VA.getValVT())
      Val = DAG.getNode(ISD::TRUNCATE, DL, VA.getValVT(), Val);

    InVals.push_back(Val);
  }

  return Chain;
}

bool NeoCoreFXTargetLowering::CanLowerReturn(
    CallingConv::ID CallConv, MachineFunction &MF, bool IsVarArg,
    const SmallVectorImpl<ISD::OutputArg> &Outs, LLVMContext &Context,
    const Type *RetTy) const {
  SmallVector<CCValAssign, 16> RVLocs;
  CCState CCInfo(CallConv, IsVarArg, MF, RVLocs, Context);
  return CCInfo.CheckReturn(Outs, RetCC_NeoCoreFX);
}
