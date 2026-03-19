//===-- NeoCoreFXISelDAGToDAG.cpp - NeoCoreFX DAG->DAG Instruction Selector --===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "NeoCoreFX.h"
#include "NeoCoreFXTargetMachine.h"
#include "MCTargetDesc/NeoCoreFXMCTargetDesc.h"
#include "llvm/CodeGen/SelectionDAGISel.h"

using namespace llvm;

namespace {
class NeoCoreFXDAGToDAGISel : public SelectionDAGISel {
public:
  NeoCoreFXDAGToDAGISel() = delete;

  explicit NeoCoreFXDAGToDAGISel(NeoCoreFXTargetMachine &TM)
      : SelectionDAGISel(TM) {}

  void Select(SDNode *N) override;

  bool SelectAddrRI(SDValue Addr, SDValue &Base, SDValue &Offset);

  // Include auto-generated selector
  #include "NeoCoreFXGenDAGISel.inc"

  StringRef getPassName() const {
    return "NeoCoreFX DAG->DAG Pattern Instruction Selection";
  }
};

class NeoCoreFXDAGToDAGISelLegacy : public SelectionDAGISelLegacy {
public:
  static char ID;
  explicit NeoCoreFXDAGToDAGISelLegacy(NeoCoreFXTargetMachine &TM)
      : SelectionDAGISelLegacy(ID, std::make_unique<NeoCoreFXDAGToDAGISel>(TM)) {
  }
};
} // namespace

char NeoCoreFXDAGToDAGISelLegacy::ID = 0;

INITIALIZE_PASS(NeoCoreFXDAGToDAGISelLegacy, "neocorefx-isel",
                "NeoCoreFX DAG->DAG Pattern Instruction Selection", false,
                false)

void NeoCoreFXDAGToDAGISel::Select(SDNode *N) {
  if (N->isMachineOpcode()) {
    N->setNodeId(-1);
    return;
  }

  if (N->getOpcode() == ISD::FrameIndex) {
    SDLoc DL(N);
    int FI = cast<FrameIndexSDNode>(N)->getIndex();
    SDValue TFI = CurDAG->getTargetFrameIndex(FI, MVT::i32);
    SDNode *Res = CurDAG->getMachineNode(
        NeoCoreFX::ADDI, DL, MVT::i32, TFI,
        CurDAG->getTargetConstant(0, DL, MVT::i32));
    ReplaceNode(N, Res);
    return;
  }

  // Try auto-generated patterns first
  SelectCode(N);
}

bool NeoCoreFXDAGToDAGISel::SelectAddrRI(SDValue Addr, SDValue &Base,
                                         SDValue &Offset) {
  if (auto *FIN = dyn_cast<FrameIndexSDNode>(Addr)) {
    Base = CurDAG->getTargetFrameIndex(FIN->getIndex(), MVT::i32);
    Offset = CurDAG->getTargetConstant(0, SDLoc(Addr), MVT::i32);
    return true;
  }

  if (Addr.getOpcode() == ISD::ADD) {
    if (auto *CN = dyn_cast<ConstantSDNode>(Addr.getOperand(1))) {
      if (isInt<16>(CN->getSExtValue())) {
        if (auto *FIN = dyn_cast<FrameIndexSDNode>(Addr.getOperand(0))) {
          Base = CurDAG->getTargetFrameIndex(FIN->getIndex(), MVT::i32);
        } else {
          Base = Addr.getOperand(0);
        }
        Offset = CurDAG->getTargetConstant(CN->getSExtValue(), SDLoc(Addr),
                                            MVT::i32);
        return true;
      }
    }
  }

  Base = Addr;
  Offset = CurDAG->getTargetConstant(0, SDLoc(Addr), MVT::i32);
  return true;
}

FunctionPass *llvm::createNeoCoreFXISelDag(NeoCoreFXTargetMachine &TM) {
  return new NeoCoreFXDAGToDAGISelLegacy(TM);
}
