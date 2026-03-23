//===- NeoCoreFXInstrInfo.td - NeoCoreFX Instruction defs --*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// NeoCoreFX instruction definitions.
//
//===----------------------------------------------------------------------===//

include "NeoCoreFXInstrFormats.td"

//===----------------------------------------------------------------------===//
// Operand types
//===----------------------------------------------------------------------===//

def simm16 : Operand<i32>, ImmLeaf<i32, [{
  return isInt<16>(Imm);
}]> {
  let DecoderMethod = "decodeSImm16";
}

def uimm16 : Operand<i32>, ImmLeaf<i32, [{
  return isUInt<16>(Imm);
}]> {
  let DecoderMethod = "decodeUImm16";
}

def shamt5 : Operand<i32>, ImmLeaf<i32, [{
  return isUInt<5>(Imm);
}]> {
  let DecoderMethod = "decodeShamt5";
}

// Memory operand for load/store: base register + signed 16-bit offset
def MemRI : Operand<i32> {
  let PrintMethod = "printMemOperand";
  let MIOperandInfo = (ops GPR:$base, simm16:$offset);
}

// PC-relative branch target (16-bit word offset → ±128 KiB)
def brtarget16 : Operand<OtherVT> {
  let EncoderMethod = "encodeBrTarget16";
  let DecoderMethod = "decodeBrTarget16";
}

// PC-relative jump target (20-bit word offset → ±2 MiB)
def brtarget20 : Operand<OtherVT> {
  let EncoderMethod = "encodeBrTarget20";
  let DecoderMethod = "decodeBrTarget20";
}

// Symbol address operand used by assembly-only pseudos.
def symaddr : Operand<i32>;

//===----------------------------------------------------------------------===//
// SDNode definitions for custom nodes
//===----------------------------------------------------------------------===//

def SDT_SPCall : SDTypeProfile<0, -1, [SDTCisVT<0, i32>]>;
def SDT_NeoCoreFXCallSeqStart : SDCallSeqStart<[SDTCisVT<0, i32>, SDTCisVT<1, i32>]>;
def SDT_NeoCoreFXCallSeqEnd   : SDCallSeqEnd<[SDTCisVT<0, i32>, SDTCisVT<1, i32>]>;
def SDT_NeoCoreFXLA : SDTypeProfile<1, 1, [SDTCisVT<0, i32>, SDTCisVT<1, i32>]>;

def NeoCoreFXRet     : SDNode<"NeoCoreFXISD::RET", SDTNone,
                               [SDNPHasChain, SDNPOptInGlue, SDNPVariadic]>;
def NeoCoreFXCall    : SDNode<"NeoCoreFXISD::CALL", SDT_SPCall,
                               [SDNPHasChain, SDNPOutGlue, SDNPOptInGlue,
                                SDNPVariadic]>;
def NeoCoreFXLA      : SDNode<"NeoCoreFXISD::LA", SDT_NeoCoreFXLA>;
def CallSeqStart     : SDNode<"ISD::CALLSEQ_START", SDT_NeoCoreFXCallSeqStart,
                              [SDNPHasChain, SDNPOutGlue]>;
def CallSeqEnd       : SDNode<"ISD::CALLSEQ_END", SDT_NeoCoreFXCallSeqEnd,
                              [SDNPHasChain, SDNPOptInGlue, SDNPOutGlue]>;

//===----------------------------------------------------------------------===//
// 4.1 Integer ALU (Register) — Class 0x0
//===----------------------------------------------------------------------===//

