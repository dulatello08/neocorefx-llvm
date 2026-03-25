#include <stdint.h>

/* uart regs */
enum {
  UART_TXDATA_OFF = 0x00u,
  UART_RXDATA_OFF = 0x04u,
  UART_STATUS_OFF = 0x08u,
  UART_CTRL_OFF = 0x0Cu,
  UART_BAUDDIV_OFF = 0x10u
};

enum {
  UART_STATUS_TX_READY = (1u << 0),
  UART_STATUS_RX_VALID = (1u << 1),
  UART_STATUS_TX_OVERRUN = (1u << 2),
  UART_STATUS_RX_OVERRUN = (1u << 3),
  UART_CTRL_TX_EN = (1u << 0),
  UART_CTRL_RX_EN = (1u << 1)
};

static volatile uint32_t *mmio(unsigned int off) {
  unsigned int base = 1u;
  base <<= 30; /* 0x40000000 */
  return (volatile uint32_t *)(uintptr_t)(base + off);
}

static void uart_init(void) {
  *mmio(UART_CTRL_OFF) = UART_CTRL_TX_EN | UART_CTRL_RX_EN;
  *mmio(UART_BAUDDIV_OFF) = 346u;
  *mmio(UART_STATUS_OFF) = UART_STATUS_TX_OVERRUN | UART_STATUS_RX_OVERRUN;
}

static void uart_putc(char c) {
  if (c == '\n') {
    while ((*mmio(UART_STATUS_OFF) & UART_STATUS_TX_READY) == 0u)
      ;
    *mmio(UART_TXDATA_OFF) = (uint32_t)'\r';
  }
  while ((*mmio(UART_STATUS_OFF) & UART_STATUS_TX_READY) == 0u)
    ;
  *mmio(UART_TXDATA_OFF) = (uint32_t)(uint8_t)c;
}

static void uart_puts(const char *s) {
  while (*s != '\0')
    uart_putc(*s++);
}

static char uart_getc(void) {
  while ((*mmio(UART_STATUS_OFF) & UART_STATUS_RX_VALID) == 0u)
    ;
  return (char)(*mmio(UART_RXDATA_OFF) & 0xFFu);
}

/* tiny print helpers */
static void print_hex8(uint32_t v) {
  const char *d = "0123456789ABCDEF";
  uart_putc(d[(v >> 4) & 0xFu]);
  uart_putc(d[v & 0xFu]);
}

static void print_hex16(uint32_t v) {
  print_hex8((v >> 8) & 0xFFu);
  print_hex8(v & 0xFFu);
}

static void print_hex32(uint32_t v) {
  print_hex16((v >> 16) & 0xFFFFu);
  print_hex16(v & 0xFFFFu);
}

static int is_space(char c) {
  return c == ' ' || c == '\t';
}

