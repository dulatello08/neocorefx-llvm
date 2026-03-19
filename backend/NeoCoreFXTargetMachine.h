//===-- NeoCoreFXTargetMachine.h - NeoCoreFX Target Machine ------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFXTARGETMACHINE_H
#define LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFXTARGETMACHINE_H

#include "NeoCoreFXSubtarget.h"
#include "llvm/CodeGen/CodeGenTargetMachineImpl.h"
#include "llvm/Target/TargetMachine.h"

namespace llvm {

class NeoCoreFXTargetMachine : public CodeGenTargetMachineImpl {
  NeoCoreFXSubtarget Subtarget;
  std::unique_ptr<TargetLoweringObjectFile> TLOF;

public:
  NeoCoreFXTargetMachine(const Target &T, const Triple &TT, StringRef CPU,
                         StringRef FS, const TargetOptions &Options,
                         std::optional<Reloc::Model> RM,
                         std::optional<CodeModel::Model> CM,
                         CodeGenOptLevel OL, bool JIT);

  const NeoCoreFXSubtarget *getSubtargetImpl(const Function &F) const override {
    return &Subtarget;
  }

  TargetPassConfig *createPassConfig(PassManagerBase &PM) override;

  TargetLoweringObjectFile *getObjFileLowering() const override {
    return TLOF.get();
  }
};

} // namespace llvm

#endif
