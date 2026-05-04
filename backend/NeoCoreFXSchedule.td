//===- NeoCoreFXSchedule.td - Scheduling Definitions ------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

def ALU_FU  : FuncUnit;
def LDST_FU : FuncUnit;

def IIC_ALU  : InstrItinClass;
def IIC_LD   : InstrItinClass;
def IIC_ST   : InstrItinClass;
def IIC_MUL  : InstrItinClass;

def NeoCoreFXItinerary : ProcessorItineraries<[ALU_FU, LDST_FU], [], [
  InstrItinData<IIC_LD,  [InstrStage<1, [LDST_FU]>]>,
  InstrItinData<IIC_ST,  [InstrStage<1, [LDST_FU]>]>,
  InstrItinData<IIC_ALU, [InstrStage<1, [ALU_FU]>]>,
  InstrItinData<IIC_MUL, [InstrStage<1, [ALU_FU]>]>
]>;

def NeoCoreFXSchedModel : SchedMachineModel {
  let LoadLatency = 2;
  let LoopMicroOpBufferSize = 0;
  let CompleteModel = 0;
  let IssueWidth = 1;
  let MispredictPenalty = 4;  // ~4 cycles for branch mispredict in 6-stage pipe
  let PostRAScheduler = 1;
  let MicroOpBufferSize = 0;
  let Itineraries = NeoCoreFXItinerary;
}

def ALU  : ProcResource<1> { let BufferSize = 0; }
def LdSt : ProcResource<1> { let BufferSize = 0; }

def WriteALU : SchedWrite;
def WriteMUL : SchedWrite;
def WriteLD  : SchedWrite;
def WriteST  : SchedWrite;

let SchedModel = NeoCoreFXSchedModel in {
  def : WriteRes<WriteALU, [ALU]>  { let Latency = 1; }
  def : WriteRes<WriteMUL, [ALU]>  { let Latency = 1; }
  def : WriteRes<WriteLD, [LdSt]>  { let Latency = 2; }
  def : WriteRes<WriteST, [LdSt]>  { let Latency = 1; }
}
