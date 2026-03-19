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
  // Emit assembly in the syntax expected by nc-as.
  CommentString = ";";
  IsLittleEndian = false;
  GlobalDirective = "\t.global\t";
  PrivateLabelPrefix = "L_";
  LinkerPrivateGlobalPrefix = "L_";

  // Keep emitted directives to the small subset the assembler supports.
  HasDotTypeDotSizeDirective = false;
  HasIdentDirective = false;
  SupportsDebugInformation = false;
  HasSingleParameterDotFile = false;
  ExceptionsType = ExceptionHandling::DwarfCFI;

  // .align uses byte alignment in nc-as.
  AlignmentIsInBytes = true;

  // nc-as parser treats byte data as "db". By leaving 16/32-bit directives null,
  // MCAsmStreamer falls back to emitting byte directives.
  Data8bitsDirective = "\tdb\t";
  Data16bitsDirective = nullptr;
  Data32bitsDirective = nullptr;
  Data64bitsDirective = nullptr;
  ZeroDirective = "\t.space\t";
  AscizDirective = nullptr;
  AsciiDirective = nullptr;
  UsesELFSectionDirectiveForBSS = true;

  // Instructions are 4-byte aligned.
  MinInstAlignment = 4;
}
