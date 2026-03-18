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
    : TargetLowering(TM), Subtarget(STI) {

  // Set up register classes
  addRegisterClass(MVT::i32, &NeoCoreFX::GPRRegClass);
  computeRegisterProperties(Subtarget.getRegisterInfo()->getRegInfoDesc());

  // Set scheduling preference
  setSchedulingPreference(Sched::RegPressure);

  // Stack alignment
  setMinStackArgumentAlignment(Align(4));

  // Boolean results are i32
  setBooleanContents(ZeroOrOneBooleanContent);

  // Operations we need to expand (no hardware support)
  setOperationAction(ISD::BR_CC, MVT::i32, Expand);
  setOperationAction(ISD::SELECT_CC, MVT::i32, Expand);
  setOperationAction(ISD::SIGN_EXTEND_INREG, MVT::i1, Expand);
  setOperationAction(ISD::SIGN_EXTEND_INREG, MVT::i8, Expand);
  setOperationAction(ISD::SIGN_EXTEND_INREG, MVT::i16, Expand);

  // No divide/remainder in v0
  setOperationAction(ISD::SDIV, MVT::i32, Expand);
  setOperationAction(ISD::UDIV, MVT::i32, Expand);
  setOperationAction(ISD::SREM, MVT::i32, Expand);
  setOperationAction(ISD::UREM, MVT::i32, Expand);
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

  // Dynamic stack allocation
  setOperationAction(ISD::DYNAMIC_STACKALLOC, MVT::i32, Expand);

  // Stack pointer register
  setStackPointerRegisterToSaveRestore(NeoCoreFX::R15);
}

const char *NeoCoreFXTargetLowering::getTargetNodeName(unsigned Opcode) const {
  switch (static_cast<NeoCoreFXISD::NodeType>(Opcode)) {
  case NeoCoreFXISD::RET:  return "NeoCoreFXISD::RET";
  case NeoCoreFXISD::CALL: return "NeoCoreFXISD::CALL";
  }
  return nullptr;
}

SDValue NeoCoreFXTargetLowering::LowerOperation(SDValue Op,
                                                SelectionDAG &DAG) const {
  switch (Op.getOpcode()) {
  case ISD::GlobalAddress: {
    // Lower GlobalAddress to LUI + ORI sequence
    const GlobalAddressSDNode *GA = cast<GlobalAddressSDNode>(Op);
    SDLoc DL(Op);
    EVT VT = Op.getValueType();
    const GlobalValue *GV = GA->getGlobal();
    SDValue GANode = DAG.getTargetGlobalAddress(GV, DL, VT, GA->getOffset());
    // For now, materialize as a generic constant
    // TODO: Use LUI+ORI or LPC pattern
    return DAG.getNode(ISD::Constant, DL, VT, GANode);
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
    } else {
      // Argument passed on stack
      assert(VA.isMemLoc() && "Expected memory location for argument");
      int FI = MF.getFrameInfo().CreateFixedObject(4, VA.getLocMemOffset(),
                                                    true);
      SDValue FIN = DAG.getFrameIndex(FI, MVT::i32);
      SDValue Load = DAG.getLoad(MVT::i32, DL, Chain, FIN,
                                  MachinePointerInfo::getFixedStack(MF, FI));
      InVals.push_back(Load);
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
  // TODO: Implement call lowering
  report_fatal_error("NeoCoreFX call lowering not yet implemented");
}

bool NeoCoreFXTargetLowering::CanLowerReturn(
    CallingConv::ID CallConv, MachineFunction &MF, bool IsVarArg,
    const SmallVectorImpl<ISD::OutputArg> &Outs, LLVMContext &Context) const {
  SmallVector<CCValAssign, 16> RVLocs;
  CCState CCInfo(CallConv, IsVarArg, MF, RVLocs, Context);
  return CCInfo.CheckReturn(Outs, RetCC_NeoCoreFX);
}
