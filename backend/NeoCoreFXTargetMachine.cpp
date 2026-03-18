//===-- NeoCoreFXTargetMachine.cpp - NeoCoreFX Target Machine --------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXTargetMachine.h"
#include "NeoCoreFX.h"
#include "TargetInfo/NeoCoreFXTargetInfo.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/Compiler.h"

using namespace llvm;

extern "C" LLVM_ABI LLVM_EXTERNAL_VISIBILITY void
LLVMInitializeNeoCoreFXTarget() {
  RegisterTargetMachine<NeoCoreFXTargetMachine> X(getTheNeoCoreFXTarget());
  PassRegistry &PR = *PassRegistry::getPassRegistry();
  initializeNeoCoreFXDAGToDAGISelLegacyPass(PR);
}

static Reloc::Model getEffectiveRelocModel(std::optional<Reloc::Model> RM) {
  return RM.value_or(Reloc::Static);
}

// NeoCoreFX data layout:
//   E          = big-endian
//   m:e        = ELF mangling
//   p:32:32    = 32-bit pointers, 32-bit aligned
//   i32:32     = 32-bit ints, 32-bit aligned
//   n32        = native 32-bit
//   S32        = 32-bit stack alignment
static std::string computeDataLayoutString() {
  return "E-m:e-p:32:32-i32:32-n32-S32";
}

NeoCoreFXTargetMachine::NeoCoreFXTargetMachine(
    const Target &T, const Triple &TT, StringRef CPU, StringRef FS,
    const TargetOptions &Options, std::optional<Reloc::Model> RM,
    std::optional<CodeModel::Model> CM, CodeGenOptLevel OL, bool JIT)
    : CodeGenTargetMachineImpl(T, computeDataLayoutString(), TT,
                               CPU.empty() ? "generic" : CPU, FS, Options,
                               getEffectiveRelocModel(RM),
                               getEffectiveCodeModel(CM, CodeModel::Small), OL),
      Subtarget(TT, CPU.empty() ? "generic" : std::string(CPU), FS, *this),
      TLOF(std::make_unique<TargetLoweringObjectFileELF>()) {
  initAsmInfo();
}

namespace {
class NeoCoreFXPassConfig : public TargetPassConfig {
public:
  NeoCoreFXPassConfig(NeoCoreFXTargetMachine &TM, PassManagerBase *PM)
      : TargetPassConfig(TM, *PM) {}

  NeoCoreFXTargetMachine &getNeoCoreFXTargetMachine() const {
    return getTM<NeoCoreFXTargetMachine>();
  }

  bool addInstSelector() override;
};
} // namespace

bool NeoCoreFXPassConfig::addInstSelector() {
  addPass(createNeoCoreFXISelDag(getNeoCoreFXTargetMachine()));
  return false;
}

TargetPassConfig *
NeoCoreFXTargetMachine::createPassConfig(PassManagerBase &PM) {
  return new NeoCoreFXPassConfig(*this, &PM);
}
