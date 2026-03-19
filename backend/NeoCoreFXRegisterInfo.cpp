//===-- NeoCoreFXRegisterInfo.cpp - NeoCoreFX Register Information ---------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFXRegisterInfo.h"
#include "NeoCoreFX.h"
#include "NeoCoreFXSubtarget.h"
#include "MCTargetDesc/NeoCoreFXMCTargetDesc.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/TargetInstrInfo.h"

using namespace llvm;

#define GET_REGINFO_TARGET_DESC
#include "NeoCoreFXGenRegisterInfo.inc"

NeoCoreFXRegisterInfo::NeoCoreFXRegisterInfo()
    : NeoCoreFXGenRegisterInfo(NeoCoreFX::R11 /* RA */) {}

const MCPhysReg *
NeoCoreFXRegisterInfo::getCalleeSavedRegs(const MachineFunction *MF) const {
  return CSR_NeoCoreFX_SaveList;
}

const uint32_t *
NeoCoreFXRegisterInfo::getCallPreservedMask(const MachineFunction &MF,
                                            CallingConv::ID CC) const {
  return CSR_NeoCoreFX_RegMask;
}

BitVector NeoCoreFXRegisterInfo::getReservedRegs(const MachineFunction &MF) const {
  BitVector Reserved(getNumRegs());

  // r0 is hardwired zero
  Reserved.set(NeoCoreFX::R0);
  // r1 is assembler temporary
  Reserved.set(NeoCoreFX::R1);
  // r11 is dedicated link register
  Reserved.set(NeoCoreFX::R11);
  // r15 is stack pointer
  Reserved.set(NeoCoreFX::R15);
  // r14 is frame pointer (when used)
  if (MF.getFrameInfo().hasCalls())
    Reserved.set(NeoCoreFX::R14);

  return Reserved;
}

bool NeoCoreFXRegisterInfo::eliminateFrameIndex(MachineBasicBlock::iterator MI,
                                                int SPAdj,
                                                unsigned FIOperandNum,
                                                RegScavenger *RS) const {
  MachineInstr &MIR = *MI;
  MachineFunction &MF = *MIR.getParent()->getParent();
  const MachineFrameInfo &MFI = MF.getFrameInfo();

  int FrameIndex = MIR.getOperand(FIOperandNum).getIndex();
  int Offset = MFI.getObjectOffset(FrameIndex) + SPAdj;
  Offset += MFI.getStackSize();

  // Replace frame index with SP + offset
  MIR.getOperand(FIOperandNum).ChangeToRegister(NeoCoreFX::R15,
                                                 /*isDef=*/false);
  // The immediate offset is the next operand
  MIR.getOperand(FIOperandNum + 1).ChangeToImmediate(Offset);

  return false;
}

Register NeoCoreFXRegisterInfo::getFrameRegister(const MachineFunction &MF) const {
  return NeoCoreFX::R15; // SP-based for now
}
