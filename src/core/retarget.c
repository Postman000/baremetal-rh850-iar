#include <core.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#ifndef __IAR_SYSTEMS_ICC__
#include <sys/stat.h>
#include <sys/errno.h>
#else
/* IAR-specific definitions */
#include <errno.h>

/* Minimal stat structure for IAR */
struct stat {
    unsigned int st_mode;
};

#define S_IFCHR 0020000
/* IAR errno values */
#ifndef ESPIPE
#define ESPIPE 29
#endif
#ifndef ENOTTY
#define ENOTTY 25
#endif
#ifndef EINVAL
#define EINVAL 22
#endif
#endif

#include <spinlock.h>
#include <uart.h>
#include <cpu.h>
#include <fences.h>
#include <wfi.h>

int _read(int file, char *ptr, int len)
{
    (void)file;
    int i;
    for (i = 0; i < len; ++i)
    {
        ptr[i] = uart_getchar();
    }

    return len;
}

int _write(int file, char *ptr, int len)
{
    (void)file;
    int i;
    for (i = 0; i < len; ++i)
    {
        if (ptr[i] == '\n')
        {
            uart_putc('\r');
        }
        uart_putc(ptr[i]);
    }

    return len;
}

int _lseek(int file, int ptr, int dir)
{
    (void)file;
    (void)ptr;
    (void)dir;
    errno = ESPIPE;
    return -1;
}

int _close(int file)
{
    (void)file;
    return -1;
}

#ifndef __IAR_SYSTEMS_ICC__
int _fstat(int file, struct stat *st)
{
    (void)file;
    st->st_mode = S_IFCHR;
    return 0;
}

int _isatty(int fd)
{
    (void)fd;
    errno = ENOTTY;
    return 0;
}
#endif

void* _sbrk(int increment)
{
    extern char _heap_base;
    static char* heap_end = &_heap_base;
    char* current_heap_end = heap_end;
    heap_end += increment;
    return current_heap_end;
}

void _exit(int return_value)
{
    (void)return_value;
    fence_ord();
    while (1) {
        wfi();
    }
}

int _getpid(void)
{
  return 1;
}

#ifndef __IAR_SYSTEMS_ICC__
int _kill(int pid, int sig)
{
    (void)pid;
    (void)sig;
    errno = EINVAL;
    return -1;
}
#endif

extern void arch_init();
extern int main();

static bool init_done = false;
static spinlock_t init_lock = SPINLOCK_INITVAL;

#ifdef __IAR_SYSTEMS_ICC__
/* IAR uses __weak instead of __attribute__((weak)) */
__weak void _init()
#else
__attribute__((weak))
void _init()
#endif
{
    spin_lock(&init_lock);
    if(!init_done) {
        init_done = true;
        uart_init();
    }
    spin_unlock(&init_lock);
    
    arch_init();

    int ret = main();
    _exit(ret);
}