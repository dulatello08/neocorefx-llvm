//===-- NeoCoreFXMCAsmInfo.cpp - NeoCoreFX Asm Properties -----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXMCAsmInfo.h"
#include "llvm/TargetParser/Triple.h"

using namespace llvm;

NeoCoreFXMCAsmInfo::NeoCoreFXMCAsmInfo(const Triple &TT) {
  // NeoCoreFX uses '#' for comments, ';' as statement separator
  CommentString = "#";
  SupportsDebugInformation = true;
  Data16bitsDirective = "\t.half\t";
  Data32bitsDirective = "\t.word\t";
  Data64bitsDirective = nullptr; // No 64-bit data type
  ZeroDirective = "\t.zero\t";
  UsesELFSectionDirectiveForBSS = true;

  // Code alignment (4-byte instructions)
  MinInstAlignment = 4;
}
