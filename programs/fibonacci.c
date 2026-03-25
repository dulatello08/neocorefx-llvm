/*
 * fibonacci.c — NeoCoreFX program
 *
 * Asks for the user's name via UART, greets them,
 * prints the recursively calculated Fibonacci sequence up to fib(10),
 * then returns (crt0 will halt).
 *
 * Build:  ../ncfx-clang -O2 fibonacci.c -o fibonacci.s
 */

#include <stdint.h>

/* ── UART MMIO ─────────────────────────────────────────────────── */

static volatile uint32_t *mmio(unsigned int off) {
  unsigned int base = 1u;
  base = base << 30; /* 0x40000000 */
  return (volatile uint32_t *)(uintptr_t)(base + off);
}

static void uart_init(void) {
  *mmio(0x0Cu) = (1u << 0) | (1u << 1); /* TX_EN | RX_EN */
  *mmio(0x10u) = 346u;                  /* baud divider  */
  *mmio(0x08u) = (1u << 2) | (1u << 3); /* clear overruns */
}

static void uart_putc(char c) {
  if (c == '\n')
    *mmio(0x00u) = (uint32_t)'\r';
  *mmio(0x00u) = (uint32_t)(uint8_t)c;
}

static char uart_getc(void) {
  while ((*mmio(0x08u) & (1u << 1)) == 0u) /* wait RX_VALID */
    ;
  return (char)(*mmio(0x04u) & 0xFFu);
}

static void uart_puts(const char *s) {
  while (*s != '\0')
    uart_putc(*s++);
}

/* ── helpers ───────────────────────────────────────────────────── */

static void print_int(int v) {
  char buf[12]; /* enough for a 32‑bit int + sign + NUL */
  int i = 0;
  int neg = 0;
  unsigned int u;

  if (v < 0) {
    neg = 1;
    u = (unsigned int)(-(unsigned int)v);
  } else {
    u = (unsigned int)v;
  }

  if (u == 0u) {
    buf[i++] = '0';
  } else {
    /* extract digits in reverse */
    while (u != 0u) {
      buf[i++] = (char)('0' + (u % 10u));
      u /= 10u;
    }
  }

  if (neg)
    uart_putc('-');

  /* print digits in correct order */
  while (i > 0)
    uart_putc(buf[--i]);
}

/* ── Fibonacci (recursive) ─────────────────────────────────────── */

static int fibonacci(int n) {
  if (n <= 0)
    return 0;
  if (n == 1)
    return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

/* ── main ──────────────────────────────────────────────────────── */

int main(void) {
  char name[64];
  int len = 0;
  int i;

  uart_init();

  uart_puts("What is your name? ");

  /* read name until newline / carriage return */
  for (;;) {
    char c = uart_getc();
    if (c == '\r' || c == '\n')
      break;
    if (len < (int)(sizeof(name) - 1)) {
      name[len++] = c;
      uart_putc(c);
    }
  }
  name[len] = '\0';

  uart_puts("\nHi ");
  uart_puts(name);
  uart_puts("! Here is the recursively calculated Fibonacci sequence:\n");

  for (i = 0; i <= 10; i++) {
    uart_puts("  fib(");
    print_int(i);
    uart_puts(") = ");
    print_int(fibonacci(i));
    uart_putc('\n');
  }

  return 0;
}
