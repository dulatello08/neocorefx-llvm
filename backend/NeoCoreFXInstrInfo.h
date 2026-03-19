//===-- NeoCoreFXInstrInfo.h - NeoCoreFX Instruction Info --------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFXINSTRINFO_H
#define LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFXINSTRINFO_H

#include "NeoCoreFXRegisterInfo.h"
#include "llvm/CodeGen/TargetInstrInfo.h"

#define GET_INSTRINFO_HEADER
#include "NeoCoreFXGenInstrInfo.inc"

namespace llvm {

class NeoCoreFXSubtarget;

class NeoCoreFXInstrInfo : public NeoCoreFXGenInstrInfo {
  const NeoCoreFXRegisterInfo RI;

public:
  NeoCoreFXInstrInfo(const NeoCoreFXSubtarget &STI);

  const NeoCoreFXRegisterInfo &getRegisterInfo() const { return RI; }

  void copyPhysReg(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI,
                   const DebugLoc &DL, Register DestReg,
                   Register SrcReg, bool KillSrc,
                   bool RenamableDest = false,
                   bool RenamableSrc = false) const override;

  void storeRegToStackSlot(
      MachineBasicBlock &MBB, MachineBasicBlock::iterator MI,
      Register SrcReg, bool IsKill, int FrameIndex,
      const TargetRegisterClass *RC, Register VReg,
      MachineInstr::MIFlag Flags = MachineInstr::NoFlags) const override;

  void loadRegFromStackSlot(
      MachineBasicBlock &MBB, MachineBasicBlock::iterator MI,
      Register DestReg, int FrameIndex,
      const TargetRegisterClass *RC, Register VReg,
      unsigned SubReg = 0,
      MachineInstr::MIFlag Flags = MachineInstr::NoFlags) const override;
};

} // namespace llvm

#endif
