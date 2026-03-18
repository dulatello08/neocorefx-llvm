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
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/Compiler.h"

using namespace llvm;

#define DEBUG_TYPE "asm-printer"

namespace {
class NeoCoreFXAsmPrinter : public AsmPrinter {
public:
  explicit NeoCoreFXAsmPrinter(TargetMachine &TM,
                               std::unique_ptr<MCStreamer> Streamer)
      : AsmPrinter(TM, std::move(Streamer)) {}

  StringRef getPassName() const override { return "NeoCoreFX Assembly Printer"; }

  void emitInstruction(const MachineInstr *MI) override;

  bool lowerOperand(const MachineOperand &MO, MCOperand &MCOp) const;
};
} // namespace

void NeoCoreFXAsmPrinter::emitInstruction(const MachineInstr *MI) {
  MCInst TmpInst;

  // Handle pseudo instructions
  switch (MI->getOpcode()) {
  case NeoCoreFX::RET:
    // RET → JALR r0, r11, 0
    TmpInst.setOpcode(NeoCoreFX::JALR);
    TmpInst.addOperand(MCOperand::createReg(NeoCoreFX::R0));
    TmpInst.addOperand(MCOperand::createReg(NeoCoreFX::R11));
    TmpInst.addOperand(MCOperand::createImm(0));
    EmitToStreamer(*OutStreamer, TmpInst);
    return;
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
    MCOp = MCOperand::createExpr(
        MCSymbolRefExpr::create(getSymbol(MO.getGlobal()), OutContext));
    return true;
  default:
    return false;
  }
}

extern "C" LLVM_ABI LLVM_EXTERNAL_VISIBILITY void
LLVMInitializeNeoCoreFXAsmPrinter() {
  RegisterAsmPrinter<NeoCoreFXAsmPrinter> X(getTheNeoCoreFXTarget());
}
