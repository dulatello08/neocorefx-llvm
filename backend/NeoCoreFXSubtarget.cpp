//===-- NeoCoreFXSubtarget.cpp - NeoCoreFX Subtarget -----------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXSubtarget.h"
#include "NeoCoreFX.h"
#include "llvm/MC/TargetRegistry.h"

using namespace llvm;

#define DEBUG_TYPE "neocorefx-subtarget"

#define GET_SUBTARGETINFO_TARGET_DESC
#define GET_SUBTARGETINFO_CTOR
#include "NeoCoreFXGenSubtargetInfo.inc"

NeoCoreFXSubtarget::NeoCoreFXSubtarget(const Triple &TT, StringRef CPU,
                                       StringRef FS, const TargetMachine &TM)
    : NeoCoreFXGenSubtargetInfo(TT, CPU, /*TuneCPU=*/CPU, FS),
      InstrInfo(*this),
      FrameLowering(),
      TLInfo(TM, *this) {
  ParseSubtargetFeatures(CPU, /*TuneCPU=*/CPU, FS);
}
