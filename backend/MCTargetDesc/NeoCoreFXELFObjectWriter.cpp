//===-- NeoCoreFXELFObjectWriter.cpp - NeoCoreFX ELF Object Writer ---------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXMCTargetDesc.h"
#include "llvm/MC/MCELFObjectWriter.h"
#include "llvm/MC/MCValue.h"

using namespace llvm;

namespace {
class NeoCoreFXELFObjectWriter : public MCELFObjectTargetWriter {
public:
  NeoCoreFXELFObjectWriter()
      : MCELFObjectTargetWriter(/*Is64Bit=*/false, /*OSABI=*/0,
                                /*EMachine=*/ELF::EM_NONE,
                                /*HasRelocationAddend=*/true) {}

  unsigned getRelocType(MCContext &Ctx, const MCValue &Target,
                        const MCFixup &Fixup, bool IsPCRel) const override {
    // TODO: Map fixup kinds to ELF relocation types
    return ELF::R_386_NONE;
  }
};
} // namespace

std::unique_ptr<MCObjectTargetWriter> llvm::createNeoCoreFXELFObjectWriter() {
  return std::make_unique<NeoCoreFXELFObjectWriter>();
}
