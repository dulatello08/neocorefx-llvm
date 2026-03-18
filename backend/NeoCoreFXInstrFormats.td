//===- NeoCoreFXInstrFormats.td - NeoCoreFX Instruction Formats -*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// NeoCoreFX instruction format definitions.
//
// Encoding layout (all instructions are 32 bits):
//   inst[31:28] = CLASS (4 bits)
//   inst[27:24] = OP    (4 bits)
//   inst[23:20] = rd    (4 bits)
//   inst[19:16] = rs1   (4 bits)
//   inst[15:12] = rs2   (4 bits)  -- for R3/S16/B16 forms
//   inst[15:0]  = imm16           -- for I16/JR16 forms
//   inst[19:0]  = off20           -- for J20 form
//   inst[11:0]  = ext12           -- for R3 form (must be 0 in v0)
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Base instruction class
//===----------------------------------------------------------------------===//

class InstNeoCoreFX<dag outs, dag ins, string asmstr, list<dag> pattern>
    : Instruction {
  field bits<32> Inst;
  let Size = 4;

  let Namespace = "NeoCoreFX";
  let DecoderNamespace = "NeoCoreFX";

  bits<4> Class;
  bits<4> Op;
  let Inst{31-28} = Class;
  let Inst{27-24} = Op;

  dag OutOperandList = outs;
  dag InOperandList = ins;
  let AsmString = asmstr;
  let Pattern = pattern;
}

//===----------------------------------------------------------------------===//
// R3 Form: 3-register (class 0x0)
//   [31:28] class  [27:24] op  [23:20] rd  [19:16] rs1  [15:12] rs2  [11:0] ext12=0
//===----------------------------------------------------------------------===//

class InstR3<bits<4> op, dag outs, dag ins, string asmstr, list<dag> pattern>
    : InstNeoCoreFX<outs, ins, asmstr, pattern> {
  bits<4> rd;
  bits<4> rs1;
  bits<4> rs2;

  let Class = 0x0;
  let Op    = op;
  let Inst{23-20} = rd;
  let Inst{19-16} = rs1;
  let Inst{15-12} = rs2;
  let Inst{11-0}  = 0; // ext12 must be zero in v0
}

//===----------------------------------------------------------------------===//
// I16 Form: register + 16-bit immediate (class 0x1, 0x2)
//   [31:28] class  [27:24] op  [23:20] rd  [19:16] rs1  [15:0] imm16
//===----------------------------------------------------------------------===//

class InstI16<bits<4> cls, bits<4> op, dag outs, dag ins, string asmstr,
              list<dag> pattern>
    : InstNeoCoreFX<outs, ins, asmstr, pattern> {
  bits<4> rd;
  bits<4> rs1;
  bits<16> imm16;

  let Class = cls;
  let Op    = op;
  let Inst{23-20} = rd;
  let Inst{19-16} = rs1;
  let Inst{15-0}  = imm16;
}

//===----------------------------------------------------------------------===//
// S16-split Form: store (class 0x3)
//   [31:28] class  [27:24] op  [23:20] imm16[15:12]
//   [19:16] rs1    [15:12] rs2  [11:0] imm16[11:0]
//
//   Reconstruction: imm16 = {inst[23:20], inst[11:0]}
//   Effective address: rs1 + sext(imm16)
//===----------------------------------------------------------------------===//

class InstS16<bits<4> op, dag outs, dag ins, string asmstr, list<dag> pattern>
    : InstNeoCoreFX<outs, ins, asmstr, pattern> {
  bits<4> rs1;
  bits<4> rs2;
  bits<16> imm16;

  let Class = 0x3;
  let Op    = op;
  let Inst{23-20} = imm16{15-12};
  let Inst{19-16} = rs1;
  let Inst{15-12} = rs2;
  let Inst{11-0}  = imm16{11-0};
}

//===----------------------------------------------------------------------===//
// B16-split Form: branch (class 0x4)
//   [31:28] class  [27:24] op  [23:20] off16[15:12]
//   [19:16] rs1    [15:12] rs2  [11:0] off16[11:0]
//
//   Reconstruction: off16 = {inst[23:20], inst[11:0]}
//   Target: pc + (sext(off16) << 2)
//===----------------------------------------------------------------------===//

class InstB16<bits<4> op, dag outs, dag ins, string asmstr, list<dag> pattern>
    : InstNeoCoreFX<outs, ins, asmstr, pattern> {
  bits<4> rs1;
  bits<4> rs2;
  bits<16> off16;

  let Class = 0x4;
  let Op    = op;
  let Inst{23-20} = off16{15-12};
  let Inst{19-16} = rs1;
  let Inst{15-12} = rs2;
  let Inst{11-0}  = off16{11-0};

  let isBranch = 1;
  let isTerminator = 1;
}

//===----------------------------------------------------------------------===//
// J20 Form: relative jump/call/LPC (class 0x5, op 0x0 or 0x2)
//   [31:28] 0x5  [27:24] op  [23:20] rd  [19:0] off20
//===----------------------------------------------------------------------===//

class InstJ20<bits<4> op, dag outs, dag ins, string asmstr, list<dag> pattern>
    : InstNeoCoreFX<outs, ins, asmstr, pattern> {
  bits<4> rd;
  bits<20> off20;

  let Class = 0x5;
  let Op    = op;
  let Inst{23-20} = rd;
  let Inst{19-0}  = off20;
}

//===----------------------------------------------------------------------===//
// JR16 Form: register jump (class 0x5, op 0x1)
//   [31:28] 0x5  [27:24] 0x1  [23:20] rd  [19:16] rs1  [15:0] off16
//===----------------------------------------------------------------------===//

class InstJR16<dag outs, dag ins, string asmstr, list<dag> pattern>
    : InstNeoCoreFX<outs, ins, asmstr, pattern> {
  bits<4> rd;
  bits<4> rs1;
  bits<16> off16;

  let Class = 0x5;
  let Op    = 0x1;
  let Inst{23-20} = rd;
  let Inst{19-16} = rs1;
  let Inst{15-0}  = off16;
}

//===----------------------------------------------------------------------===//
// Pseudo instructions (not real hardware encodings)
//===----------------------------------------------------------------------===//

class Pseudo<dag outs, dag ins, string asmstr, list<dag> pattern>
    : InstNeoCoreFX<outs, ins, asmstr, pattern> {
  let isPseudo = 1;
  let isCodeGenOnly = 1;
}
