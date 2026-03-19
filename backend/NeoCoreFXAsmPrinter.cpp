//===-- NeoCoreFXAsmPrinter.cpp - NeoCoreFX Assembly Printer ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFX.h"
#include "NeoCoreFXInstrInfo.h"
#include "NeoCoreFXTargetMachine.h"
#include "MCTargetDesc/NeoCoreFXInstPrinter.h"
#include "MCTargetDesc/NeoCoreFXMCTargetDesc.h"
#include "TargetInfo/NeoCoreFXTargetInfo.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Target/TargetLoweringObjectFile.h"

using namespace llvm;

#define DEBUG_TYPE "asm-printer"

namespace {
class NeoCoreFXAsmPrinter : public AsmPrinter {
public:
  explicit NeoCoreFXAsmPrinter(TargetMachine &TM,
                               std::unique_ptr<MCStreamer> Streamer)
      : AsmPrinter(TM, std::move(Streamer)) {}

  StringRef getPassName() const override { return "NeoCoreFX Assembly Printer"; }

  void emitStartOfAsmFile(Module &M) override;

  void emitInstruction(const MachineInstr *MI) override;

  bool lowerOperand(const MachineOperand &MO, MCOperand &MCOp) const;
};
} // namespace

void NeoCoreFXAsmPrinter::emitStartOfAsmFile(Module &M) {
  Function *Main = M.getFunction("main");
  Function *Start = M.getFunction("_start");
  if (!Main || Main->isDeclaration() || (Start && !Start->isDeclaration()))
    return;

  OutStreamer->switchSection(getObjFileLowering().getTextSection());

  MCSymbol *StartSym = OutContext.getOrCreateSymbol("_start");
  OutStreamer->emitSymbolAttribute(StartSym, MCSA_Global);
  OutStreamer->emitLabel(StartSym);

  if (OutStreamer->hasRawTextSupport()) {
    OutStreamer->emitRawText("\tli\tr15, #0x0000FFFC");
    OutStreamer->emitRawText("\tjal\tr11, main");
    OutStreamer->emitRawText("\thalt");
    return;
  }

  // Fallback for non-text streamers.
  MCSymbol *MainSym = OutContext.getOrCreateSymbol("main");
  MCSymbol *TrapSym = OutContext.createTempSymbol("L_start_trap");

  MCInst LUIInst;
  LUIInst.setOpcode(NeoCoreFX::LUI);
  LUIInst.addOperand(MCOperand::createReg(NeoCoreFX::R15));
  LUIInst.addOperand(MCOperand::createImm(0));
  EmitToStreamer(*OutStreamer, LUIInst);

  MCInst ORIInst;
  ORIInst.setOpcode(NeoCoreFX::ORI);
  ORIInst.addOperand(MCOperand::createReg(NeoCoreFX::R15));
  ORIInst.addOperand(MCOperand::createReg(NeoCoreFX::R15));
  ORIInst.addOperand(MCOperand::createImm(0xFFFC));
  EmitToStreamer(*OutStreamer, ORIInst);

  MCInst CallMain;
  CallMain.setOpcode(NeoCoreFX::JAL);
  CallMain.addOperand(MCOperand::createReg(NeoCoreFX::R11));
  CallMain.addOperand(
      MCOperand::createExpr(MCSymbolRefExpr::create(MainSym, OutContext)));
  EmitToStreamer(*OutStreamer, CallMain);

  OutStreamer->emitLabel(TrapSym);
  MCInst Trap;
  Trap.setOpcode(NeoCoreFX::B);
  Trap.addOperand(
      MCOperand::createExpr(MCSymbolRefExpr::create(TrapSym, OutContext)));
  EmitToStreamer(*OutStreamer, Trap);
}