let hasSideEffects = 0, mayLoad = 0, mayStore = 0, Itinerary = IIC_ALU in {

// NOP is the all-zeros word (class=0, op=0, everything=0)
let isBarrier = 0, isCodeGenOnly = 0 in
def NOP : InstNeoCoreFX<(outs), (ins), "nop", []> {
  let Inst = 0x00000000;
}

def ADD  : InstR3<0x1, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "add\t$rd, $rs1, $rs2",
                  [(set GPR:$rd, (add GPR:$rs1, GPR:$rs2))]>;

def SUB  : InstR3<0x2, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "sub\t$rd, $rs1, $rs2",
                  [(set GPR:$rd, (sub GPR:$rs1, GPR:$rs2))]>;

def AND  : InstR3<0x3, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "and\t$rd, $rs1, $rs2",
                  [(set GPR:$rd, (and GPR:$rs1, GPR:$rs2))]>;

def OR   : InstR3<0x4, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "or\t$rd, $rs1, $rs2",
                  [(set GPR:$rd, (or GPR:$rs1, GPR:$rs2))]>;

def XOR  : InstR3<0x5, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "xor\t$rd, $rs1, $rs2",
                  [(set GPR:$rd, (xor GPR:$rs1, GPR:$rs2))]>;

def SLT  : InstR3<0x6, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "slt\t$rd, $rs1, $rs2", []>;

def SLTU : InstR3<0x7, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "sltu\t$rd, $rs1, $rs2", []>;

//===----------------------------------------------------------------------===//
// 4.3 Shift (Register) — Class 0x0 (ops 0x8..0xA)
//===----------------------------------------------------------------------===//

def SLL  : InstR3<0x8, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "sll\t$rd, $rs1, $rs2",
                  [(set GPR:$rd, (shl GPR:$rs1, GPR:$rs2))]>;

def SRL  : InstR3<0x9, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "srl\t$rd, $rs1, $rs2",
                  [(set GPR:$rd, (srl GPR:$rs1, GPR:$rs2))]>;

def SRA  : InstR3<0xA, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                  "sra\t$rd, $rs1, $rs2",
                  [(set GPR:$rd, (sra GPR:$rs1, GPR:$rs2))]>;

//===----------------------------------------------------------------------===//
// 4.4 Multiply — Class 0x0 (ops 0xB..0xE)
//===----------------------------------------------------------------------===//

let Itinerary = IIC_MUL in {
def MUL    : InstR3<0xB, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                    "mul\t$rd, $rs1, $rs2",
                    [(set GPR:$rd, (mul GPR:$rs1, GPR:$rs2))]>;

def MULH   : InstR3<0xC, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                    "mulh\t$rd, $rs1, $rs2",
                    [(set GPR:$rd, (mulhs GPR:$rs1, GPR:$rs2))]>;

def MULHU  : InstR3<0xD, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                    "mulhu\t$rd, $rs1, $rs2",
                    [(set GPR:$rd, (mulhu GPR:$rs1, GPR:$rs2))]>;

def MULHSU : InstR3<0xE, (outs GPR:$rd), (ins GPR:$rs1, GPR:$rs2),
                    "mulhsu\t$rd, $rs1, $rs2", []>;
}

} // hasSideEffects = 0, mayLoad = 0, mayStore = 0

//===----------------------------------------------------------------------===//
// 4.2 Integer ALU (Immediate) — Class 0x1
//===----------------------------------------------------------------------===//

let hasSideEffects = 0, mayLoad = 0, mayStore = 0, Itinerary = IIC_ALU in {

def ADDI : InstI16<0x1, 0x0, (outs GPR:$rd), (ins GPR:$rs1, simm16:$imm16),
                   "addi\t$rd, $rs1, $imm16",
                   [(set GPR:$rd, (add GPR:$rs1, simm16:$imm16))]>;

def ANDI : InstI16<0x1, 0x1, (outs GPR:$rd), (ins GPR:$rs1, uimm16:$imm16),
                   "andi\t$rd, $rs1, $imm16",
                   [(set GPR:$rd, (and GPR:$rs1, uimm16:$imm16))]>;

def ORI  : InstI16<0x1, 0x2, (outs GPR:$rd), (ins GPR:$rs1, uimm16:$imm16),
                   "ori\t$rd, $rs1, $imm16",
                   [(set GPR:$rd, (or GPR:$rs1, uimm16:$imm16))]>;

def XORI : InstI16<0x1, 0x3, (outs GPR:$rd), (ins GPR:$rs1, uimm16:$imm16),
                   "xori\t$rd, $rs1, $imm16",
                   [(set GPR:$rd, (xor GPR:$rs1, uimm16:$imm16))]>;

// LUI: rd = imm16 << 16.  rs1 must be r0.
def LUI  : InstI16<0x1, 0x4, (outs GPR:$rd), (ins uimm16:$imm16),
                   "lui\t$rd, $imm16", []> {
  let rs1 = 0;
}

// Shift immediate — imm16[15:5] must be zero, shamt = imm16[4:0]
def SLLI : InstI16<0x1, 0x5, (outs GPR:$rd), (ins GPR:$rs1, shamt5:$imm16),
                   "slli\t$rd, $rs1, $imm16",
                   [(set GPR:$rd, (shl GPR:$rs1, shamt5:$imm16))]>;

def SRLI : InstI16<0x1, 0x6, (outs GPR:$rd), (ins GPR:$rs1, shamt5:$imm16),
                   "srli\t$rd, $rs1, $imm16",
                   [(set GPR:$rd, (srl GPR:$rs1, shamt5:$imm16))]>;

def SRAI : InstI16<0x1, 0x7, (outs GPR:$rd), (ins GPR:$rs1, shamt5:$imm16),
                   "srai\t$rd, $rs1, $imm16",
                   [(set GPR:$rd, (sra GPR:$rs1, shamt5:$imm16))]>;

} // hasSideEffects = 0, mayLoad = 0, mayStore = 0

