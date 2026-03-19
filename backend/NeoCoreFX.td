//===- NeoCoreFX.td - NeoCoreFX Target Description --------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Top-level TableGen file for the NeoCoreFX target.
//
//===----------------------------------------------------------------------===//

include "llvm/Target/Target.td"

//===----------------------------------------------------------------------===//
// Register File, Scheduling, Calling Conv, Instruction Descriptions
//===----------------------------------------------------------------------===//

include "NeoCoreFXSchedule.td"
include "NeoCoreFXRegisterInfo.td"
include "NeoCoreFXCallingConv.td"
include "NeoCoreFXInstrInfo.td"

def NeoCoreFXInstrInfo : InstrInfo;
defm : RemapAllTargetPseudoPointerOperands<GPR>;

//===----------------------------------------------------------------------===//
// NeoCoreFX processors supported.
//===----------------------------------------------------------------------===//

def : ProcessorModel<"generic", NeoCoreFXSchedModel, []>;

def NeoCoreFXInstPrinter : AsmWriter {
  string AsmWriterClassName = "InstPrinter";
  bit isMCAsmWriter = 1;
}

//===----------------------------------------------------------------------===//
// Declare the target which we are implementing
//===----------------------------------------------------------------------===//

def NeoCoreFX : Target {
  let InstructionSet = NeoCoreFXInstrInfo;
  let AssemblyWriters = [NeoCoreFXInstPrinter];
}
