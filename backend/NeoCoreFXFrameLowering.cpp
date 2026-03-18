//===-- NeoCoreFXFrameLowering.cpp - NeoCoreFX Frame Lowering --------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXFrameLowering.h"
#include "NeoCoreFXInstrInfo.h"
#include "NeoCoreFXSubtarget.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"

using namespace llvm;

NeoCoreFXFrameLowering::NeoCoreFXFrameLowering()
    : TargetFrameLowering(StackGrowsDown,
                          /*StackAlignment=*/Align(4),
                          /*LocalAreaOffset=*/0) {}

void NeoCoreFXFrameLowering::emitPrologue(MachineFunction &MF,
                                          MachineBasicBlock &MBB) const {
  MachineFrameInfo &MFI = MF.getFrameInfo();
  const NeoCoreFXInstrInfo &TII =
      *static_cast<const NeoCoreFXInstrInfo *>(MF.getSubtarget().getInstrInfo());
  MachineBasicBlock::iterator MBBI = MBB.begin();
  DebugLoc DL;

  uint64_t StackSize = MFI.getStackSize();
  if (StackSize == 0)
    return;

  // SP = SP - StackSize  →  ADDI r15, r15, -StackSize
  if (isInt<16>(-static_cast<int64_t>(StackSize))) {
    BuildMI(MBB, MBBI, DL, TII.get(NeoCoreFX::ADDI), NeoCoreFX::R15)
        .addReg(NeoCoreFX::R15)
        .addImm(-static_cast<int64_t>(StackSize))
        .setMIFlag(MachineInstr::FrameSetup);
  } else {
    report_fatal_error("Stack frame too large for NeoCoreFX");
  }
}

void NeoCoreFXFrameLowering::emitEpilogue(MachineFunction &MF,
                                          MachineBasicBlock &MBB) const {
  MachineFrameInfo &MFI = MF.getFrameInfo();
  const NeoCoreFXInstrInfo &TII =
      *static_cast<const NeoCoreFXInstrInfo *>(MF.getSubtarget().getInstrInfo());
  MachineBasicBlock::iterator MBBI = MBB.getLastNonDebugInstr();
  DebugLoc DL;
  if (MBBI != MBB.end())
    DL = MBBI->getDebugLoc();

  uint64_t StackSize = MFI.getStackSize();
  if (StackSize == 0)
    return;

  // SP = SP + StackSize  →  ADDI r15, r15, StackSize
  if (isInt<16>(StackSize)) {
    BuildMI(MBB, MBBI, DL, TII.get(NeoCoreFX::ADDI), NeoCoreFX::R15)
        .addReg(NeoCoreFX::R15)
        .addImm(StackSize)
        .setMIFlag(MachineInstr::FrameDestroy);
  } else {
    report_fatal_error("Stack frame too large for NeoCoreFX");
  }
}

bool NeoCoreFXFrameLowering::hasFP(const MachineFunction &MF) const {
  return MF.getFrameInfo().hasVarSizedObjects();
}

MachineBasicBlock::iterator NeoCoreFXFrameLowering::eliminateCallFramePseudoInstr(
    MachineFunction &MF, MachineBasicBlock &MBB,
    MachineBasicBlock::iterator MI) const {
  return MBB.erase(MI);
}
