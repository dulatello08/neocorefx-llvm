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

namespace {

class NeoCoreFXTargetLoweringObjectFile : public TargetLoweringObjectFileELF {
  static SectionKind coerceSectionKind(SectionKind Kind) {
    if (Kind.isReadOnly())
      return SectionKind::getData();
    return Kind;
  }

public:
  MCSection *SelectSectionForGlobal(const GlobalObject *GO, SectionKind Kind,
                                    const TargetMachine &TM) const override {
    return TargetLoweringObjectFileELF::SelectSectionForGlobal(
        GO, coerceSectionKind(Kind), TM);
  }

  MCSection *getSectionForConstant(const DataLayout &DL, SectionKind Kind,
                                   const Constant *C, Align &Alignment,
                                   const Function *F) const override {
    return TargetLoweringObjectFileELF::getSectionForConstant(
        DL, coerceSectionKind(Kind), C, Alignment, F);
  }

  MCSection *getSectionForConstant(const DataLayout &DL, SectionKind Kind,
                                   const Constant *C, Align &Alignment,
                                   const Function *F,
                                   StringRef SectionSuffix) const override {
    return TargetLoweringObjectFileELF::getSectionForConstant(
        DL, coerceSectionKind(Kind), C, Alignment, F, SectionSuffix);
  }
};

} // namespace

NeoCoreFXTargetMachine::NeoCoreFXTargetMachine(
    const Target &T, const Triple &TT, StringRef CPU, StringRef FS,
    const TargetOptions &Options, std::optional<Reloc::Model> RM,
    std::optional<CodeModel::Model> CM, CodeGenOptLevel OL, bool JIT)
    : CodeGenTargetMachineImpl(T, computeDataLayoutString(), TT,
                               CPU.empty() ? "generic" : CPU, FS, Options,
                               getEffectiveRelocModel(RM),
                               getEffectiveCodeModel(CM, CodeModel::Small), OL),
      Subtarget(TT, CPU.empty() ? "generic" : std::string(CPU), FS, *this),
      TLOF(std::make_unique<NeoCoreFXTargetLoweringObjectFile>()) {
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
  void addPreEmitPass() override;
};
} // namespace

bool NeoCoreFXPassConfig::addInstSelector() {
  addPass(createNeoCoreFXISelDag(getNeoCoreFXTargetMachine()));
  return false;
}

void NeoCoreFXPassConfig::addPreEmitPass() {
  TargetPassConfig::addPreEmitPass();
  if (getOptLevel() != CodeGenOptLevel::None)
    addPass(createNeoCoreFXPostRATuningPass());
}

TargetPassConfig *
NeoCoreFXTargetMachine::createPassConfig(PassManagerBase &PM) {
  return new NeoCoreFXPassConfig(*this, &PM);
}
