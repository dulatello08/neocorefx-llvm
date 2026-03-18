//===-- NeoCoreFXMCTargetDesc.h - NeoCoreFX Target Descriptions --*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_NEOCOREFX_MCTARGETDESC_NEOCOREFXMCTARGETDESC_H
#define LLVM_LIB_TARGET_NEOCOREFX_MCTARGETDESC_NEOCOREFXMCTARGETDESC_H

#include <memory>

namespace llvm {
class MCAsmBackend;
class MCCodeEmitter;
class MCContext;
class MCInstrInfo;
class MCObjectTargetWriter;
class MCRegisterInfo;
class MCSubtargetInfo;
class MCTargetOptions;
class Target;

MCCodeEmitter *createNeoCoreFXMCCodeEmitter(const MCInstrInfo &MCII,
                                            MCContext &Ctx);

MCAsmBackend *createNeoCoreFXAsmBackend(const Target &T,
                                        const MCSubtargetInfo &STI,
                                        const MCRegisterInfo &MRI,
                                        const MCTargetOptions &Options);

std::unique_ptr<MCObjectTargetWriter> createNeoCoreFXELFObjectWriter();

} // namespace llvm

// Defines symbolic names for NeoCoreFX registers.
#define GET_REGINFO_ENUM
#include "NeoCoreFXGenRegisterInfo.inc"

// Defines symbolic names for NeoCoreFX instructions.
#define GET_INSTRINFO_ENUM
#include "NeoCoreFXGenInstrInfo.inc"

#define GET_SUBTARGETINFO_ENUM
#include "NeoCoreFXGenSubtargetInfo.inc"

#endif