// Materialized setcc (i32 0/1) using compare instructions.
def : Pat<(i32 (setlt  GPR:$rs1, GPR:$rs2)), (SLT  GPR:$rs1, GPR:$rs2)>;
def : Pat<(i32 (setult GPR:$rs1, GPR:$rs2)), (SLTU GPR:$rs1, GPR:$rs2)>;
def : Pat<(i32 (setgt  GPR:$rs1, GPR:$rs2)), (SLT  GPR:$rs2, GPR:$rs1)>;
def : Pat<(i32 (setugt GPR:$rs1, GPR:$rs2)), (SLTU GPR:$rs2, GPR:$rs1)>;
def : Pat<(i32 (setge  GPR:$rs1, GPR:$rs2)), (XORI (SLT  GPR:$rs1, GPR:$rs2), 1)>;
def : Pat<(i32 (setuge GPR:$rs1, GPR:$rs2)), (XORI (SLTU GPR:$rs1, GPR:$rs2), 1)>;
def : Pat<(i32 (setle  GPR:$rs1, GPR:$rs2)), (XORI (SLT  GPR:$rs2, GPR:$rs1), 1)>;
def : Pat<(i32 (setule GPR:$rs1, GPR:$rs2)), (XORI (SLTU GPR:$rs2, GPR:$rs1), 1)>;

// setne(x,y) == sltu(zero, xor(x,y))
def : Pat<(i32 (setne GPR:$rs1, GPR:$rs2)),
          (SLTU R0, (XOR GPR:$rs1, GPR:$rs2))>;
// seteq(x,y) == setne(x,y) ^ 1
def : Pat<(i32 (seteq GPR:$rs1, GPR:$rs2)),
          (XORI (SLTU R0, (XOR GPR:$rs1, GPR:$rs2)), 1)>;

// Zero-compare forms.
def : Pat<(i32 (setne GPR:$rs1, 0)), (SLTU R0, GPR:$rs1)>;
def : Pat<(i32 (seteq GPR:$rs1, 0)), (XORI (SLTU R0, GPR:$rs1), 1)>;

// Patterns for constants
def : Pat<(i32 simm16:$imm), (ADDI R0, simm16:$imm)>;

//===----------------------------------------------------------------------===//
// 4.5 Load — Class 0x2
//===----------------------------------------------------------------------===//

let mayLoad = 1, mayStore = 0, hasSideEffects = 0, Itinerary = IIC_LD in {

def LB  : InstI16<0x2, 0x0, (outs GPR:$rd), (ins GPR:$rs1, simm16:$imm16),
                  "lb\t$rd, [$rs1 + $imm16]",
                  [(set GPR:$rd, (sextloadi8 (add GPR:$rs1, simm16:$imm16)))]>;

def LBU : InstI16<0x2, 0x1, (outs GPR:$rd), (ins GPR:$rs1, simm16:$imm16),
                  "lbu\t$rd, [$rs1 + $imm16]",
                  [(set GPR:$rd, (zextloadi8 (add GPR:$rs1, simm16:$imm16)))]>;

def LH  : InstI16<0x2, 0x2, (outs GPR:$rd), (ins GPR:$rs1, simm16:$imm16),
                  "lh\t$rd, [$rs1 + $imm16]",
                  [(set GPR:$rd, (sextloadi16 (add GPR:$rs1, simm16:$imm16)))]>;

def LHU : InstI16<0x2, 0x3, (outs GPR:$rd), (ins GPR:$rs1, simm16:$imm16),
                  "lhu\t$rd, [$rs1 + $imm16]",
                  [(set GPR:$rd, (zextloadi16 (add GPR:$rs1, simm16:$imm16)))]>;

def LW  : InstI16<0x2, 0x4, (outs GPR:$rd), (ins GPR:$rs1, simm16:$imm16),
                  "lw\t$rd, [$rs1 + $imm16]",
                  [(set GPR:$rd, (load (add GPR:$rs1, simm16:$imm16)))]>;

} // mayLoad = 1

