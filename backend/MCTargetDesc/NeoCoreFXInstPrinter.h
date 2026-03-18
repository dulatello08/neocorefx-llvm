//===-- NeoCoreFXInstPrinter.h - NeoCoreFX MCInst to asm --------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_NEOCOREFX_MCTARGETDESC_NEOCOREFXINSTPRINTER_H
#define LLVM_LIB_TARGET_NEOCOREFX_MCTARGETDESC_NEOCOREFXINSTPRINTER_H

#include "llvm/MC/MCInstPrinter.h"

namespace llvm {

class NeoCoreFXInstPrinter : public MCInstPrinter {
public:
  NeoCoreFXInstPrinter(const MCAsmInfo &MAI, const MCInstrInfo &MII,
                       const MCRegisterInfo &MRI)
      : MCInstPrinter(MAI, MII, MRI) {}

  void printInst(const MCInst *MI, uint64_t Address, StringRef Annot,
                 const MCSubtargetInfo &STI, raw_ostream &O) override;
  void printOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);
  void printMemOperand(const MCInst *MI, unsigned OpNo, raw_ostream &O);

  // Auto-generated
  std::pair<const char *, uint64_t> getMnemonic(const MCInst &MI) const override;
  void printInstruction(const MCInst *MI, uint64_t Address, raw_ostream &O);
  static const char *getRegisterName(MCRegister Reg);
};

} // namespace llvm

#endif
