//===-- NeoCoreFXTargetInfo.h - NeoCoreFX Target Impl -----------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_NEOCOREFX_TARGETINFO_NEOCOREFXTARGETINFO_H
#define LLVM_LIB_TARGET_NEOCOREFX_TARGETINFO_NEOCOREFXTARGETINFO_H

namespace llvm {
class Target;
Target &getTheNeoCoreFXTarget();
} // namespace llvm

#endif