void NeoCoreFXAsmPrinter::emitInstruction(const MachineInstr *MI) {
  MCInst TmpInst;

  // Handle pseudo instructions
  switch (MI->getOpcode()) {
  case NeoCoreFX::RET:
    if (OutStreamer->hasRawTextSupport()) {
      OutStreamer->emitRawText("\tret");
      return;
    }
    TmpInst.setOpcode(NeoCoreFX::JALR);
    TmpInst.addOperand(MCOperand::createReg(NeoCoreFX::R0));
    TmpInst.addOperand(MCOperand::createReg(NeoCoreFX::R11));
    TmpInst.addOperand(MCOperand::createImm(0));
    EmitToStreamer(*OutStreamer, TmpInst);
    return;
  case NeoCoreFX::CALL: {
    if (MI->getNumOperands() < 1)
      llvm_unreachable("CALL pseudo without target operand");

    const MachineOperand &Target = MI->getOperand(0);
    std::string TargetName;
    switch (Target.getType()) {
    case MachineOperand::MO_GlobalAddress:
      if (!Target.getOffset()) {
        TargetName = getSymbol(Target.getGlobal())->getName().str();
        break;
      }
      [[fallthrough]];
    case MachineOperand::MO_ExternalSymbol:
      TargetName = Target.getSymbolName();
      break;
    case MachineOperand::MO_MachineBasicBlock:
      TargetName = Target.getMBB()->getSymbol()->getName().str();
      break;
    default:
      break;
    }

    const bool IsExternalCall =
        Target.getType() == MachineOperand::MO_ExternalSymbol;

    if (OutStreamer->hasRawTextSupport() && !TargetName.empty() &&
        IsExternalCall) {
      OutStreamer->emitRawText("\tcall\t" + TargetName);
      return;
    }

    // Fallback: emit concrete JAL if target cannot be printed as a simple label.
    MCOperand TargetOp;
    if (lowerOperand(Target, TargetOp)) {
      TmpInst.setOpcode(NeoCoreFX::JAL);
      TmpInst.addOperand(MCOperand::createReg(NeoCoreFX::R11));
      TmpInst.addOperand(TargetOp);
      EmitToStreamer(*OutStreamer, TmpInst);
      return;
    }

    llvm_unreachable("CALL target operand is not lowerable");
  }
  default:
    break;
  }

  TmpInst.setOpcode(MI->getOpcode());
  for (const MachineOperand &MO : MI->operands()) {
    MCOperand MCOp;
    if (lowerOperand(MO, MCOp))
      TmpInst.addOperand(MCOp);
  }
  EmitToStreamer(*OutStreamer, TmpInst);
}

bool NeoCoreFXAsmPrinter::lowerOperand(const MachineOperand &MO,
                                       MCOperand &MCOp) const {
  switch (MO.getType()) {
  case MachineOperand::MO_Register:
    if (MO.isImplicit())
      return false;
    MCOp = MCOperand::createReg(MO.getReg());
    return true;
  case MachineOperand::MO_Immediate:
    MCOp = MCOperand::createImm(MO.getImm());
    return true;
  case MachineOperand::MO_MachineBasicBlock:
    MCOp = MCOperand::createExpr(
        MCSymbolRefExpr::create(MO.getMBB()->getSymbol(), OutContext));
    return true;
  case MachineOperand::MO_GlobalAddress:
    {
      const MCExpr *Expr =
          MCSymbolRefExpr::create(getSymbol(MO.getGlobal()), OutContext);
      if (MO.getOffset())
        Expr = MCBinaryExpr::createAdd(
            Expr, MCConstantExpr::create(MO.getOffset(), OutContext), OutContext);
      MCOp = MCOperand::createExpr(Expr);
    }
    return true;
  case MachineOperand::MO_ExternalSymbol:
    MCOp = MCOperand::createExpr(MCSymbolRefExpr::create(
        GetExternalSymbolSymbol(MO.getSymbolName()), OutContext));
    return true;
  default:
    return false;
  }
}

extern "C" LLVM_ABI LLVM_EXTERNAL_VISIBILITY void
LLVMInitializeNeoCoreFXAsmPrinter() {
  RegisterAsmPrinter<NeoCoreFXAsmPrinter> X(getTheNeoCoreFXTarget());
}