static int is_hex(char c) {
  return (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F');
}

static uint32_t hex_val(char c) {
  if (c >= '0' && c <= '9')
    return (uint32_t)(c - '0');
  if (c >= 'a' && c <= 'f')
    return (uint32_t)(10 + (c - 'a'));
  return (uint32_t)(10 + (c - 'A'));
}

static char to_upper(char c) {
  if (c >= 'a' && c <= 'z')
    return (char)(c - ('a' - 'A'));
  return c;
}

static void skip_spaces(char **pp) {
  while (is_space(**pp))
    (*pp)++;
}

/* parse one hex number */
static int parse_hex(char **pp, uint32_t *out) {
  uint32_t v = 0u;
  int digits = 0;
  char *p = *pp;

  skip_spaces(&p);

  if (p[0] == '0' && (p[1] == 'x' || p[1] == 'X'))
    p += 2;

  while (is_hex(*p)) {
    v = (v << 4) | hex_val(*p);
    p++;
    digits++;
  }

  if (digits == 0)
    return 0;

  *out = v;
  *pp = p;
  return 1;
}

static void print_prompt(void) {
  uart_puts("\n\n\\ ");
}

static void print_help(void) {
  uart_puts("\ncommands (hex args):\n");
  uart_puts("  ? / H               help\n");
  uart_puts("  D addr [len]        dump memory\n");
  uart_puts("  W addr b0 b1 ...    write bytes\n");
  uart_puts("  F addr len byte     fill bytes\n");
  uart_puts("  M src dst len       move bytes\n");
  uart_puts("  C a b len           compare bytes\n");
  uart_puts("  G addr              jump to addr\n");
  uart_puts("\nwoz style:\n");
  uart_puts("  AAAA                dump from AAAA\n");
  uart_puts("  AAAA.BBBB           dump range\n");
  uart_puts("  AAAA: 01 02 03      write bytes\n");
}

/* quick dump view */
static void dump_range(uint32_t addr, uint32_t end_addr) {
  uint32_t cur = addr;

  while (cur <= end_addr) {
    uint32_t i;

    print_hex32(cur);
    uart_puts(": ");

    for (i = 0u; i < 16u; i++) {
      uint32_t a = cur + i;
      if (a <= end_addr) {
        uint8_t b = *(volatile uint8_t *)(uintptr_t)a;
        print_hex8((uint32_t)b);
      } else {
        uart_puts("  ");
      }
      uart_putc(' ');
    }

    uart_putc(' ');
    for (i = 0u; i < 16u; i++) {
      uint32_t a = cur + i;
      if (a <= end_addr) {
        uint8_t b = *(volatile uint8_t *)(uintptr_t)a;
        if (b >= 32u && b <= 126u)
          uart_putc((char)b);
        else
          uart_putc('.');
      }
    }

    if (end_addr - cur < 16u)
      break;

    cur += 16u;
    uart_putc('\n');
  }
}

static int handle_woz(char *line) {
  char *p = line;
  uint32_t a;

  skip_spaces(&p);
  if (!is_hex(*p))
    return 0;

  if (!parse_hex(&p, &a))
    return 0;

  skip_spaces(&p);

  if (*p == ':') {
    p++;
    for (;;) {
      uint32_t v;
      skip_spaces(&p);
      if (*p == '\0')
        break;
      if (!parse_hex(&p, &v)) {
        uart_puts("\n?");
        return 1;
      }
      *(volatile uint8_t *)(uintptr_t)a = (uint8_t)(v & 0xFFu);
      a++;
    }
    uart_puts("\nok");
    return 1;
  }

  if (*p == '.') {
    uint32_t b;
    p++;
    if (!parse_hex(&p, &b)) {
      uart_puts("\n?");
      return 1;
    }
    if (b < a) {
      uint32_t t = a;
      a = b;
      b = t;
    }
    uart_putc('\n');
    dump_range(a, b);
    return 1;
  }

  if (*p == '\0') {
    uint32_t end = a + 127u;
    uart_putc('\n');
    dump_range(a, end);
    return 1;
  }

  return 0;
}

/* line editor, just enough */
static int read_line(char *buf, int max_len) {
  int n = 0;

  for (;;) {
    char c = uart_getc();

    if (c == '\r' || c == '\n') {
      uart_putc('\n');
      break;
    }

    if (c == 0x08 || c == 0x7F) {
      if (n > 0) {
        n--;
        uart_putc('\b');
        uart_putc(' ');
        uart_putc('\b');
      }
      continue;
    }

    if (c >= 32 && c <= 126) {
      if (n < max_len - 1) {
        buf[n++] = c;
        uart_putc(c);
      }
    }
  }

  buf[n] = '\0';
  return n;
}

static void cmd_dump(char *p) {
  uint32_t addr;
  uint32_t len = 128u;

  if (!parse_hex(&p, &addr)) {
    uart_puts("\nusage: D addr [len]");
    return;
  }

  skip_spaces(&p);
  if (*p != '\0') {
    if (!parse_hex(&p, &len)) {
      uart_puts("\nusage: D addr [len]");
      return;
    }
  }

  if (len == 0u)
    return;

  uart_putc('\n');
  dump_range(addr, addr + (len - 1u));
}

static void cmd_write(char *p) {
  uint32_t addr;
  int wrote = 0;

  if (!parse_hex(&p, &addr)) {
    uart_puts("\nusage: W addr b0 b1 ...");
    return;
  }

  for (;;) {
    uint32_t v;

    skip_spaces(&p);
    if (*p == '\0')
      break;

    if (!parse_hex(&p, &v)) {
      uart_puts("\n?");
      return;
    }

    *(volatile uint8_t *)(uintptr_t)addr = (uint8_t)(v & 0xFFu);
    addr++;
    wrote++;
  }

  if (wrote == 0)
    uart_puts("\nusage: W addr b0 b1 ...");
  else
    uart_puts("\nok");
}

static void cmd_fill(char *p) {
  uint32_t addr;
  uint32_t len;
  uint32_t val;

  if (!parse_hex(&p, &addr) || !parse_hex(&p, &len) || !parse_hex(&p, &val)) {
    uart_puts("\nusage: F addr len byte");
    return;
  }

  while (len > 0u) {
    *(volatile uint8_t *)(uintptr_t)addr = (uint8_t)(val & 0xFFu);
    addr++;
    len--;
  }

  uart_puts("\nok");
}

static void cmd_move(char *p) {
  uint32_t src;
  uint32_t dst;
  uint32_t len;

  if (!parse_hex(&p, &src) || !parse_hex(&p, &dst) || !parse_hex(&p, &len)) {
    uart_puts("\nusage: M src dst len");
    return;
  }

  if (len == 0u) {
    uart_puts("\nok");
    return;
  }

  if (dst < src || dst >= (src + len)) {
    while (len > 0u) {
      uint8_t b = *(volatile uint8_t *)(uintptr_t)src;
      *(volatile uint8_t *)(uintptr_t)dst = b;
      src++;
      dst++;
      len--;
    }
  } else {
    src += len;
    dst += len;
    while (len > 0u) {
      uint8_t b;
      src--;
      dst--;
      b = *(volatile uint8_t *)(uintptr_t)src;
      *(volatile uint8_t *)(uintptr_t)dst = b;
      len--;
    }
  }

  uart_puts("\nok");
}

static void cmd_compare(char *p) {
  uint32_t a;
  uint32_t b;
  uint32_t len;

  if (!parse_hex(&p, &a) || !parse_hex(&p, &b) || !parse_hex(&p, &len)) {
    uart_puts("\nusage: C a b len");
    return;
  }

  while (len > 0u) {
    uint8_t va = *(volatile uint8_t *)(uintptr_t)a;
    uint8_t vb = *(volatile uint8_t *)(uintptr_t)b;

    if (va != vb) {
      uart_puts("\nmismatch @");
      print_hex32(a);
      uart_puts("  ");
      print_hex8((uint32_t)va);
      uart_puts(" != ");
      print_hex8((uint32_t)vb);
      return;
    }

    a++;
    b++;
    len--;
  }

  uart_puts("\nmatch");
}

static void cmd_go(char *p) {
  uint32_t addr;

  if (!parse_hex(&p, &addr)) {
    uart_puts("\nusage: G addr");
    return;
  }

  uart_puts("\nwould jump to ");
  print_hex32(addr);
  uart_puts("\nindirect jump not supported by this backend");
}

static void run_command(char *line) {
  char *p = line;
  char cmd;

  skip_spaces(&p);
  if (*p == '\0')
    return;

  if (handle_woz(line))
    return;

  cmd = to_upper(*p++);
  skip_spaces(&p);

  if (cmd == '?' || cmd == 'H') {
    print_help();
    return;
  }
  if (cmd == 'D') {
    cmd_dump(p);
    return;
  }
  if (cmd == 'W') {
    cmd_write(p);
    return;
  }
  if (cmd == 'F') {
    cmd_fill(p);
    return;
  }
  if (cmd == 'M') {
    cmd_move(p);
    return;
  }
  if (cmd == 'C') {
    cmd_compare(p);
    return;
  }
  if (cmd == 'G') {
    cmd_go(p);
    return;
  }

  uart_puts("\n?");
}

int main(void) {
  char line[160];

  uart_init();

  uart_puts("\nneo monitor\n");
  uart_puts("type ? for help\n");

  for (;;) {
    print_prompt();
    read_line(line, (int)sizeof(line));
    run_command(line);
  }
}
