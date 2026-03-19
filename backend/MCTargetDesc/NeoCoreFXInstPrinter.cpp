//===-- NeoCoreFXInstPrinter.cpp - NeoCoreFX MCInst to asm -----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXInstPrinter.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

#define DEBUG_TYPE "asm-printer"

// Include the auto-generated portion of the assembly writer.
#define PRINT_ALIAS_INSTR
#include "NeoCoreFXGenAsmWriter.inc"

void NeoCoreFXInstPrinter::printInst(const MCInst *MI, uint64_t Address,
                                     StringRef Annot,
                                     const MCSubtargetInfo &STI,
                                     raw_ostream &O) {
  printInstruction(MI, Address, O);
  printAnnotation(O, Annot);
}

void NeoCoreFXInstPrinter::printOperand(const MCInst *MI, unsigned OpNo,
                                        raw_ostream &O) {
  const MCOperand &Op = MI->getOperand(OpNo);
  if (Op.isReg())
    O << getRegisterName(Op.getReg());
  else if (Op.isImm())
    O << Op.getImm();
  else if (Op.isExpr())
    MAI.printExpr(O, *Op.getExpr());
  else
    llvm_unreachable("Unknown operand kind in printOperand");
}

void NeoCoreFXInstPrinter::printMemOperand(const MCInst *MI, unsigned OpNo,
                                           raw_ostream &O) {
  const MCOperand &Base = MI->getOperand(OpNo);
  const MCOperand &Offset = MI->getOperand(OpNo + 1);

  if (Offset.isImm() && Offset.getImm() != 0)
    O << Offset.getImm();
  O << "(";
  O << getRegisterName(Base.getReg());
  O << ")";
}