// Zero-offset load patterns for pre-materialized addresses (e.g. LA pseudo).
def : Pat<(zextloadi1 (add GPR:$rs1, simm16:$imm16)),
          (LBU GPR:$rs1, simm16:$imm16)>;
def : Pat<(sextloadi8 GPR:$rs1), (LB GPR:$rs1, 0)>;
def : Pat<(zextloadi8 GPR:$rs1), (LBU GPR:$rs1, 0)>;
def : Pat<(zextloadi1 GPR:$rs1), (LBU GPR:$rs1, 0)>;
def : Pat<(extloadi8 GPR:$rs1), (LBU GPR:$rs1, 0)>;
def : Pat<(sextloadi16 GPR:$rs1), (LH GPR:$rs1, 0)>;
def : Pat<(zextloadi16 GPR:$rs1), (LHU GPR:$rs1, 0)>;
def : Pat<(extloadi16 GPR:$rs1), (LHU GPR:$rs1, 0)>;
def : Pat<(load GPR:$rs1), (LW GPR:$rs1, 0)>;

//===----------------------------------------------------------------------===//
// 4.6 Store — Class 0x3 (S16-split form)
//===----------------------------------------------------------------------===//

let mayLoad = 0, mayStore = 1, hasSideEffects = 0, Itinerary = IIC_ST in {

def SB : InstS16<0x0, (outs), (ins GPR:$rs2, GPR:$rs1, simm16:$imm16),
                 "sb\t$rs2, [$rs1 + $imm16]",
                 [(truncstorei8 GPR:$rs2, (add GPR:$rs1, simm16:$imm16))]>;

def SH : InstS16<0x1, (outs), (ins GPR:$rs2, GPR:$rs1, simm16:$imm16),
                 "sh\t$rs2, [$rs1 + $imm16]",
                 [(truncstorei16 GPR:$rs2, (add GPR:$rs1, simm16:$imm16))]>;

def SW : InstS16<0x2, (outs), (ins GPR:$rs2, GPR:$rs1, simm16:$imm16),
                 "sw\t$rs2, [$rs1 + $imm16]",
                 [(store GPR:$rs2, (add GPR:$rs1, simm16:$imm16))]>;

} // mayStore = 1

// Zero-offset store patterns for pre-materialized addresses (e.g. LA pseudo).
def : Pat<(truncstorei8 GPR:$rs2, GPR:$rs1), (SB GPR:$rs2, GPR:$rs1, 0)>;
def : Pat<(truncstorei16 GPR:$rs2, GPR:$rs1), (SH GPR:$rs2, GPR:$rs1, 0)>;
def : Pat<(store GPR:$rs2, GPR:$rs1), (SW GPR:$rs2, GPR:$rs1, 0)>;

//===----------------------------------------------------------------------===//
// 4.7 Branch — Class 0x4 (B16-split form)
//===----------------------------------------------------------------------===//

let isBarrier = 1, isBranch = 1, isTerminator = 1, Itinerary = IIC_ALU in
def B   : InstB16<0x0, (outs), (ins brtarget16:$off16),
                  "b\t$off16",
                  [(br bb:$off16)]> {
  let rs1 = 0;
  let rs2 = 0;
}

let isBranch = 1, isTerminator = 1, Itinerary = IIC_ALU in {

def BE  : InstB16<0x1, (outs), (ins GPR:$rs1, GPR:$rs2, brtarget16:$off16),
                  "be\t$rs1, $rs2, $off16",
                  [(brcond (i32 (seteq GPR:$rs1, GPR:$rs2)), bb:$off16)]>;

def BNE : InstB16<0x2, (outs), (ins GPR:$rs1, GPR:$rs2, brtarget16:$off16),
                  "bne\t$rs1, $rs2, $off16",
                  [(brcond (i32 (setne GPR:$rs1, GPR:$rs2)), bb:$off16)]>;

def BLT : InstB16<0x3, (outs), (ins GPR:$rs1, GPR:$rs2, brtarget16:$off16),
                  "blt\t$rs1, $rs2, $off16",
                  [(brcond (i32 (setlt GPR:$rs1, GPR:$rs2)), bb:$off16)]>;

def BLTU : InstB16<0x4, (outs), (ins GPR:$rs1, GPR:$rs2, brtarget16:$off16),
                   "bltu\t$rs1, $rs2, $off16",
                   [(brcond (i32 (setult GPR:$rs1, GPR:$rs2)), bb:$off16)]>;

} // isBranch, isTerminator

