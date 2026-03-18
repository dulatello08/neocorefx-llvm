//===-- NeoCoreFXInstrInfo.cpp - NeoCoreFX Instruction Information ---------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXInstrInfo.h"
#include "NeoCoreFX.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineFrameInfo.h"

using namespace llvm;

#define GET_INSTRINFO_CTOR_DTOR
#include "NeoCoreFXGenInstrInfo.inc"

NeoCoreFXInstrInfo::NeoCoreFXInstrInfo()
    : NeoCoreFXGenInstrInfo(NeoCoreFX::ADJCALLSTACKDOWN,
                            NeoCoreFX::ADJCALLSTACKUP),
      RI() {}

void NeoCoreFXInstrInfo::copyPhysReg(MachineBasicBlock &MBB,
                                     MachineBasicBlock::iterator MI,
                                     const DebugLoc &DL, MCRegister DestReg,
                                     MCRegister SrcReg, bool KillSrc) const {
  // MOV rd, rs  →  ADDI rd, rs, 0
  BuildMI(MBB, MI, DL, get(NeoCoreFX::ADDI), DestReg)
      .addReg(SrcReg, getKillRegState(KillSrc))
      .addImm(0);
}

void NeoCoreFXInstrInfo::storeRegToStackSlot(
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, Register SrcReg,
    bool IsKill, int FrameIndex, const TargetRegisterClass *RC,
    const TargetRegisterInfo *TRI, Register VReg) const {
  DebugLoc DL;
  if (MI != MBB.end())
    DL = MI->getDebugLoc();

  BuildMI(MBB, MI, DL, get(NeoCoreFX::SW))
      .addReg(SrcReg, getKillRegState(IsKill))
      .addFrameIndex(FrameIndex)
      .addImm(0);
}

void NeoCoreFXInstrInfo::loadRegFromStackSlot(
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MI, Register DestReg,
    int FrameIndex, const TargetRegisterClass *RC,
    const TargetRegisterInfo *TRI, Register VReg) const {
  DebugLoc DL;
  if (MI != MBB.end())
    DL = MI->getDebugLoc();

  BuildMI(MBB, MI, DL, get(NeoCoreFX::LW), DestReg)
      .addFrameIndex(FrameIndex)
      .addImm(0);
}
