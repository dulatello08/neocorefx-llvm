#include <stddef.h>
#include <stdint.h>

#define NCX_HEAP_SIZE_BYTES 1024u
enum {
    NCX_UART_TXDATA_OFF  = 0x00u,
    NCX_UART_STATUS_OFF  = 0x08u,
    NCX_UART_CTRL_OFF    = 0x0Cu,
    NCX_UART_BAUDDIV_OFF = 0x10u,
    NCX_TIMER_COUNT_OFF  = 0x100u
};

enum {
    NCX_UART_STATUS_TX_READY   = (1u << 0),
    NCX_UART_STATUS_TX_OVERRUN = (1u << 2),
    NCX_UART_STATUS_RX_OVERRUN = (1u << 3),
    NCX_UART_CTRL_TX_EN        = (1u << 0),
    NCX_UART_CTRL_RX_EN        = (1u << 1)
};

static unsigned char g_heap[NCX_HEAP_SIZE_BYTES];
static unsigned int g_heap_off;
static int g_uart_inited;

static volatile uint32_t *ncx_mmio_ptr(unsigned int off)
{
    unsigned int base = 1u;
    base = base << 30; /* 0x40000000 without large immediates in DAG */
    return (volatile uint32_t *)(uintptr_t)(base + off);
}

static uint32_t ncx_mmio_read(unsigned int off)
{
    return *ncx_mmio_ptr(off);
}

static void ncx_mmio_write(unsigned int off, uint32_t value)
{
    *ncx_mmio_ptr(off) = value;
}

static void runtime_putc(char c)
{
    if (c == '\n') {
        ncx_mmio_write(NCX_UART_TXDATA_OFF, (uint32_t)'\r');
    }
    ncx_mmio_write(NCX_UART_TXDATA_OFF, (uint32_t)(uint8_t)c);
}

void runtime_init(void)
{
    if (g_uart_inited) {
        return;
    }

    /* Divider choice is platform-specific; 27 is a safe RTL default. */
    ncx_mmio_write(NCX_UART_CTRL_OFF, NCX_UART_CTRL_TX_EN | NCX_UART_CTRL_RX_EN);
    ncx_mmio_write(NCX_UART_BAUDDIV_OFF, 27u);
    ncx_mmio_write(NCX_UART_STATUS_OFF, NCX_UART_STATUS_TX_OVERRUN | NCX_UART_STATUS_RX_OVERRUN);
    g_uart_inited = 1;
}

static void runtime_print_u32(unsigned int value, unsigned int base, int uppercase)
{
    const char *digits;
    int started;
    int i;

    if (uppercase != 0) {
        digits = "0123456789ABCDEF";
    } else {
        digits = "0123456789abcdef";
    }

    if (base < 2u || base > 16u) {
        return;
    }

    if (value == 0u) {
        runtime_putc('0');
        return;
    }

    if (base == 16u) {
        runtime_putc('0');
        runtime_putc('x');
        started = 0;
        for (i = 28; i >= 0; i -= 4) {
            unsigned int nib = (value >> (unsigned int)i) & 0xFu;
            if (nib != 0u || started || i == 0) {
                runtime_putc(digits[nib]);
                started = 1;
            }
        }
        return;
    }

    /* Division-free fallback for decimal-like formats. */
    runtime_putc('0');
    runtime_putc('x');
    started = 0;
    for (i = 28; i >= 0; i -= 4) {
        unsigned int nib = (value >> (unsigned int)i) & 0xFu;
        if (nib != 0u || started || i == 0) {
            runtime_putc(digits[nib]);
            started = 1;
        }
    }
}

static void runtime_print_i32(int value)
{
    unsigned int mag;

    if (value < 0) {
        runtime_putc('-');
        mag = (unsigned int)(-(unsigned int)value);
    } else {
        mag = (unsigned int)value;
    }

    runtime_print_u32(mag, 10u, 0);
}

int printf(fmt, a1, a2, a3, a4, a5, a6, a7, a8)
const char *fmt;
int a1;
int a2;
int a3;
int a4;
int a5;
int a6;
int a7;
int a8;
{
    int count = 0;
    int argi = 0;
    int args[8];

    args[0] = a1;
    args[1] = a2;
    args[2] = a3;
    args[3] = a4;
    args[4] = a5;
    args[5] = a6;
    args[6] = a7;
    args[7] = a8;

    runtime_init();

    while (*fmt != '\0') {
        if (*fmt != '%') {
            runtime_putc(*fmt);
            fmt++;
            count++;
            continue;
        }

        fmt++;
        if (*fmt == '\0') {
            break;
        }

        if (*fmt == '%') {
            runtime_putc('%');
            fmt++;
            count++;
            continue;
        }

        if (*fmt == 'd' || *fmt == 'i') {
            int v = 0;
            if (argi < 8) {
                v = args[argi++];
            }
            runtime_print_i32(v);
            fmt++;
            continue;
        }

        if (*fmt == 'u') {
            unsigned int v = 0u;
            if (argi < 8) {
                v = (unsigned int)args[argi++];
            }
            runtime_print_u32(v, 10u, 0);
            fmt++;
            continue;
        }

        if (*fmt == 'x') {
            unsigned int v = 0u;
            if (argi < 8) {
                v = (unsigned int)args[argi++];
            }
            runtime_print_u32(v, 16u, 0);
            fmt++;
            continue;
        }

        if (*fmt == 'X') {
            unsigned int v = 0u;
            if (argi < 8) {
                v = (unsigned int)args[argi++];
            }
            runtime_print_u32(v, 16u, 1);
            fmt++;
            continue;
        }

        if (*fmt == 'c') {
            int v = 0;
            if (argi < 8) {
                v = args[argi++];
            }
            runtime_putc((char)v);
            fmt++;
            count++;
            continue;
        }

        if (*fmt == 's') {
            const char *s = NULL;
            if (argi < 8) {
                s = (const char *)(uintptr_t)(unsigned int)args[argi++];
            }
            if (s == NULL) {
                s = "(null)";
            }
            while (*s != '\0') {
                runtime_putc(*s++);
                count++;
            }
            fmt++;
            continue;
        }

        /* Unknown format: print literally to keep debug visibility. */
        runtime_putc('%');
        runtime_putc(*fmt);
        fmt++;
    }

    return count;
}

