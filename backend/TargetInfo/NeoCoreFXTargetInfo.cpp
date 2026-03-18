//===-- NeoCoreFXTargetInfo.cpp - NeoCoreFX Target Implementation ---------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "TargetInfo/NeoCoreFXTargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/Compiler.h"

using namespace llvm;

Target &llvm::getTheNeoCoreFXTarget() {
  static Target TheNeoCoreFXTarget;
  return TheNeoCoreFXTarget;
}

extern "C" LLVM_ABI LLVM_EXTERNAL_VISIBILITY void
LLVMInitializeNeoCoreFXTargetInfo() {
  RegisterTarget<Triple::neocorefx> X(getTheNeoCoreFXTarget(), "neocorefx",
                                      "NeoCoreFX", "NeoCoreFX");
}
