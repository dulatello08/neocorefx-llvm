# NeoCoreFX C ABI (v0, Far-Safe)

Status: active toolchain ABI for `nc-cc --target neocore-fx`

## Goals

- Keep NeoCore16x32 C support unchanged.
- Make NeoCoreFX C calls far-safe by allowing call lowering through the `call` pseudo.
- Reserve `AT` (`r1`) so pseudo-expansions never corrupt C-visible values.
- Default to position-independent code generation for symbol materialization and calls.

## Register Roles

- `r0`: hardwired zero, never allocatable.
- `r1`: `AT` (assembler temporary), reserved, caller-clobbered by pseudo-expansions.
- `r11`: dedicated link register (`lr`), reserved from allocation.
- `r15`: stack pointer (`sp`).
- `r14`: frame pointer (`fp`).

General register classes used by the compiler:

- Argument registers: `r2`, `r3`, `r4`, `r5`.
- Return register: `r2`.
- Caller-saved: `r2`, `r3`, `r4`, `r5`, `r6`, `r7`, `r12`, `r13`.
- Callee-saved: `r8`, `r9`, `r10`.
- Scratch (backend temporaries): `r12`, `r13`.

## Stack Convention

- Stack grows downward.
- Stack slot size: 4 bytes.
- Required alignment: 4 bytes.
- First stack argument offset from callee `fp`: 4 bytes.

## Call/Return Model

- PIC call lowering:
  - `lpc tmp, symbol`
  - `jalr r11, tmp, #0`
- Return: `jalr r0, r11, #0`.
- Prologue/epilogue preserve `r11` to keep nested calls correct.
- `AT` (`r1`) is considered volatile across calls and branch/jump pseudo-expansions.

## Data Model

- `int`: 32-bit.
- Pointer/address: 32-bit.
- Endianness: big-endian.

## Notes

- Global addressing lowers through `lpc` + load/store via register-indirect forms.
- This ABI intentionally differs from NeoCore16x32 argument/return register choices to preserve far-safe call behavior with reserved `AT`.
- Current code model is small-PIC (`lpc` range, signed off20 word-relative).
- Default linker profile is a single 64KB BRAM image (`config/neocore-fx.ld`).
- A split-memory future profile is available at `config/neocore-fx-split-future.ld`.
