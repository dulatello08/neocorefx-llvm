//===-- NeoCoreFXSubtarget.h - NeoCoreFX Subtarget Info ----------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFXSUBTARGET_H
#define LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFXSUBTARGET_H

#include "NeoCoreFXFrameLowering.h"
#include "NeoCoreFXISelLowering.h"
#include "NeoCoreFXInstrInfo.h"
#include "NeoCoreFXRegisterInfo.h"
#include "llvm/CodeGen/SelectionDAGTargetInfo.h"
#include "llvm/CodeGen/TargetSubtargetInfo.h"
#include "llvm/IR/DataLayout.h"

#define GET_SUBTARGETINFO_HEADER
#include "NeoCoreFXGenSubtargetInfo.inc"

namespace llvm {
class StringRef;

class NeoCoreFXSubtarget : public NeoCoreFXGenSubtargetInfo {
  NeoCoreFXInstrInfo InstrInfo;
  NeoCoreFXFrameLowering FrameLowering;
  NeoCoreFXTargetLowering TLInfo;
  SelectionDAGTargetInfo TSInfo;

public:
  NeoCoreFXSubtarget(const Triple &TT, StringRef CPU, StringRef FS,
                     const TargetMachine &TM);

  void ParseSubtargetFeatures(StringRef CPU, StringRef TuneCPU, StringRef FS);

  const NeoCoreFXInstrInfo *getInstrInfo() const override { return &InstrInfo; }
  const NeoCoreFXFrameLowering *getFrameLowering() const override {
    return &FrameLowering;
  }
  const NeoCoreFXRegisterInfo *getRegisterInfo() const override {
    return &InstrInfo.getRegisterInfo();
  }
  const NeoCoreFXTargetLowering *getTargetLowering() const override {
    return &TLInfo;
  }
  const SelectionDAGTargetInfo *getSelectionDAGInfo() const override {
    return &TSInfo;
  }
};

} // namespace llvm

#endif