// Canonicalize greater-than branch conditions through existing BLT/BLTU.
def : Pat<(brcond (i32 (setgt GPR:$rs1, GPR:$rs2)), bb:$off16),
          (BLT GPR:$rs2, GPR:$rs1, bb:$off16)>;
def : Pat<(brcond (i32 (setugt GPR:$rs1, GPR:$rs2)), bb:$off16),
          (BLTU GPR:$rs2, GPR:$rs1, bb:$off16)>;
def : Pat<(brcond (i32 (setge GPR:$rs1, GPR:$rs2)), bb:$off16),
          (BE (SLT GPR:$rs1, GPR:$rs2), R0, bb:$off16)>;
def : Pat<(brcond (i32 (setuge GPR:$rs1, GPR:$rs2)), bb:$off16),
          (BE (SLTU GPR:$rs1, GPR:$rs2), R0, bb:$off16)>;
def : Pat<(brcond (i32 (setle GPR:$rs1, GPR:$rs2)), bb:$off16),
          (BE (SLT GPR:$rs2, GPR:$rs1), R0, bb:$off16)>;
def : Pat<(brcond (i32 (setule GPR:$rs1, GPR:$rs2)), bb:$off16),
          (BE (SLTU GPR:$rs2, GPR:$rs1), R0, bb:$off16)>;

// Generic boolean branch: any non-zero i32 condition is true.
// This covers optimized forms like `brcond (zextload i1 ...)`.
def : Pat<(brcond GPR:$rs1, bb:$off16),
          (BNE GPR:$rs1, R0, bb:$off16)>;

//===----------------------------------------------------------------------===//
// 4.7 Jump/Call — Class 0x5
//===----------------------------------------------------------------------===//

let isCall = 1, Itinerary = IIC_ALU in
def JAL : InstJ20<0x0, (outs GPR:$rd), (ins brtarget20:$off20),
                  "jal\t$rd, $off20", []> {
  let Defs = [R11];
}

let isCall = 1, Itinerary = IIC_ALU in
def JALR : InstJR16<(outs GPR:$rd), (ins GPR:$rs1, simm16:$off16),
                    "jalr\t$rd, $rs1, $off16", []> {
  let isIndirectBranch = 1;
}

let hasSideEffects = 0, mayLoad = 0, mayStore = 0, Itinerary = IIC_ALU in
def LPC : InstJ20<0x2, (outs GPR:$rd), (ins brtarget20:$off20),
                  "lpc\t$rd, $off20", []>;

// RET pseudo: JALR r0, r11, 0
let isReturn = 1, isTerminator = 1, isBarrier = 1, Uses = [R11] in
def RET : Pseudo<(outs), (ins), "ret", [(NeoCoreFXRet)]>;

//===----------------------------------------------------------------------===//
// Pseudo-instructions for code generation
//===----------------------------------------------------------------------===//

// Materialize a symbol address for assembly-only output.
def LA : Pseudo<(outs GPR:$rd), (ins symaddr:$off20),
                "la\t$rd, $off20",
                [(set GPR:$rd, (NeoCoreFXLA tglobaladdr:$off20))]>;
def : Pat<(NeoCoreFXLA texternalsym:$off20), (LA texternalsym:$off20)>;

// Direct call pseudo for assembly-only output.
let isCall = 1, Defs = [R11] in
def CALL : Pseudo<(outs), (ins symaddr:$off20),
                  "call\t$off20",
                  [(NeoCoreFXCall tglobaladdr:$off20)]>;
def : Pat<(NeoCoreFXCall texternalsym:$off20), (CALL texternalsym:$off20)>;

// Materialize a 32-bit immediate
let hasSideEffects = 0, mayLoad = 0, mayStore = 0,
    isReMaterializable = 1, isAsCheapAsAMove = 0 in
def LI32 : Pseudo<(outs GPR:$rd), (ins i32imm:$imm),
                  "li\t$rd, $imm", []>;

// ADJCALLSTACKDOWN / ADJCALLSTACKUP — frame setup / destroy
let Defs = [R15], Uses = [R15], hasSideEffects = 1 in {
def ADJCALLSTACKDOWN : Pseudo<(outs), (ins i32imm:$amt, i32imm:$amt2),
                              "# ADJCALLSTACKDOWN $amt",
                              [(CallSeqStart timm:$amt, timm:$amt2)]>;
def ADJCALLSTACKUP   : Pseudo<(outs), (ins i32imm:$amt, i32imm:$amt2),
                              "# ADJCALLSTACKUP $amt",
                              [(CallSeqEnd timm:$amt, timm:$amt2)]>;
}
