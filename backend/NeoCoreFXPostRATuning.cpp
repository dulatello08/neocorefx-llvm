//===-- NeoCoreFXPostRATuning.cpp - Post-RA latency tuning ----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Local post-RA tuning pass for NeoCoreFX.
//
// NeoCoreFX has a one-cycle load-use penalty in the baseline pipeline model.
// This pass looks for:
//   load rX, ...
//   use  rX, ...
// and tries to pull one independent ALU instruction from shortly after the use
// into the gap between load and use.
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFX.h"
#include "MCTargetDesc/NeoCoreFXMCTargetDesc.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/TargetRegisterInfo.h"
#include "llvm/Pass.h"

using namespace llvm;

#define DEBUG_TYPE "neocorefx-postra-tuning"

namespace {

class NeoCoreFXPostRATuning final : public MachineFunctionPass {
  static constexpr unsigned MaxLookAhead = 6;

public:
  static char ID;
  NeoCoreFXPostRATuning() : MachineFunctionPass(ID) {}

  StringRef getPassName() const override {
    return "NeoCoreFX Post-RA Latency Tuning";
  }

  MachineFunctionProperties getRequiredProperties() const override {
    return MachineFunctionProperties().setNoVRegs();
  }

  bool runOnMachineFunction(MachineFunction &MF) override;

private:
  static bool isSchedulableInstr(const MachineInstr &MI);
  static bool isMovableALU(const MachineInstr &MI);
  static bool isNeoCoreFXLoad(const MachineInstr &MI, Register &LoadDef);
  static void collectUsesAndDefs(const MachineInstr &MI,
                                 SmallVectorImpl<Register> &Uses,
                                 SmallVectorImpl<Register> &Defs);
  static bool overlaps(const TargetRegisterInfo &TRI, Register A, Register B);

  bool canMoveBefore(const TargetRegisterInfo &TRI, const MachineInstr &Cand,
                     MachineBasicBlock::const_iterator Begin,
                     MachineBasicBlock::const_iterator End,
                     Register LoadDef) const;
};

} // namespace

char NeoCoreFXPostRATuning::ID = 0;

FunctionPass *llvm::createNeoCoreFXPostRATuningPass() {
  return new NeoCoreFXPostRATuning();
}

bool NeoCoreFXPostRATuning::isSchedulableInstr(const MachineInstr &MI) {
  if (MI.isDebugInstr() || MI.isCFIInstruction() || MI.isPosition())
    return false;
  if (MI.isLabel() || MI.isPseudoProbe() || MI.isMetaInstruction())
    return false;
  if (MI.isInlineAsm() || MI.isBundle())
    return false;
  if (MI.isBundledWithPred() || MI.isBundledWithSucc())
    return false;
  return true;
}

bool NeoCoreFXPostRATuning::isMovableALU(const MachineInstr &MI) {
  if (!isSchedulableInstr(MI))
    return false;
  if (MI.isPseudo())
    return false;
  if (MI.hasUnmodeledSideEffects() || MI.hasOrderedMemoryRef() || MI.isCall() ||
      MI.isTerminator() || MI.isBranch() || MI.isBarrier())
    return false;
  if (MI.mayLoad() || MI.mayStore())
    return false;
  if (MI.getFlag(MachineInstr::FrameSetup) ||
      MI.getFlag(MachineInstr::FrameDestroy))
    return false;
  return true;
}

bool NeoCoreFXPostRATuning::isNeoCoreFXLoad(const MachineInstr &MI,
                                            Register &LoadDef) {
  switch (MI.getOpcode()) {
  case NeoCoreFX::LB:
  case NeoCoreFX::LBU:
  case NeoCoreFX::LH:
  case NeoCoreFX::LHU:
  case NeoCoreFX::LW:
    break;
  default:
    return false;
  }

  Register DefReg;
  for (const MachineOperand &MO : MI.operands()) {
    if (!MO.isReg() || !MO.isDef() || MO.isImplicit())
      continue;
    Register Reg = MO.getReg();
    if (!Reg.isValid())
      continue;
    if (DefReg.isValid())
      return false;
    DefReg = Reg;
  }

  if (!DefReg.isValid())
    return false;

  LoadDef = DefReg;
  return true;
}

