//===-- NeoCoreFXFrameLowering.h - NeoCoreFX Frame Lowering ------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFXFRAMELOWERING_H
#define LLVM_LIB_TARGET_NEOCOREFX_NEOCOREFXFRAMELOWERING_H

#include "llvm/CodeGen/TargetFrameLowering.h"

namespace llvm {

class NeoCoreFXFrameLowering : public TargetFrameLowering {
public:
  NeoCoreFXFrameLowering();

  void emitPrologue(MachineFunction &MF,
                    MachineBasicBlock &MBB) const override;
  void emitEpilogue(MachineFunction &MF,
                    MachineBasicBlock &MBB) const override;

  bool hasFPImpl(const MachineFunction &MF) const override;

  MachineBasicBlock::iterator
  eliminateCallFramePseudoInstr(MachineFunction &MF, MachineBasicBlock &MBB,
                                MachineBasicBlock::iterator MI) const override;
};

} // namespace llvm

#endif
