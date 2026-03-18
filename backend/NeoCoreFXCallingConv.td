//===- NeoCoreFXCallingConv.td - Calling Conventions ------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Calling conventions for NeoCoreFX.
//
// ABI summary (from c-abi.md):
//   r0       : hardwired zero
//   r1       : assembler temporary (AT), caller-clobbered
//   r2..r5   : argument / return registers (caller-saved)
//   r6, r7   : caller-saved temporaries
//   r8..r10  : callee-saved
//   r11      : link register (lr), dedicated
//   r12, r13 : scratch / caller-saved
//   r14      : frame pointer (fp)
//   r15      : stack pointer (sp)
//
//   Return value in r2.
//   Stack grows downward, 4-byte aligned slots.
//
//===----------------------------------------------------------------------===//

// NeoCoreFX C Calling Convention
def CC_NeoCoreFX : CallingConv<[
  // Promote i8/i16 arguments to i32
  CCIfType<[i8, i16], CCPromoteToType<i32>>,

  // Pass first 4 arguments in registers r2..r5
  CCIfType<[i32], CCAssignToReg<[R2, R3, R4, R5]>>,

  // Remaining arguments go on stack, 4-byte slots, 4-byte aligned
  CCAssignToStack<4, 4>
]>;

// Return value convention
def RetCC_NeoCoreFX : CallingConv<[
  CCIfType<[i32], CCAssignToReg<[R2]>>
]>;

// Callee-saved registers
def CSR_NeoCoreFX : CalleeSavedRegs<(add R8, R9, R10, R14)>;