void NeoCoreFXPostRATuning::collectUsesAndDefs(const MachineInstr &MI,
                                               SmallVectorImpl<Register> &Uses,
                                               SmallVectorImpl<Register> &Defs) {
  for (const MachineOperand &MO : MI.operands()) {
    if (!MO.isReg())
      continue;
    Register Reg = MO.getReg();
    if (!Reg.isValid())
      continue;
    if (MO.isUse())
      Uses.push_back(Reg);
    if (MO.isDef())
      Defs.push_back(Reg);
  }
}

bool NeoCoreFXPostRATuning::overlaps(const TargetRegisterInfo &TRI, Register A,
                                     Register B) {
  if (!A.isValid() || !B.isValid())
    return false;
  if (A == B)
    return true;
  if (A.isPhysical() && B.isPhysical())
    return TRI.regsOverlap(A, B);
  return false;
}

bool NeoCoreFXPostRATuning::canMoveBefore(
    const TargetRegisterInfo &TRI, const MachineInstr &Cand,
    MachineBasicBlock::const_iterator Begin, MachineBasicBlock::const_iterator End,
    Register LoadDef) const {
  SmallVector<Register, 8> CandUses;
  SmallVector<Register, 8> CandDefs;
  collectUsesAndDefs(Cand, CandUses, CandDefs);

  for (Register U : CandUses)
    if (overlaps(TRI, U, LoadDef))
      return false;
  for (Register D : CandDefs)
    if (overlaps(TRI, D, LoadDef))
      return false;

  for (auto It = Begin; It != End; ++It) {
    const MachineInstr &MI = *It;
    if (!isSchedulableInstr(MI))
      continue;

    if (MI.isCall() || MI.isTerminator() || MI.isBranch() || MI.isBarrier() ||
        MI.hasUnmodeledSideEffects() || MI.hasOrderedMemoryRef() ||
        MI.mayLoad() || MI.mayStore())
      return false;

    for (Register U : CandUses)
      if (MI.modifiesRegister(U, &TRI))
        return false;

    for (Register D : CandDefs)
      if (MI.modifiesRegister(D, &TRI) || MI.readsRegister(D, &TRI))
        return false;
  }

  return true;
}

bool NeoCoreFXPostRATuning::runOnMachineFunction(MachineFunction &MF) {
  const TargetRegisterInfo &TRI = *MF.getSubtarget().getRegisterInfo();
  MachineRegisterInfo &MRI = MF.getRegInfo();
  bool Changed = false;

  for (MachineBasicBlock &MBB : MF) {
    for (MachineBasicBlock::iterator It = MBB.begin(); It != MBB.end(); ++It) {
      if (!isSchedulableInstr(*It))
        continue;

      Register LoadDef;
      if (!isNeoCoreFXLoad(*It, LoadDef))
        continue;

      auto UserIt = std::next(It);
      while (UserIt != MBB.end() && !isSchedulableInstr(*UserIt))
        ++UserIt;
      if (UserIt == MBB.end())
        break;

      if (!UserIt->readsRegister(LoadDef, &TRI))
        continue;

      MachineBasicBlock::iterator CandIt = MBB.end();
      auto ScanIt = std::next(UserIt);
      unsigned Scanned = 0;
      while (ScanIt != MBB.end() && Scanned < MaxLookAhead) {
        if (isSchedulableInstr(*ScanIt))
          ++Scanned;

        if (!isMovableALU(*ScanIt)) {
          ++ScanIt;
          continue;
        }

        if (canMoveBefore(TRI, *ScanIt, UserIt, ScanIt, LoadDef)) {
          CandIt = ScanIt;
          break;
        }

        ++ScanIt;
      }

      if (CandIt == MBB.end())
        continue;

      CandIt->moveBefore(&*UserIt);
      for (const MachineOperand &MO : CandIt->operands()) {
        if (MO.isReg() && MO.getReg().isValid() && MO.isUse())
          MRI.clearKillFlags(MO.getReg());
      }
      for (const MachineOperand &MO : UserIt->operands()) {
        if (MO.isReg() && MO.getReg().isValid() && MO.isUse())
          MRI.clearKillFlags(MO.getReg());
      }
      Changed = true;
    }
  }

  if (Changed)
    MRI.invalidateLiveness();

  return Changed;
}