char *strcpy(char *dst, const char *src)
{
    char *out = dst;

    while ((*dst++ = *src++) != '\0') {
    }

    return out;
}

int strcmp(const char *a, const char *b)
{
    unsigned char ca;
    unsigned char cb;

    do {
        ca = (unsigned char)*a++;
        cb = (unsigned char)*b++;
        if (ca != cb) {
            return (int)ca - (int)cb;
        }
    } while (ca != '\0');

    return 0;
}

void *memset(void *dst, int c, unsigned int n)
{
    unsigned int i;
    unsigned char *d = (unsigned char *)dst;

    for (i = 0; i < n; ++i) {
        d[i] = (unsigned char)c;
    }

    return dst;
}

void *memcpy(void *dst, const void *src, unsigned int n)
{
    unsigned int i;
    unsigned char *d = (unsigned char *)dst;
    const unsigned char *s = (const unsigned char *)src;

    for (i = 0; i < n; ++i) {
        d[i] = s[i];
    }

    return dst;
}

void *memmove(void *dst, const void *src, unsigned int n)
{
    unsigned int i;
    unsigned char *d = (unsigned char *)dst;
    const unsigned char *s = (const unsigned char *)src;

    if (d == s || n == 0u) {
        return dst;
    }

    if (d < s) {
        for (i = 0; i < n; ++i) {
            d[i] = s[i];
        }
    } else {
        for (i = n; i != 0u; --i) {
            d[i - 1u] = s[i - 1u];
        }
    }

    return dst;
}

void *malloc(unsigned long size_raw)
{
    /*
     * Canonical Dhrystone declares malloc without a prototype.
     * With the current frontend datalayout that call arrives as a wide arg;
     * accept word-sized input and clamp to our 32-bit heap model.
     */
    unsigned int size = (unsigned int)size_raw;
    unsigned int aligned = (size + 3u) & ~3u;
    void *ptr;

    runtime_init();

    if (aligned == 0u) {
        return NULL;
    }

    if (g_heap_off + aligned > NCX_HEAP_SIZE_BYTES) {
        return NULL;
    }

    ptr = &g_heap[g_heap_off];
    g_heap_off += aligned;
    return ptr;
}

void free(void *ptr)
{
    (void)ptr;
}

long time(long *out)
{
    long t = (long)ncx_mmio_read(NCX_TIMER_COUNT_OFF);

    if (out != NULL) {
        *out = t;
    }
    return t;
}

static unsigned int udivmod_u32(unsigned int n, unsigned int d, unsigned int *rem)
{
    unsigned int q = 0u;
    unsigned int r = 0u;
    int i;

    if (d == 0u) {
        if (rem != NULL) {
            *rem = 0u;
        }
        return 0u;
    }

    for (i = 31; i >= 0; --i) {
        r = (r << 1) | ((n >> (unsigned int)i) & 1u);
        if (r >= d) {
            r -= d;
            q |= (1u << (unsigned int)i);
        }
    }

    if (rem != NULL) {
        *rem = r;
    }

    return q;
}

unsigned int __udivsi3(unsigned int a, unsigned int b)
{
    return udivmod_u32(a, b, NULL);
}

unsigned int __umodsi3(unsigned int a, unsigned int b)
{
    unsigned int r = 0u;
    (void)udivmod_u32(a, b, &r);
    return r;
}

int __divsi3(int a, int b)
{
    unsigned int ua;
    unsigned int ub;
    unsigned int q;
    int neg;

    if (b == 0) {
        return 0;
    }

    neg = ((a < 0) ^ (b < 0));
    ua = (a < 0) ? (unsigned int)(-(unsigned int)a) : (unsigned int)a;
    ub = (b < 0) ? (unsigned int)(-(unsigned int)b) : (unsigned int)b;
    q = udivmod_u32(ua, ub, NULL);

    if (neg) {
        return -(int)q;
    }
    return (int)q;
}

int __modsi3(int a, int b)
{
    unsigned int ua;
    unsigned int ub;
    unsigned int r;

    if (b == 0) {
        return 0;
    }

    ua = (a < 0) ? (unsigned int)(-(unsigned int)a) : (unsigned int)a;
    ub = (b < 0) ? (unsigned int)(-(unsigned int)b) : (unsigned int)b;
    (void)udivmod_u32(ua, ub, &r);

    if (a < 0) {
        return -(int)r;
    }
    return (int)r;
}
