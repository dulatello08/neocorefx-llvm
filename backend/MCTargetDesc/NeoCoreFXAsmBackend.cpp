//===-- NeoCoreFXAsmBackend.cpp - NeoCoreFX Asm Backend --------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXMCTargetDesc.h"
#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCAssembler.h"
#include "llvm/MC/MCELFObjectWriter.h"
#include "llvm/MC/MCFixupKindInfo.h"
#include "llvm/MC/MCObjectWriter.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/MCValue.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/Compiler.h"

using namespace llvm;

namespace {
class NeoCoreFXAsmBackend : public MCAsmBackend {
public:
  NeoCoreFXAsmBackend(const MCSubtargetInfo &STI, const MCTargetOptions &Options)
      : MCAsmBackend(llvm::endianness::big) {}

  unsigned getNumFixupKinds() const override { return 0; }

  void applyFixup(const MCAssembler &Asm, const MCFixup &Fixup,
                  const MCValue &Target, MutableArrayRef<char> Data,
                  uint64_t Value, bool IsResolved,
                  const MCSubtargetInfo *STI) const override {
    // TODO: Implement fixup application for relocations
  }

  bool fixupNeedsRelaxation(const MCFixup &Fixup,
                            uint64_t Value) const override {
    return false;
  }

  bool writeNopData(raw_ostream &OS, uint64_t Count,
                    const MCSubtargetInfo *STI) const override {
    // NOP = 0x00000000
    if (Count % 4 != 0)
      return false;
    for (uint64_t i = 0; i < Count; i += 4) {
      OS.write('\0');
      OS.write('\0');
      OS.write('\0');
      OS.write('\0');
    }
    return true;
  }

  std::unique_ptr<MCObjectTargetWriter>
  createObjectTargetWriter() const override {
    return createNeoCoreFXELFObjectWriter();
  }
};
} // namespace

MCAsmBackend *llvm::createNeoCoreFXAsmBackend(const Target &T,
                                              const MCSubtargetInfo &STI,
                                              const MCRegisterInfo &MRI,
                                              const MCTargetOptions &Options) {
  return new NeoCoreFXAsmBackend(STI, Options);
}
