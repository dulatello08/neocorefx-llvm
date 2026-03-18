//===- NeoCoreFXRegisterInfo.td - NeoCoreFX Register defs --*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//  Declarations that describe the NeoCoreFX register file
//===----------------------------------------------------------------------===//

// Registers are identified with 4-bit ID numbers (0..15).
class NeoCoreFXReg<bits<4> num, string n, list<string> altNames = []>
    : Register<n, altNames> {
  field bits<4> Num;
  let Num = num;
  let Namespace = "NeoCoreFX";
}

// Integer registers r0..r15
def R0  : NeoCoreFXReg< 0,  "r0", ["zero"]>, DwarfRegNum<[0]>;
def R1  : NeoCoreFXReg< 1,  "r1", ["at"]>,   DwarfRegNum<[1]>;
def R2  : NeoCoreFXReg< 2,  "r2">,            DwarfRegNum<[2]>;
def R3  : NeoCoreFXReg< 3,  "r3">,            DwarfRegNum<[3]>;
def R4  : NeoCoreFXReg< 4,  "r4">,            DwarfRegNum<[4]>;
def R5  : NeoCoreFXReg< 5,  "r5">,            DwarfRegNum<[5]>;
def R6  : NeoCoreFXReg< 6,  "r6">,            DwarfRegNum<[6]>;
def R7  : NeoCoreFXReg< 7,  "r7">,            DwarfRegNum<[7]>;
def R8  : NeoCoreFXReg< 8,  "r8">,            DwarfRegNum<[8]>;
def R9  : NeoCoreFXReg< 9,  "r9">,            DwarfRegNum<[9]>;
def R10 : NeoCoreFXReg<10, "r10">,             DwarfRegNum<[10]>;
def R11 : NeoCoreFXReg<11, "r11", ["lr"]>,     DwarfRegNum<[11]>;
def R12 : NeoCoreFXReg<12, "r12", ["gp"]>,     DwarfRegNum<[12]>;
def R13 : NeoCoreFXReg<13, "r13">,             DwarfRegNum<[13]>;
def R14 : NeoCoreFXReg<14, "r14", ["fp"]>,     DwarfRegNum<[14]>;
def R15 : NeoCoreFXReg<15, "r15", ["sp"]>,     DwarfRegNum<[15]>;

// General Purpose Register class.
// Allocation order: argument/return regs first, then caller-saved temporaries,
// then callee-saved, then special registers last.
def GPR : RegisterClass<"NeoCoreFX", [i32], 32,
    (add
      // Argument / return registers (caller-saved)
      R2, R3, R4, R5,
      // Caller-saved temporaries
      R6, R7, R12, R13,
      // Callee-saved
      R8, R9, R10,
      // Link register (dedicated)
      R11,
      // Frame pointer
      R14,
      // Stack pointer
      R15,
      // Assembler temporary (reserved)
      R1,
      // Zero register (reserved)
      R0
    )>;
