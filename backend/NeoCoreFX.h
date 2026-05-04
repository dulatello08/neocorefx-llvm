//===-- NeoCoreFX.h - Top-level interface for NeoCoreFX ---------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFX_H
#define LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFX_H

#include "llvm/Pass.h"

namespace llvm {
class FunctionPass;
class NeoCoreFXTargetMachine;
class PassRegistry;

FunctionPass *createNeoCoreFXISelDag(NeoCoreFXTargetMachine &TM);
FunctionPass *createNeoCoreFXPostRATuningPass();

void initializeNeoCoreFXDAGToDAGISelLegacyPass(PassRegistry &);

} // namespace llvm

#endif
