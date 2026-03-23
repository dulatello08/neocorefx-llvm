; Minimal repro for optimized bool-branch lowering on NeoCoreFX.
; Expected to lower `load i1` + branch without SelectionDAG isel crashes.

@g_uart_inited = internal global i1 false, align 4

define void @runtime_init() {
entry:
  %inited = load i1, ptr @g_uart_inited, align 4
  br i1 %inited, label %ret, label %init

init:
  store i1 true, ptr @g_uart_inited, align 4
  br label %ret

ret:
  ret void
}
