//===-- NeoCoreFXMCTargetDesc.cpp - NeoCoreFX Target Descriptions ----------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXMCTargetDesc.h"
#include "NeoCoreFXInstPrinter.h"
#include "NeoCoreFXMCAsmInfo.h"
#include "TargetInfo/NeoCoreFXTargetInfo.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/Compiler.h"

using namespace llvm;

#define GET_INSTRINFO_MC_DESC
#define GET_INSTRINFO_MC_HELPERS
#include "NeoCoreFXGenInstrInfo.inc"

#define GET_SUBTARGETINFO_MC_DESC
#include "NeoCoreFXGenSubtargetInfo.inc"

#define GET_REGINFO_MC_DESC
#include "NeoCoreFXGenRegisterInfo.inc"

static MCInstrInfo *createNeoCoreFXMCInstrInfo() {
  MCInstrInfo *X = new MCInstrInfo();
  InitNeoCoreFXMCInstrInfo(X);
  return X;
}

static MCRegisterInfo *createNeoCoreFXMCRegisterInfo(const Triple &TT) {
  MCRegisterInfo *X = new MCRegisterInfo();
  InitNeoCoreFXMCRegisterInfo(X, NeoCoreFX::R11 /* RA */);
  return X;
}

static MCSubtargetInfo *
createNeoCoreFXMCSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS) {
  if (CPU.empty())
    CPU = "generic";
  return createNeoCoreFXMCSubtargetInfoImpl(TT, CPU, /*TuneCPU=*/CPU, FS);
}

static MCAsmInfo *createNeoCoreFXMCAsmInfo(const MCRegisterInfo &MRI,
                                           const Triple &TT,
                                           const MCTargetOptions &Options) {
  return new NeoCoreFXMCAsmInfo(TT);
}

static MCInstPrinter *createNeoCoreFXMCInstPrinter(const Triple &T,
                                                   unsigned SyntaxVariant,
                                                   const MCAsmInfo &MAI,
                                                   const MCInstrInfo &MII,
                                                   const MCRegisterInfo &MRI) {
  return new NeoCoreFXInstPrinter(MAI, MII, MRI);
}

extern "C" LLVM_ABI LLVM_EXTERNAL_VISIBILITY void
LLVMInitializeNeoCoreFXTargetMC() {
  Target &T = getTheNeoCoreFXTarget();

  TargetRegistry::RegisterMCInstrInfo(T, createNeoCoreFXMCInstrInfo);
  TargetRegistry::RegisterMCRegInfo(T, createNeoCoreFXMCRegisterInfo);
  TargetRegistry::RegisterMCSubtargetInfo(T, createNeoCoreFXMCSubtargetInfo);
  TargetRegistry::RegisterMCAsmInfo(T, createNeoCoreFXMCAsmInfo);
  TargetRegistry::RegisterMCInstPrinter(T, createNeoCoreFXMCInstPrinter);
  TargetRegistry::RegisterMCAsmBackend(T, createNeoCoreFXAsmBackend);
  TargetRegistry::RegisterMCCodeEmitter(T, createNeoCoreFXMCCodeEmitter);
}
