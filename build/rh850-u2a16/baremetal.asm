
/home/ymm/rh850/tasks/task1_1/bao-demos/wrkdir/srcs/baremetal/build/rh850-u2a16/baremetal.elf:     file format elf32-v850-rh850


Disassembly of section .start:

007f0000 <_start>:
  7f0000:	e0 07 60 01 	di	
  7f0004:	e0 2f 40 10 	stsr	<invalid s-reg number>, r5, 2

007f0008 <stall>:
  7f0008:	03 a2       	mov	3, r20
  7f000a:	e5 a1       	cmp	r5, r20
  7f000c:	e2 fd       	be	7f0008 <stall>
  7f000e:	02 a2       	mov	2, r20
  7f0010:	e5 a1       	cmp	r5, r20
  7f0012:	b2 fd       	be	7f0008 <stall>
  7f0014:	22 06 20 80 	mov	0x3f08020, r2
  7f0018:	f0 03 
  7f001a:	e2 2f 20 00 	ldsr	r2, psw/vmtid, 0
  7f001e:	40 16 7f 00 	movhi	127, r0, r2
  7f0022:	22 16 00 16 	movea	5632, r2, r2
  7f0026:	82 16 02 00 	ori	2, r2, r2
  7f002a:	e2 1f 20 08 	ldsr	r2, <invalid s-reg number>, 1
  7f002e:	00 10       	mov	r0, r2
  7f0030:	e2 07 20 28 	ldsr	r2, <invalid s-reg number>, 5
  7f0034:	e0 47 20 28 	ldsr	r0, <invalid s-reg number>, 5
  7f0038:	e0 4f 20 28 	ldsr	r0, <invalid s-reg number>, 5
  7f003c:	e0 67 20 28 	ldsr	r0, <invalid s-reg number>, 5
  7f0040:	e0 07 20 08 	ldsr	r0, <invalid s-reg number>, 1
  7f0044:	80 ff 8e 00 	jarl	7f00d2 <clear_mpu>, lp
  7f0048:	00 52       	mov	0, r10
  7f004a:	e5 51       	cmp	r5, r10
  7f004c:	ba 25       	bne	7f0092 <skip>
  7f004e:	40 a6 7f 00 	movhi	127, r0, r20
  7f0052:	34 a6 a0 46 	movea	18080, r20, r20
  7f0056:	40 ae 7f 00 	movhi	127, r0, r21
  7f005a:	35 ae 18 4c 	movea	19480, r21, r21
  7f005e:	40 b6 10 fe 	movhi	-496, r0, r22
  7f0062:	36 b6 00 00 	movea	0, r22, r22
  7f0066:	80 ff 56 00 	jarl	7f00bc <copy_data>, lp
  7f006a:	40 a6 10 fe 	movhi	-496, r0, r20
  7f006e:	34 a6 78 05 	movea	1400, r20, r20
  7f0072:	40 ae 10 fe 	movhi	-496, r0, r21
  7f0076:	35 ae 04 27 	movea	9988, r21, r21
  7f007a:	80 ff 32 00 	jarl	7f00ac <boot_clear>, lp
  7f007e:	40 a6 10 fe 	movhi	-496, r0, r20
  7f0082:	34 a6 10 27 	movea	10000, r20, r20
  7f0086:	40 ae 10 fe 	movhi	-496, r0, r21
  7f008a:	35 ae 10 47 	movea	18192, r21, r21
  7f008e:	80 ff 1e 00 	jarl	7f00ac <boot_clear>, lp

007f0092 <skip>:
  7f0092:	40 a6 10 fe 	movhi	-496, r0, r20
  7f0096:	34 a6 10 27 	movea	10000, r20, r20
  7f009a:	35 06 00 01 	mov	0x100, r21
  7f009e:	00 00 
  7f00a0:	d5 a1       	add	r21, r20
  7f00a2:	e5 a8       	mulh	r5, r21
  7f00a4:	d5 a1       	add	r21, r20
  7f00a6:	14 18       	mov	r20, sp
  7f00a8:	80 07 7e 02 	jr	7f0326 <__init>

007f00ac <boot_clear>:
  7f00ac:	f5 a1       	cmp	r21, r20
  7f00ae:	ee 05       	bge	7f00ba <boot_clear_exit>
  7f00b0:	74 07 01 00 	st.w	r0, 0[r20]
  7f00b4:	14 a6 04 00 	addi	4, r20, r20
  7f00b8:	a5 fd       	br	7f00ac <boot_clear>

007f00ba <boot_clear_exit>:
  7f00ba:	7f 00       	jmp	[lp]

007f00bc <copy_data>:
  7f00bc:	34 bf 01 00 	ld.w	0[r20], r23
  7f00c0:	76 bf 01 00 	st.w	r23, 0[r22]
  7f00c4:	14 a6 04 00 	addi	4, r20, r20
  7f00c8:	16 b6 04 00 	addi	4, r22, r22
  7f00cc:	f4 a9       	cmp	r20, r21
  7f00ce:	fa f5       	bne	7f00bc <copy_data>
  7f00d0:	7f 00       	jmp	[lp]

007f00d2 <clear_mpu>:
  7f00d2:	00 a0       	mov	r0, r20

007f00d4 <clear_mpu_1>:
  7f00d4:	00 ae 20 00 	addi	32, r0, r21
  7f00d8:	b4 a9       	sub	r20, r21
  7f00da:	e0 a9       	cmp	r0, r21
  7f00dc:	c2 0d       	be	7f00f4 <clear_mpu_exit>
  7f00de:	f4 87 20 28 	ldsr	r20, <invalid s-reg number>, 5
  7f00e2:	e0 a7 20 28 	ldsr	r0, <invalid s-reg number>, 5
  7f00e6:	e0 af 20 28 	ldsr	r0, <invalid s-reg number>, 5
  7f00ea:	e0 b7 20 28 	ldsr	r0, <invalid s-reg number>, 5
  7f00ee:	14 a6 01 00 	addi	1, r20, r20
  7f00f2:	9a f5       	bne	7f00d4 <clear_mpu_1>

007f00f4 <clear_mpu_exit>:
  7f00f4:	7f 00       	jmp	[lp]

Disassembly of section .text:

007f0200 <_irq_set_handler>:
#include <irq.h>

irq_handler_t irq_handlers[IRQ_NUM]; 

void irq_set_handler(unsigned id, irq_handler_t handler){
    if(id < IRQ_NUM)
  7f0200:	20 56 ff 07 	movea	2047, r0, r10
  7f0204:	ea 31       	cmp	r10, r6
  7f0206:	8b 0d       	bh	7f0216 <_irq_set_handler+0x16>
        irq_handlers[id] = handler;
  7f0208:	c2 32       	shl	2, r6
  7f020a:	2a 06 78 05 	mov	0xfe100578, r10
  7f020e:	10 fe 
  7f0210:	ca 31       	add	r10, r6
  7f0212:	66 3f 01 00 	st.w	r7, 0[r6]
}
  7f0216:	7f 00       	jmp	[lp]

007f0218 <_irq_handle>:

void irq_handle(unsigned id){
  7f0218:	80 07 21 00 	prepare	{lp}, 0
    if(id < IRQ_NUM && irq_handlers[id] != NULL)
  7f021c:	20 5e ff 07 	movea	2047, r0, r11
  7f0220:	eb 31       	cmp	r11, r6
void irq_handle(unsigned id){
  7f0222:	06 50       	mov	r6, r10
    if(id < IRQ_NUM && irq_handlers[id] != NULL)
  7f0224:	cb 0d       	bh	7f023c <_irq_handle+0x24>
  7f0226:	c2 52       	shl	2, r10
  7f0228:	2b 06 78 05 	mov	0xfe100578, r11
  7f022c:	10 fe 
  7f022e:	cb 51       	add	r11, r10
  7f0230:	2a 57 01 00 	ld.w	0[r10], r10
  7f0234:	60 52       	cmp	0, r10
  7f0236:	b2 05       	be	7f023c <_irq_handle+0x24>
        irq_handlers[id](id);
  7f0238:	ea c7 60 f9 	jarl	[r10], lp
}
  7f023c:	40 06 3f 00 	dispose	0, {lp}, lp

__attribute__((weak))
void irq_clear_ipi(void) {
    // Default implementation, doing nothing
    // Each architecture should rewrite and override this function if need
}
  7f0240:	7f 00       	jmp	[lp]

007f0242 <__read>:
#include <cpu.h>
#include <fences.h>
#include <wfi.h>

int _read(int file, char *ptr, int len)
{
  7f0242:	80 07 e1 30 	prepare	{r26 - r29, lp}, 0
  7f0246:	08 d0       	mov	r8, r26
    int i;
    for (i = 0; i < len; ++i)
  7f0248:	60 42       	cmp	0, r8
  7f024a:	e7 0d       	ble	7f0266 <__read+0x24>
  7f024c:	07 e0       	mov	r7, r28
  7f024e:	07 e8       	mov	r7, r29
  7f0250:	3b 06 d2 0c 	mov	0x7f0cd2, r27
  7f0254:	7f 00 
  7f0256:	c8 e1       	add	r8, r28
    {
        ptr[i] = uart_getchar();
  7f0258:	fb c7 60 f9 	jarl	[r27], lp
    for (i = 0; i < len; ++i)
  7f025c:	41 ea       	add	1, r29
        ptr[i] = uart_getchar();
  7f025e:	5d 57 ff ff 	st.b	r10, -1[r29]
    for (i = 0; i < len; ++i)
  7f0262:	fc e9       	cmp	r28, r29
  7f0264:	aa fd       	bne	7f0258 <__read+0x16>
    }

    return len;
}
  7f0266:	1a 50       	mov	r26, r10
  7f0268:	40 06 ff 30 	dispose	0, {r26 - r29, lp}, lp

007f026c <__write>:

int _write(int file, char *ptr, int len)
{
  7f026c:	80 07 e1 30 	prepare	{r26 - r29, lp}, 0
  7f0270:	08 d0       	mov	r8, r26
    int i;
    for (i = 0; i < len; ++i)
  7f0272:	60 42       	cmp	0, r8
  7f0274:	b7 1d       	ble	7f02aa <__write+0x3e>
  7f0276:	07 d8       	mov	r7, r27
  7f0278:	07 e8       	mov	r7, r29
  7f027a:	3c 06 9e 0c 	mov	0x7f0c9e, r28
  7f027e:	7f 00 
  7f0280:	c8 d9       	add	r8, r27
  7f0282:	e5 05       	br	7f028e <__write+0x22>
    {
        if (ptr[i] == '\n')
        {
            uart_putc('\r');
        }
        uart_putc(ptr[i]);
  7f0284:	fc c7 60 f9 	jarl	[r28], lp
    for (i = 0; i < len; ++i)
  7f0288:	41 ea       	add	1, r29
  7f028a:	fb e9       	cmp	r27, r29
  7f028c:	f2 0d       	be	7f02aa <__write+0x3e>
        if (ptr[i] == '\n')
  7f028e:	1d 37 00 00 	ld.b	0[r29], r6
  7f0292:	6a 32       	cmp	10, r6
  7f0294:	8a fd       	bne	7f0284 <__write+0x18>
            uart_putc('\r');
  7f0296:	0d 32       	mov	13, r6
    for (i = 0; i < len; ++i)
  7f0298:	41 ea       	add	1, r29
            uart_putc('\r');
  7f029a:	fc c7 60 f9 	jarl	[r28], lp
        uart_putc(ptr[i]);
  7f029e:	1d 37 ff ff 	ld.b	-1[r29], r6
  7f02a2:	fc c7 60 f9 	jarl	[r28], lp
    for (i = 0; i < len; ++i)
  7f02a6:	fb e9       	cmp	r27, r29
  7f02a8:	ba f5       	bne	7f028e <__write+0x22>
    }

    return len;
}
  7f02aa:	1a 50       	mov	r26, r10
  7f02ac:	40 06 ff 30 	dispose	0, {r26 - r29, lp}, lp

007f02b0 <__lseek>:

int _lseek(int file, int ptr, int dir)
{
  7f02b0:	80 07 21 00 	prepare	{lp}, 0
    errno = ESPIPE;
  7f02b4:	80 ff de 2e 	jarl	7f3192 <___errno>, lp
  7f02b8:	0a 58       	mov	r10, r11
  7f02ba:	20 66 1d 00 	movea	29, r0, r12
    return -1;
}
  7f02be:	1f 52       	mov	-1, r10
    errno = ESPIPE;
  7f02c0:	6b 67 01 00 	st.w	r12, 0[r11]
}
  7f02c4:	40 06 3f 00 	dispose	0, {lp}, lp

007f02c8 <__close>:

int _close(int file)
{
    return -1;
}
  7f02c8:	1f 52       	mov	-1, r10
  7f02ca:	7f 00       	jmp	[lp]

007f02cc <__fstat>:

int _fstat(int file, struct stat *st)
{
    st->st_mode = S_IFCHR;
  7f02cc:	20 56 00 20 	movea	8192, r0, r10
  7f02d0:	67 57 05 00 	st.w	r10, 4[r7]
    return 0;
}
  7f02d4:	00 52       	mov	0, r10
  7f02d6:	7f 00       	jmp	[lp]

007f02d8 <__isatty>:

int _isatty(int fd)
{
  7f02d8:	80 07 21 00 	prepare	{lp}, 0
    errno = ENOTTY;
  7f02dc:	80 ff b6 2e 	jarl	7f3192 <___errno>, lp
  7f02e0:	0a 58       	mov	r10, r11
  7f02e2:	20 66 19 00 	movea	25, r0, r12
    return 0;
}
  7f02e6:	00 52       	mov	0, r10
    errno = ENOTTY;
  7f02e8:	6b 67 01 00 	st.w	r12, 0[r11]
}
  7f02ec:	40 06 3f 00 	dispose	0, {lp}, lp

007f02f0 <__sbrk>:

void* _sbrk(int increment)
{
    extern char _heap_base;
    static char* heap_end = &_heap_base;
    char* current_heap_end = heap_end;
  7f02f0:	2b 06 00 00 	mov	0xfe100000, r11
  7f02f4:	10 fe 
  7f02f6:	2b 57 01 00 	ld.w	0[r11], r10
    heap_end += increment;
  7f02fa:	ca 31       	add	r10, r6
  7f02fc:	6b 37 01 00 	st.w	r6, 0[r11]
    return current_heap_end;
}
  7f0300:	7f 00       	jmp	[lp]

007f0302 <__exit>:
    __asm__ volatile("syncm" ::: "memory");
}

static inline void synci(void)
{
    __asm__ volatile("synci" ::: "memory");
  7f0302:	1c 00       	synci	
#ifndef WFI_H
#define WFI_H

static inline void wfi(){
    asm volatile("snooze\n\t");
  7f0304:	e0 0f 20 01 	snooze	

void _exit(int return_value)
{
    fence_ord();
    while (1) {
  7f0308:	e5 fd       	br	7f0304 <__exit+0x2>

007f030a <__getpid>:
}

int _getpid(void)
{
  return 1;
}
  7f030a:	01 52       	mov	1, r10
  7f030c:	7f 00       	jmp	[lp]

007f030e <__kill>:

int _kill(int pid, int sig)
{
  7f030e:	80 07 21 00 	prepare	{lp}, 0
    errno = EINVAL;
  7f0312:	80 ff 80 2e 	jarl	7f3192 <___errno>, lp
  7f0316:	0a 58       	mov	r10, r11
  7f0318:	20 66 16 00 	movea	22, r0, r12
    return -1;
}
  7f031c:	1f 52       	mov	-1, r10
    errno = EINVAL;
  7f031e:	6b 67 01 00 	st.w	r12, 0[r11]
}
  7f0322:	40 06 3f 00 	dispose	0, {lp}, lp

007f0326 <__init>:

static bool init_done = false;
static spinlock_t init_lock = SPINLOCK_INITVAL;

__attribute__((weak))
void _init(){
  7f0326:	80 07 61 00 	prepare	{r29, lp}, 0
    *lock = 0;
}

static inline void spin_lock(spinlock_t *lock)
{
    __asm__ volatile(
  7f032a:	3d 06 78 25 	mov	0xfe102578, r29
  7f032e:	10 fe 
  7f0330:	fd 07 78 9b 	ldl.w	[r29], r19
  7f0334:	e0 99       	cmp	r0, r19
  7f0336:	ea 05       	bne	7f0342 <__init+0x1c>
  7f0338:	01 9a       	mov	1, r19
  7f033a:	fd 07 7a 9b 	stc.w	r19, [r29]
  7f033e:	e0 99       	cmp	r0, r19
  7f0340:	ca 05       	bne	7f0348 <__init+0x22>
  7f0342:	e0 0f 20 01 	snooze	
  7f0346:	d5 f5       	br	7f0330 <__init+0xa>

    spin_lock(&init_lock);
    if(!init_done) {
  7f0348:	2a 06 7c 25 	mov	0xfe10257c, r10
  7f034c:	10 fe 
  7f034e:	8a 5f 01 00 	ld.bu	0[r10], r11
  7f0352:	60 5a       	cmp	0, r11
  7f0354:	a2 0d       	be	7f0368 <__init+0x42>
        : "r19", "memory");
}

static inline void spin_unlock(spinlock_t *lock)
{
    __asm__ volatile(
  7f0356:	7d 07 01 00 	st.w	r0, 0[r29]
        init_done = true;
        uart_init();
    }
    spin_unlock(&init_lock);
    
    arch_init();
  7f035a:	80 ff ec 0a 	jarl	7f0e46 <_arch_init>, lp

    int ret = main();
  7f035e:	80 ff 04 11 	jarl	7f1462 <_main>, lp
    _exit(ret);
  7f0362:	0a 30       	mov	r10, r6
  7f0364:	bf ff 9e ff 	jarl	7f0302 <__exit>, lp
        init_done = true;
  7f0368:	01 5a       	mov	1, r11
  7f036a:	4a 5f 00 00 	st.b	r11, 0[r10]
        uart_init();
  7f036e:	80 ff 1e 09 	jarl	7f0c8c <_uart_init>, lp
  7f0372:	a5 f5       	br	7f0356 <__init+0x30>

007f0374 <_virtio_console_mmio_init>:

    return ret;
}

bool virtio_console_mmio_init(struct virtio_console *console)
{
  7f0374:	80 07 21 00 	prepare	{lp}, 0
    if (console->mmio->MagicValue != VIRTIO_MAGIC_VALUE)
  7f0378:	2b 06 76 69 	mov	0x74726976, r11
  7f037c:	72 74 
  7f037e:	26 57 49 00 	ld.w	72[r6], r10
  7f0382:	2a 67 01 00 	ld.w	0[r10], r12
  7f0386:	eb 61       	cmp	r11, r12
  7f0388:	ea 07 35 01 	bne	7f04bc <_virtio_console_mmio_init+0x148>
        console->mmio->Status |= FAILED;
        printf("VirtIO MMIO register magic value mismatch\n");
        return false;
    }

    if (console->mmio->Version != VIRTIO_VERSION_NO_LEGACY)
  7f038c:	2a 5f 05 00 	ld.w	4[r10], r11
  7f0390:	62 5a       	cmp	2, r11
  7f0392:	ea 07 0f 01 	bne	7f04a0 <_virtio_console_mmio_init+0x12c>
        console->mmio->Status |= FAILED;
        printf("VirtIO MMIO register version mismatch\n");
        return false;
    }

    if (console->mmio->DeviceID != console->device_id)
  7f0396:	2a 67 09 00 	ld.w	8[r10], r12
  7f039a:	e6 5f 65 01 	ld.hu	356[r6], r11
  7f039e:	eb 61       	cmp	r11, r12
  7f03a0:	ea 07 4d 01 	bne	7f04ec <_virtio_console_mmio_init+0x178>
        console->mmio->Status |= FAILED;
        printf("VirtIO MMIO register device ID mismatch\n");
        return false;
    }

    console->mmio->Status = RESET;
  7f03a4:	6a 07 71 00 	st.w	r0, 112[r10]
    console->mmio->Status |= ACKNOWLEDGE;
  7f03a8:	2a 5f 71 00 	ld.w	112[r10], r11
  7f03ac:	8b 5e 01 00 	ori	1, r11, r11
  7f03b0:	6a 5f 71 00 	st.w	r11, 112[r10]
    console->mmio->Status |= DRIVER;
  7f03b4:	2a 5f 71 00 	ld.w	112[r10], r11
  7f03b8:	8b 5e 02 00 	ori	2, r11, r11
  7f03bc:	6a 5f 71 00 	st.w	r11, 112[r10]

    if (console->mmio->Status != (RESET | ACKNOWLEDGE | DRIVER))
  7f03c0:	2a 5f 71 00 	ld.w	112[r10], r11
  7f03c4:	63 5a       	cmp	3, r11
  7f03c6:	ea 07 0f 01 	bne	7f04d4 <_virtio_console_mmio_init+0x160>
        return false;
    }

    for (int i = 0; i < VIRTIO_MMIO_FEATURE_SEL_SIZE; i++)
    {
        console->mmio->DeviceFeaturesSel = i;
  7f03ca:	6a 07 15 00 	st.w	r0, 20[r10]
        uint64_t acked_features = console->mmio->DeviceFeatures & (VIRTIO_CONSOLE_FEATURES >> (i * 32));
        console->mmio->DriverFeatures = acked_features;
        console->negotiated_feature_bits |= (acked_features << (i * 32));
    }

    if (console->negotiated_feature_bits != VIRTIO_CONSOLE_FEATURES)
  7f03ce:	26 6f 6d 01 	ld.w	364[r6], r13
        console->mmio->DriverFeaturesSel = i;
  7f03d2:	6a 07 25 00 	st.w	r0, 36[r10]
        uint64_t acked_features = console->mmio->DeviceFeatures & (VIRTIO_CONSOLE_FEATURES >> (i * 32));
  7f03d6:	2a 67 11 00 	ld.w	16[r10], r12
    if (console->negotiated_feature_bits != VIRTIO_CONSOLE_FEATURES)
  7f03da:	26 67 69 01 	ld.w	360[r6], r12
        console->mmio->DriverFeatures = acked_features;
  7f03de:	6a 07 21 00 	st.w	r0, 32[r10]
        console->mmio->DeviceFeaturesSel = i;
  7f03e2:	01 5a       	mov	1, r11
  7f03e4:	6a 5f 15 00 	st.w	r11, 20[r10]
    if (console->negotiated_feature_bits != VIRTIO_CONSOLE_FEATURES)
  7f03e8:	0d 61       	or	r13, r12
        console->mmio->DriverFeaturesSel = i;
  7f03ea:	6a 5f 25 00 	st.w	r11, 36[r10]
    if (console->negotiated_feature_bits != VIRTIO_CONSOLE_FEATURES)
  7f03ee:	60 62       	cmp	0, r12
        uint64_t acked_features = console->mmio->DeviceFeatures & (VIRTIO_CONSOLE_FEATURES >> (i * 32));
  7f03f0:	2a 77 11 00 	ld.w	16[r10], r14
        console->mmio->DriverFeatures = acked_features;
  7f03f4:	6a 07 21 00 	st.w	r0, 32[r10]
    if (console->negotiated_feature_bits != VIRTIO_CONSOLE_FEATURES)
  7f03f8:	ea 07 0d 01 	bne	7f0504 <_virtio_console_mmio_init+0x190>
        console->mmio->Status |= FAILED;
        printf("VirtIO MMIO register feature mismatch\n");
        return false;
    }

    console->config_space.cols = console->mmio->Config & 0xFFFF;
  7f03fc:	2a 77 01 01 	ld.w	256[r10], r14
    console->config_space.rows = (console->mmio->Config >> 16) & 0xFFFF;
  7f0400:	2a 6f 01 01 	ld.w	256[r10], r13
    console->config_space.max_nr_ports = *((volatile uint32_t *)((uintptr_t)&console->mmio->Config + 0x4));
  7f0404:	2a 67 05 01 	ld.w	260[r10], r12
    console->config_space.cols = console->mmio->Config & 0xFFFF;
  7f0408:	66 77 4c 00 	st.h	r14, 76[r6]
    console->config_space.rows = (console->mmio->Config >> 16) & 0xFFFF;
  7f040c:	90 6a       	shr	16, r13
    console->config_space.max_nr_ports = *((volatile uint32_t *)((uintptr_t)&console->mmio->Config + 0x4));
  7f040e:	66 67 51 00 	st.w	r12, 80[r6]
    console->config_space.emerg_wr = *((volatile uint32_t *)((uintptr_t)&console->mmio->Config + 0x8));
  7f0412:	2a 77 09 01 	ld.w	264[r10], r14

    console->mmio->Status |= FEATURES_OK;
  7f0416:	2a 67 71 00 	ld.w	112[r10], r12
    console->config_space.rows = (console->mmio->Config >> 16) & 0xFFFF;
  7f041a:	66 6f 4e 00 	st.h	r13, 78[r6]
    console->config_space.emerg_wr = *((volatile uint32_t *)((uintptr_t)&console->mmio->Config + 0x8));
  7f041e:	66 77 55 00 	st.w	r14, 84[r6]
    console->mmio->Status |= FEATURES_OK;
  7f0422:	8c 66 08 00 	ori	8, r12, r12
  7f0426:	6a 67 71 00 	st.w	r12, 112[r10]

    if (console->mmio->Status != (RESET | ACKNOWLEDGE | DRIVER | FEATURES_OK))
  7f042a:	2a 67 71 00 	ld.w	112[r10], r12
  7f042e:	6b 62       	cmp	11, r12
  7f0430:	aa 55       	bne	7f04d4 <_virtio_console_mmio_init+0x160>
        console->mmio->Status |= FAILED;
        printf("VirtIO MMIO register status mismatch\n");
        return false;
    }

    for (int vq_id = 0; vq_id < VIRTIO_CONSOLE_NUM_VQS; vq_id++)
  7f0432:	00 6a       	mov	0, r13
    {
        console->mmio->QueueSel = vq_id;
  7f0434:	6a 6f 31 00 	st.w	r13, 48[r10]
        if (console->mmio->QueueReady != 0)
  7f0438:	2a 67 45 00 	ld.w	68[r10], r12
  7f043c:	0d 86 01 00 	addi	1, r13, r16
  7f0440:	0b 68       	mov	r11, r13
  7f0442:	60 62       	cmp	0, r12
  7f0444:	ca 6d       	bne	7f051c <_virtio_console_mmio_init+0x1a8>
            console->mmio->Status |= FAILED;
            printf("VirtIO MMIO register queue ready mismatch\n");
            return false;
        }

        int queue_num_max = console->mmio->QueueNumMax;
  7f0446:	2a 67 35 00 	ld.w	52[r10], r12

        if (queue_num_max == 0)
  7f044a:	60 62       	cmp	0, r12
  7f044c:	c2 75       	be	7f0534 <_virtio_console_mmio_init+0x1c0>
            console->mmio->Status |= FAILED;
            printf("VirtIO MMIO register queue number max mismatch\n");
            return false;
        }

        console->mmio->QueueDescLow = (uint32_t)((uint64_t)console->vqs[vq_id].desc & 0xFFFFFFFF);
  7f044e:	26 67 01 00 	ld.w	0[r6], r12
        console->mmio->QueueDescHigh = (uint32_t)(((uint64_t)console->vqs[vq_id].desc >> 32) & 0xFFFFFFFF);
        console->mmio->QueueDriverLow = (uint32_t)((uint64_t)console->vqs[vq_id].avail & 0xFFFFFFFF);
  7f0452:	26 7f 05 00 	ld.w	4[r6], r15
        console->mmio->QueueDriverHigh = (uint32_t)(((uint64_t)console->vqs[vq_id].avail >> 32) & 0xFFFFFFFF);
        console->mmio->QueueDeviceLow= (uint32_t)((uint64_t)console->vqs[vq_id].used & 0xFFFFFFFF);
  7f0456:	26 77 09 00 	ld.w	8[r6], r14
    for (int vq_id = 0; vq_id < VIRTIO_CONSOLE_NUM_VQS; vq_id++)
  7f045a:	06 36 24 00 	addi	36, r6, r6
        console->mmio->QueueDescLow = (uint32_t)((uint64_t)console->vqs[vq_id].desc & 0xFFFFFFFF);
  7f045e:	6a 67 81 00 	st.w	r12, 128[r10]
        console->mmio->QueueDescHigh = (uint32_t)(((uint64_t)console->vqs[vq_id].desc >> 32) & 0xFFFFFFFF);
  7f0462:	bf 62       	sar	31, r12
  7f0464:	6a 67 85 00 	st.w	r12, 132[r10]
        console->mmio->QueueDriverHigh = (uint32_t)(((uint64_t)console->vqs[vq_id].avail >> 32) & 0xFFFFFFFF);
  7f0468:	0f 88       	mov	r15, r17
        console->mmio->QueueDriverLow = (uint32_t)((uint64_t)console->vqs[vq_id].avail & 0xFFFFFFFF);
  7f046a:	6a 7f 91 00 	st.w	r15, 144[r10]
        console->mmio->QueueDriverHigh = (uint32_t)(((uint64_t)console->vqs[vq_id].avail >> 32) & 0xFFFFFFFF);
  7f046e:	bf 8a       	sar	31, r17
  7f0470:	6a 8f 95 00 	st.w	r17, 148[r10]
        console->mmio->QueueDeviceHigh = (uint32_t)(((uint64_t)console->vqs[vq_id].used >> 32) & 0xFFFFFFFF);
  7f0474:	0e 60       	mov	r14, r12
  7f0476:	bf 62       	sar	31, r12
        console->mmio->QueueDeviceLow= (uint32_t)((uint64_t)console->vqs[vq_id].used & 0xFFFFFFFF);
  7f0478:	6a 77 a1 00 	st.w	r14, 160[r10]
        console->mmio->QueueDeviceHigh = (uint32_t)(((uint64_t)console->vqs[vq_id].used >> 32) & 0xFFFFFFFF);
  7f047c:	6a 67 a5 00 	st.w	r12, 164[r10]
    for (int vq_id = 0; vq_id < VIRTIO_CONSOLE_NUM_VQS; vq_id++)
  7f0480:	62 82       	cmp	2, r16

        console->mmio->QueueReady = 1;
  7f0482:	6a 5f 45 00 	st.w	r11, 68[r10]
    for (int vq_id = 0; vq_id < VIRTIO_CONSOLE_NUM_VQS; vq_id++)
  7f0486:	fa d5       	bne	7f0434 <_virtio_console_mmio_init+0xc0>
    }

    console->mmio->Status |= DRIVER_OK;
  7f0488:	2a 5f 71 00 	ld.w	112[r10], r11
  7f048c:	8b 5e 04 00 	ori	4, r11, r11
  7f0490:	6a 5f 71 00 	st.w	r11, 112[r10]
    if (console->mmio->Status != (RESET | ACKNOWLEDGE | DRIVER | FEATURES_OK | DRIVER_OK))
  7f0494:	2a 5f 71 00 	ld.w	112[r10], r11
  7f0498:	6f 5a       	cmp	15, r11
  7f049a:	da 1d       	bne	7f04d4 <_virtio_console_mmio_init+0x160>
        console->mmio->Status |= FAILED;
        printf("VirtIO MMIO register status mismatch\n");
        return false;
    }

    return true;
  7f049c:	01 52       	mov	1, r10
  7f049e:	d5 0d       	br	7f04b8 <_virtio_console_mmio_init+0x144>
        console->mmio->Status |= FAILED;
  7f04a0:	2a 5f 71 00 	ld.w	112[r10], r11
        printf("VirtIO MMIO register version mismatch\n");
  7f04a4:	26 06 28 43 	mov	0x7f4328, r6
  7f04a8:	7f 00 
        console->mmio->Status |= FAILED;
  7f04aa:	8b 5e 80 00 	ori	128, r11, r11
  7f04ae:	6a 5f 71 00 	st.w	r11, 112[r10]
        printf("VirtIO MMIO register version mismatch\n");
  7f04b2:	80 ff a6 0b 	jarl	7f1058 <_puts>, lp
        return false;
  7f04b6:	00 52       	mov	0, r10
}
  7f04b8:	40 06 3f 00 	dispose	0, {lp}, lp
        console->mmio->Status |= FAILED;
  7f04bc:	2a 5f 71 00 	ld.w	112[r10], r11
        printf("VirtIO MMIO register magic value mismatch\n");
  7f04c0:	26 06 fe 42 	mov	0x7f42fe, r6
  7f04c4:	7f 00 
        console->mmio->Status |= FAILED;
  7f04c6:	8b 5e 80 00 	ori	128, r11, r11
  7f04ca:	6a 5f 71 00 	st.w	r11, 112[r10]
        printf("VirtIO MMIO register magic value mismatch\n");
  7f04ce:	80 ff 8a 0b 	jarl	7f1058 <_puts>, lp
        return false;
  7f04d2:	a5 f5       	br	7f04b6 <_virtio_console_mmio_init+0x142>
        console->mmio->Status |= FAILED;
  7f04d4:	2a 5f 71 00 	ld.w	112[r10], r11
        printf("VirtIO MMIO register status mismatch\n");
  7f04d8:	26 06 76 43 	mov	0x7f4376, r6
  7f04dc:	7f 00 
        console->mmio->Status |= FAILED;
  7f04de:	8b 5e 80 00 	ori	128, r11, r11
  7f04e2:	6a 5f 71 00 	st.w	r11, 112[r10]
        printf("VirtIO MMIO register status mismatch\n");
  7f04e6:	80 ff 72 0b 	jarl	7f1058 <_puts>, lp
        return false;
  7f04ea:	e5 e5       	br	7f04b6 <_virtio_console_mmio_init+0x142>
        console->mmio->Status |= FAILED;
  7f04ec:	2a 5f 71 00 	ld.w	112[r10], r11
        printf("VirtIO MMIO register device ID mismatch\n");
  7f04f0:	26 06 4e 43 	mov	0x7f434e, r6
  7f04f4:	7f 00 
        console->mmio->Status |= FAILED;
  7f04f6:	8b 5e 80 00 	ori	128, r11, r11
  7f04fa:	6a 5f 71 00 	st.w	r11, 112[r10]
        printf("VirtIO MMIO register device ID mismatch\n");
  7f04fe:	80 ff 5a 0b 	jarl	7f1058 <_puts>, lp
        return false;
  7f0502:	a5 dd       	br	7f04b6 <_virtio_console_mmio_init+0x142>
        console->mmio->Status |= FAILED;
  7f0504:	2a 5f 71 00 	ld.w	112[r10], r11
        printf("VirtIO MMIO register feature mismatch\n");
  7f0508:	26 06 9b 43 	mov	0x7f439b, r6
  7f050c:	7f 00 
        console->mmio->Status |= FAILED;
  7f050e:	8b 5e 80 00 	ori	128, r11, r11
  7f0512:	6a 5f 71 00 	st.w	r11, 112[r10]
        printf("VirtIO MMIO register feature mismatch\n");
  7f0516:	80 ff 42 0b 	jarl	7f1058 <_puts>, lp
        return false;
  7f051a:	e5 cd       	br	7f04b6 <_virtio_console_mmio_init+0x142>
            console->mmio->Status |= FAILED;
  7f051c:	2a 5f 71 00 	ld.w	112[r10], r11
            printf("VirtIO MMIO register queue ready mismatch\n");
  7f0520:	26 06 c1 43 	mov	0x7f43c1, r6
  7f0524:	7f 00 
            console->mmio->Status |= FAILED;
  7f0526:	8b 5e 80 00 	ori	128, r11, r11
  7f052a:	6a 5f 71 00 	st.w	r11, 112[r10]
            printf("VirtIO MMIO register queue ready mismatch\n");
  7f052e:	80 ff 2a 0b 	jarl	7f1058 <_puts>, lp
            return false;
  7f0532:	a5 c5       	br	7f04b6 <_virtio_console_mmio_init+0x142>
            console->mmio->Status |= FAILED;
  7f0534:	2a 5f 71 00 	ld.w	112[r10], r11
            printf("VirtIO MMIO register queue number max mismatch\n");
  7f0538:	26 06 eb 43 	mov	0x7f43eb, r6
  7f053c:	7f 00 
            console->mmio->Status |= FAILED;
  7f053e:	8b 5e 80 00 	ori	128, r11, r11
  7f0542:	6a 5f 71 00 	st.w	r11, 112[r10]
            printf("VirtIO MMIO register queue number max mismatch\n");
  7f0546:	80 ff 12 0b 	jarl	7f1058 <_puts>, lp
            return false;
  7f054a:	e5 b5       	br	7f04b6 <_virtio_console_mmio_init+0x142>

007f054c <_virtio_console_init>:
{
  7f054c:	80 07 61 00 	prepare	{r29, lp}, 0
    console->device_id = VIRTIO_CONSOLE_DEVICE_ID;
  7f0550:	03 62       	mov	3, r12
{
  7f0552:	06 e8       	mov	r6, r29
  7f0554:	07 50       	mov	r7, r10
 * @param vq_base_addr Base address of the virtqueue
 */
static inline void virtq_init(struct virtq *vq, uint16_t queue_index, char* vq_base_addr)
{
    /* Initialize the descriptor ring */
    vq->desc = (volatile struct virtq_desc *)VIRTQ_DESC_ADDR(vq_base_addr);
  7f0556:	01 5a       	mov	1, r11
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f0558:	20 6e 01 04 	movea	1025, r0, r13
  7f055c:	03 1e e8 ff 	addi	-24, sp, sp
    console->ready = false;
  7f0560:	46 07 70 01 	st.b	r0, 368[r6]
    console->device_id = VIRTIO_CONSOLE_DEVICE_ID;
  7f0564:	66 67 64 01 	st.h	r12, 356[r6]
    console->mmio = (volatile struct virtio_mmio_reg *)mmio_base;
  7f0568:	66 47 49 00 	st.w	r8, 72[r6]
    console->negotiated_feature_bits = 0;
  7f056c:	66 07 69 01 	st.w	r0, 360[r6]
  7f0570:	66 07 6d 01 	st.w	r0, 364[r6]
    console->rx_buffer[0] = '\0';
  7f0574:	46 07 58 00 	st.b	r0, 88[r6]
    console->rx_buffer_pos = 0;
  7f0578:	66 07 59 01 	st.w	r0, 344[r6]
    console->rx_lock = SPINLOCK_INITVAL;
  7f057c:	66 07 5d 01 	st.w	r0, 348[r6]
    console->tx_lock = SPINLOCK_INITVAL;
  7f0580:	66 07 61 01 	st.w	r0, 352[r6]
    vq->desc = (volatile struct virtq_desc *)VIRTQ_DESC_ADDR(vq_base_addr);
  7f0584:	66 3f 01 00 	st.w	r7, 0[r6]
    {
        vq->desc[i].addr = 0;
  7f0588:	63 07 01 00 	st.w	r0, 0[sp]
  7f058c:	63 07 05 00 	st.w	r0, 4[sp]
  7f0590:	a3 07 09 70 	ld.dw	0[sp], r14
  7f0594:	00 00 
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f0596:	0b 66 01 00 	addi	1, r11, r12
  7f059a:	0a 56 10 00 	addi	16, r10, r10
        vq->desc[i].addr = 0;
  7f059e:	aa 07 0f 77 	st.dw	r14, -16[r10]
  7f05a2:	ff ff 
        vq->desc[i].len = 0;
  7f05a4:	6a 07 f9 ff 	st.w	r0, -8[r10]
        vq->desc[i].flags = 0;
  7f05a8:	6a 07 fc ff 	st.h	r0, -4[r10]
        vq->desc[i].next = i + 1;
  7f05ac:	6a 5f fe ff 	st.h	r11, -2[r10]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f05b0:	cc 5e ff ff 	andi	65535, r12, r11
  7f05b4:	ed 59       	cmp	r13, r11
  7f05b6:	9a ed       	bne	7f0588 <_virtio_console_init+0x3c>
    }
    vq->desc[VIRTQ_SIZE - 1].next = 0;
  7f05b8:	67 07 fe 3f 	st.h	r0, 16382[r7]
    vq->desc_next_free = 0;
    vq->desc_num_free = VIRTQ_SIZE;

    /* Initialize the available ring */
    vq->avail = (volatile struct virtq_avail *)VIRTQ_AVAIL_ADDR(vq_base_addr);
  7f05bc:	07 56 00 40 	addi	16384, r7, r10
    vq->desc_num_free = VIRTQ_SIZE;
  7f05c0:	20 5e 00 04 	movea	1024, r0, r11
    vq->avail = (volatile struct virtq_avail *)VIRTQ_AVAIL_ADDR(vq_base_addr);
  7f05c4:	7d 57 05 00 	st.w	r10, 4[r29]
    vq->desc_next_free = 0;
  7f05c8:	7d 07 0e 00 	st.h	r0, 14[r29]
    vq->desc_num_free = VIRTQ_SIZE;
  7f05cc:	7d 5f 10 00 	st.h	r11, 16[r29]
    vq->avail->flags = 0;
  7f05d0:	67 07 00 40 	st.h	r0, 16384[r7]
    vq->avail->idx = 0;
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f05d4:	00 52       	mov	0, r10
  7f05d6:	20 66 00 04 	movea	1024, r0, r12
    vq->avail->idx = 0;
  7f05da:	67 07 02 40 	st.h	r0, 16386[r7]
    {
        vq->avail->ring[i] = 0;
  7f05de:	0a 58       	mov	r10, r11
  7f05e0:	ca 59       	add	r10, r11
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f05e2:	41 52       	add	1, r10
        vq->avail->ring[i] = 0;
  7f05e4:	c7 59       	add	r7, r11
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f05e6:	ec 51       	cmp	r12, r10
        vq->avail->ring[i] = 0;
  7f05e8:	6b 07 04 40 	st.h	r0, 16388[r11]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f05ec:	9a fd       	bne	7f05de <_virtio_console_init+0x92>
    }
    vq->avail_last_idx = 0;

    /* Initialize the used ring */
    vq->used = (volatile struct virtq_used *)VIRTQ_USED_ADDR(vq_base_addr);
  7f05ee:	07 56 00 50 	addi	20480, r7, r10
    vq->avail_last_idx = 0;
  7f05f2:	7d 07 12 00 	st.h	r0, 18[r29]
    vq->used = (volatile struct virtq_used *)VIRTQ_USED_ADDR(vq_base_addr);
  7f05f6:	7d 57 09 00 	st.w	r10, 8[r29]
    vq->used->flags = 0;
    vq->used->idx = 0;
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f05fa:	00 5a       	mov	0, r11
    vq->used->flags = 0;
  7f05fc:	67 07 00 50 	st.h	r0, 20480[r7]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f0600:	20 66 00 04 	movea	1024, r0, r12
    vq->used->idx = 0;
  7f0604:	67 07 02 50 	st.h	r0, 20482[r7]
    {
        vq->used->ring[i].id = 0;
  7f0608:	0b 50       	mov	r11, r10
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f060a:	41 5a       	add	1, r11
  7f060c:	c3 52       	shl	3, r10
  7f060e:	c7 51       	add	r7, r10
        vq->used->ring[i].id = 0;
  7f0610:	6a 07 05 50 	st.w	r0, 20484[r10]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f0614:	ec 59       	cmp	r12, r11
        vq->used->ring[i].len = 0;
  7f0616:	6a 07 09 50 	st.w	r0, 20488[r10]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f061a:	fa f5       	bne	7f0608 <_virtio_console_init+0xbc>
 * @param base Base address of the memory pool
 * @param size Length of the memory to allocate
 */
static inline void virtio_memory_pool_init(struct virtio_memory_pool* pool, char* base, unsigned long size)
{
    pool->base = base;
  7f061c:	2b 06 00 80 	mov	0x8000, r11
  7f0620:	00 00 
    pool->size = size;
  7f0622:	40 66 01 00 	movhi	1, r0, r12
    pool->base = base;
  7f0626:	c7 59       	add	r7, r11
    }
    vq->last_used_idx = 0;
  7f0628:	7d 07 14 00 	st.h	r0, 20[r29]

    vq->queue_index = queue_index;
  7f062c:	7d 07 0c 00 	st.h	r0, 12[r29]
  7f0630:	7d 5f 19 00 	st.w	r11, 24[r29]
    pool->size = size;
  7f0634:	7d 67 1d 00 	st.w	r12, 28[r29]
    pool->offset = 0;
  7f0638:	7d 07 21 00 	st.w	r0, 32[r29]

    /* Mark all memory as free */
    for (unsigned long i = 0; i < size; i++) {
  7f063c:	01 52       	mov	1, r10
        pool->base[i] = 0;
  7f063e:	4b 07 00 00 	st.b	r0, 0[r11]
  7f0642:	3d 5f 19 00 	ld.w	24[r29], r11
  7f0646:	ca 59       	add	r10, r11
    for (unsigned long i = 0; i < size; i++) {
  7f0648:	41 52       	add	1, r10
  7f064a:	ec 51       	cmp	r12, r10
        pool->base[i] = 0;
  7f064c:	4b 07 00 00 	st.b	r0, 0[r11]
    for (unsigned long i = 0; i < size; i++) {
  7f0650:	9a fd       	bne	7f0642 <_virtio_console_init+0xf6>
    virtq_init(&console->vqs[VIRTIO_CONSOLE_TX_VQ_IDX], VIRTIO_CONSOLE_TX_VQ_IDX, shmem_base + VIRTQ_SIZE_TOTAL);
  7f0652:	2c 06 00 80 	mov	0x18000, r12
  7f0656:	01 00 
    vq->desc = (volatile struct virtq_desc *)VIRTQ_DESC_ADDR(vq_base_addr);
  7f0658:	01 5a       	mov	1, r11
  7f065a:	c7 61       	add	r7, r12
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f065c:	20 6e 01 04 	movea	1025, r0, r13
  7f0660:	0c 50       	mov	r12, r10
    vq->desc = (volatile struct virtq_desc *)VIRTQ_DESC_ADDR(vq_base_addr);
  7f0662:	7d 67 25 00 	st.w	r12, 36[r29]
        vq->desc[i].addr = 0;
  7f0666:	63 07 09 00 	st.w	r0, 8[sp]
  7f066a:	63 07 0d 00 	st.w	r0, 12[sp]
  7f066e:	a3 07 89 70 	ld.dw	8[sp], r14
  7f0672:	00 00 
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f0674:	0b 66 01 00 	addi	1, r11, r12
  7f0678:	0a 56 10 00 	addi	16, r10, r10
        vq->desc[i].addr = 0;
  7f067c:	aa 07 0f 77 	st.dw	r14, -16[r10]
  7f0680:	ff ff 
        vq->desc[i].len = 0;
  7f0682:	6a 07 f9 ff 	st.w	r0, -8[r10]
        vq->desc[i].flags = 0;
  7f0686:	6a 07 fc ff 	st.h	r0, -4[r10]
        vq->desc[i].next = i + 1;
  7f068a:	6a 5f fe ff 	st.h	r11, -2[r10]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f068e:	cc 5e ff ff 	andi	65535, r12, r11
  7f0692:	ed 59       	cmp	r13, r11
  7f0694:	9a ed       	bne	7f0666 <_virtio_console_init+0x11a>
    vq->desc[VIRTQ_SIZE - 1].next = 0;
  7f0696:	2a 06 f0 bf 	mov	0x1bff0, r10
  7f069a:	01 00 
    vq->avail = (volatile struct virtq_avail *)VIRTQ_AVAIL_ADDR(vq_base_addr);
  7f069c:	2c 06 00 c0 	mov	0x1c000, r12
  7f06a0:	01 00 
    vq->desc[VIRTQ_SIZE - 1].next = 0;
  7f06a2:	c7 51       	add	r7, r10
    vq->avail = (volatile struct virtq_avail *)VIRTQ_AVAIL_ADDR(vq_base_addr);
  7f06a4:	c7 61       	add	r7, r12
    vq->desc[VIRTQ_SIZE - 1].next = 0;
  7f06a6:	6a 07 0e 00 	st.h	r0, 14[r10]
    vq->desc_num_free = VIRTQ_SIZE;
  7f06aa:	20 56 00 04 	movea	1024, r0, r10
  7f06ae:	7d 57 34 00 	st.h	r10, 52[r29]
    vq->desc_next_free = 0;
  7f06b2:	7d 07 32 00 	st.h	r0, 50[r29]
    vq->avail = (volatile struct virtq_avail *)VIRTQ_AVAIL_ADDR(vq_base_addr);
  7f06b6:	7d 67 29 00 	st.w	r12, 40[r29]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f06ba:	00 52       	mov	0, r10
    vq->avail->flags = 0;
  7f06bc:	6c 07 00 00 	st.h	r0, 0[r12]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f06c0:	20 6e 00 04 	movea	1024, r0, r13
    vq->avail->idx = 0;
  7f06c4:	6c 07 02 00 	st.h	r0, 2[r12]
        vq->avail->ring[i] = 0;
  7f06c8:	0a 58       	mov	r10, r11
  7f06ca:	ca 59       	add	r10, r11
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f06cc:	41 52       	add	1, r10
        vq->avail->ring[i] = 0;
  7f06ce:	cc 59       	add	r12, r11
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f06d0:	ed 51       	cmp	r13, r10
        vq->avail->ring[i] = 0;
  7f06d2:	6b 07 04 00 	st.h	r0, 4[r11]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f06d6:	9a fd       	bne	7f06c8 <_virtio_console_init+0x17c>
    vq->used = (volatile struct virtq_used *)VIRTQ_USED_ADDR(vq_base_addr);
  7f06d8:	2a 06 00 d0 	mov	0x1d000, r10
  7f06dc:	01 00 
    vq->avail_last_idx = 0;
  7f06de:	7d 07 36 00 	st.h	r0, 54[r29]
    vq->used = (volatile struct virtq_used *)VIRTQ_USED_ADDR(vq_base_addr);
  7f06e2:	c7 51       	add	r7, r10
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f06e4:	00 5a       	mov	0, r11
    vq->used = (volatile struct virtq_used *)VIRTQ_USED_ADDR(vq_base_addr);
  7f06e6:	7d 57 2d 00 	st.w	r10, 44[r29]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f06ea:	20 6e 00 04 	movea	1024, r0, r13
    vq->used->flags = 0;
  7f06ee:	6a 07 00 00 	st.h	r0, 0[r10]
    vq->used->idx = 0;
  7f06f2:	6a 07 02 00 	st.h	r0, 2[r10]
        vq->used->ring[i].id = 0;
  7f06f6:	0b 50       	mov	r11, r10
  7f06f8:	2c 06 04 d0 	mov	0x1d004, r12
  7f06fc:	01 00 
  7f06fe:	c3 52       	shl	3, r10
        vq->used->ring[i].len = 0;
  7f0700:	2e 06 08 d0 	mov	0x1d008, r14
  7f0704:	01 00 
  7f0706:	c7 51       	add	r7, r10
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f0708:	41 5a       	add	1, r11
        vq->used->ring[i].id = 0;
  7f070a:	ca 61       	add	r10, r12
        vq->used->ring[i].len = 0;
  7f070c:	ce 51       	add	r14, r10
        vq->used->ring[i].id = 0;
  7f070e:	6c 07 01 00 	st.w	r0, 0[r12]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f0712:	ed 59       	cmp	r13, r11
        vq->used->ring[i].len = 0;
  7f0714:	6a 07 01 00 	st.w	r0, 0[r10]
    for (int i = 0; i < VIRTQ_SIZE; i++)
  7f0718:	fa ed       	bne	7f06f6 <_virtio_console_init+0x1aa>

    /* Initialize the memory pool */
    virtio_memory_pool_init(&vq->pool, (char *)VIRTQ_MEMORY_POOL_ADDR(vq_base_addr), VIRTQ_MEMORY_POOL_SIZE);
  7f071a:	40 56 02 00 	movhi	2, r0, r10
    pool->size = size;
  7f071e:	40 66 01 00 	movhi	1, r0, r12
  7f0722:	ca 39       	add	r10, r7
    vq->queue_index = queue_index;
  7f0724:	01 52       	mov	1, r10
  7f0726:	7d 57 30 00 	st.h	r10, 48[r29]
    vq->last_used_idx = 0;
  7f072a:	7d 07 38 00 	st.h	r0, 56[r29]
    pool->base = base;
  7f072e:	7d 3f 3d 00 	st.w	r7, 60[r29]
    pool->size = size;
  7f0732:	7d 67 41 00 	st.w	r12, 64[r29]
    pool->offset = 0;
  7f0736:	7d 07 45 00 	st.w	r0, 68[r29]
    for (unsigned long i = 0; i < size; i++) {
  7f073a:	01 52       	mov	1, r10
        pool->base[i] = 0;
  7f073c:	47 07 00 00 	st.b	r0, 0[r7]
  7f0740:	3d 5f 3d 00 	ld.w	60[r29], r11
  7f0744:	ca 59       	add	r10, r11
    for (unsigned long i = 0; i < size; i++) {
  7f0746:	41 52       	add	1, r10
  7f0748:	ec 51       	cmp	r12, r10
        pool->base[i] = 0;
  7f074a:	4b 07 00 00 	st.b	r0, 0[r11]
    for (unsigned long i = 0; i < size; i++) {
  7f074e:	9a fd       	bne	7f0740 <_virtio_console_init+0x1f4>
 * @param vq VirtIO virtqueue
 * @return true if there are free slots, false otherwise
 */
static inline bool virtq_has_free_slots(struct virtq *vq)
{
    return vq->desc_num_free != 0;
  7f0750:	fd 57 11 00 	ld.hu	16[r29], r10
    while (virtq_has_free_slots(&console->vqs[VIRTIO_CONSOLE_RX_VQ_IDX]))
  7f0754:	60 52       	cmp	0, r10
  7f0756:	e2 07 0d 01 	be	7f0862 <_virtio_console_init+0x316>
 * @return Returns the next free descriptor index
 */
static inline uint16_t virtq_get_free_desc_id(struct virtq *vq)
{
    assert(virtq_has_free_slots(vq));
    uint16_t idx = vq->desc_next_free;
  7f075a:	fd 3f 0f 00 	ld.hu	14[r29], r7
    return &vq->desc[id % VIRTQ_SIZE];
  7f075e:	3d 97 01 00 	ld.w	0[r29], r18
  7f0762:	c7 5e ff 03 	andi	1023, r7, r11
    vq->desc_next_free = virtq_get_desc_by_id(vq, idx)->next;
    vq->desc_num_free--;
  7f0766:	5f 52       	add	-1, r10
    return &vq->desc[id % VIRTQ_SIZE];
  7f0768:	c4 5a       	shl	4, r11
 * @param alloc_size Size of the memory to allocate
 * @return Returns a pointer to the allocated memory, or NULL if the allocation failed
 */
static inline char* virtio_memory_pool_alloc(struct virtio_memory_pool* pool, unsigned long alloc_size) {
    /** Check if the requested allocation size is larger than the pool size */
    if (alloc_size > pool->size) {
  7f076a:	3d 9f 1d 00 	ld.w	28[r29], r19
  7f076e:	d2 59       	add	r18, r11
    vq->desc_num_free--;
  7f0770:	ca 76 ff ff 	andi	65535, r10, r14
    vq->desc_next_free = virtq_get_desc_by_id(vq, idx)->next;
  7f0774:	2b 87 0e 00 	ld.h	14[r11], r16
  7f0778:	20 36 3f 00 	movea	63, r0, r6
  7f077c:	7d 87 0e 00 	st.h	r16, 14[r29]
  7f0780:	d0 00       	zxh	r16
  7f0782:	e6 99       	cmp	r6, r19
    vq->desc_num_free--;
  7f0784:	7d 77 10 00 	st.h	r14, 16[r29]
  7f0788:	83 6d       	bnh	7f0858 <_virtio_console_init+0x30c>
        return NULL;
    }

    /** Check if there is enough space from the current offset to the end of the pool */
    if (pool->offset + alloc_size <= pool->size) {
  7f078a:	3d 6f 21 00 	ld.w	32[r29], r13
  7f078e:	20 8e 40 00 	movea	64, r0, r17
  7f0792:	0d 46 40 00 	addi	64, r13, r8
  7f0796:	e8 99       	cmp	r8, r19
  7f0798:	81 55       	bl	7f0838 <_virtio_console_init+0x2ec>
        /* Get the pointer to the possible allocated memory */
        char *ptr = pool->base + pool->offset;
  7f079a:	3d 7f 19 00 	ld.w	24[r29], r15

        /* Check if the memory is already allocated */
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f079e:	cf 69       	add	r15, r13
  7f07a0:	c8 79       	add	r8, r15
  7f07a2:	0d 50       	mov	r13, r10
            if (pool->base[pool->offset + i] != 0) {
  7f07a4:	0a 67 00 00 	ld.b	0[r10], r12
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f07a8:	41 52       	add	1, r10
            if (pool->base[pool->offset + i] != 0) {
  7f07aa:	60 62       	cmp	0, r12
  7f07ac:	ea 55       	bne	7f0858 <_virtio_console_init+0x30c>
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f07ae:	ef 51       	cmp	r15, r10
  7f07b0:	aa fd       	bne	7f07a4 <_virtio_console_init+0x258>
        if(io_buffer == NULL) {
  7f07b2:	60 6a       	cmp	0, r13
                return NULL;
            }
        }

        /* Increment the offset for the next allocation */
        pool->offset += alloc_size;
  7f07b4:	7d 47 21 00 	st.w	r8, 32[r29]
  7f07b8:	82 55       	be	7f0858 <_virtio_console_init+0x30c>
        virtq_desc_init(desc, (uint64_t)io_buffer, VIRTIO_CONSOLE_RX_BUFFER_SIZE);
  7f07ba:	63 6f 11 00 	st.w	r13, 16[sp]
  7f07be:	bf 6a       	sar	31, r13
  7f07c0:	63 6f 15 00 	st.w	r13, 20[sp]
 * @param addr I/O buffer guest-physical address
 * @param len Length of the I/O buffer buffer
 */
static inline void virtq_desc_init(volatile struct virtq_desc *desc, uint64_t addr, uint32_t len)
{
    desc->addr = addr;
  7f07c4:	a3 07 09 41 	ld.dw	16[sp], r8
  7f07c8:	00 00 
 * @param vq VirtIO virtqueue
 * @param id Descriptor index
 */
static inline void virtq_add_avail_buf(struct virtq *vq, uint16_t id)
{
    vq->avail->ring[vq->avail->idx % VIRTQ_SIZE] = id;
  7f07ca:	3d 67 05 00 	ld.w	4[r29], r12
    desc->addr = addr;
  7f07ce:	ab 07 0f 40 	st.dw	r8, 0[r11]
  7f07d2:	00 00 
    desc->len = len;
  7f07d4:	6b 8f 09 00 	st.w	r17, 8[r11]
    desc->flags = 0;
  7f07d8:	6b 07 0c 00 	st.h	r0, 12[r11]
    desc->next = 0;
  7f07dc:	6b 07 0e 00 	st.h	r0, 14[r11]
    desc->flags |= VIRTQ_DESC_F_WRITE;
  7f07e0:	2b 57 0c 00 	ld.h	12[r11], r10
  7f07e4:	ca 00       	zxh	r10
  7f07e6:	8a 56 02 00 	ori	2, r10, r10
  7f07ea:	6b 57 0c 00 	st.h	r10, 12[r11]
    vq->avail->ring[vq->avail->idx % VIRTQ_SIZE] = id;
  7f07ee:	2c 57 02 00 	ld.h	2[r12], r10
  7f07f2:	ca 56 ff 03 	andi	1023, r10, r10
  7f07f6:	ca 51       	add	r10, r10
  7f07f8:	cc 51       	add	r12, r10
  7f07fa:	6a 3f 04 00 	st.h	r7, 4[r10]
    vq->avail->idx++;
  7f07fe:	2c 57 02 00 	ld.h	2[r12], r10
  7f0802:	41 52       	add	1, r10
  7f0804:	ca 00       	zxh	r10
    while (virtq_has_free_slots(&console->vqs[VIRTIO_CONSOLE_RX_VQ_IDX]))
  7f0806:	60 72       	cmp	0, r14
  7f0808:	6c 57 02 00 	st.h	r10, 2[r12]
  7f080c:	b2 2d       	be	7f0862 <_virtio_console_init+0x316>
    return &vq->desc[id % VIRTQ_SIZE];
  7f080e:	d0 5e ff 03 	andi	1023, r16, r11
    if (pool->offset + alloc_size <= pool->size) {
  7f0812:	3d 6f 21 00 	ld.w	32[r29], r13
  7f0816:	c4 5a       	shl	4, r11
    vq->desc_num_free--;
  7f0818:	5f 72       	add	-1, r14
    return &vq->desc[id % VIRTQ_SIZE];
  7f081a:	d2 59       	add	r18, r11
    vq->desc_num_free--;
  7f081c:	ce 00       	zxh	r14
    vq->desc_next_free = virtq_get_desc_by_id(vq, idx)->next;
  7f081e:	2b 57 0e 00 	ld.h	14[r11], r10
    vq->desc_num_free--;
  7f0822:	10 38       	mov	r16, r7
  7f0824:	0d 46 40 00 	addi	64, r13, r8
    vq->desc_next_free = virtq_get_desc_by_id(vq, idx)->next;
  7f0828:	ca 86 ff ff 	andi	65535, r10, r16
  7f082c:	e8 99       	cmp	r8, r19
    vq->desc_num_free--;
  7f082e:	7d 77 10 00 	st.h	r14, 16[r29]
    vq->desc_next_free = virtq_get_desc_by_id(vq, idx)->next;
  7f0832:	7d 57 0e 00 	st.h	r10, 14[r29]
  7f0836:	a9 b5       	bnl	7f079a <_virtio_console_init+0x24e>
        /* Return the pointer to the allocated memory */
        return ptr;
    }

    /** If we reached the end of the pool, wrap around (circular buffer behavior) */
    if (alloc_size <= pool->offset) {
  7f0838:	e6 69       	cmp	r6, r13
  7f083a:	f3 0d       	bnh	7f0858 <_virtio_console_init+0x30c>
        /* Get the pointer to the possible allocated memory */
        char *ptr = pool->base;
  7f083c:	3d 6f 19 00 	ld.w	24[r29], r13

        /* Check if the memory is already allocated */
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f0840:	0d 50       	mov	r13, r10
  7f0842:	0d 7e 40 00 	addi	64, r13, r15
            if (pool->base[i] != 0) {
  7f0846:	0a 67 00 00 	ld.b	0[r10], r12
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f084a:	41 52       	add	1, r10
            if (pool->base[i] != 0) {
  7f084c:	60 62       	cmp	0, r12
  7f084e:	da 05       	bne	7f0858 <_virtio_console_init+0x30c>
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f0850:	ef 51       	cmp	r15, r10
  7f0852:	aa fd       	bne	7f0846 <_virtio_console_init+0x2fa>
  7f0854:	11 40       	mov	r17, r8
  7f0856:	e5 ad       	br	7f07b2 <_virtio_console_init+0x266>
            printf("Failed to allocate memory for I/O buffer\n");
  7f0858:	26 06 1a 44 	mov	0x7f441a, r6
  7f085c:	7f 00 
  7f085e:	80 ff fa 07 	jarl	7f1058 <_puts>, lp
    ret = virtio_console_mmio_init(console);
  7f0862:	1d 30       	mov	r29, r6
  7f0864:	bf ff 10 fb 	jarl	7f0374 <_virtio_console_mmio_init>, lp
}
  7f0868:	03 1e 18 00 	addi	24, sp, sp
    console->ready = true;
  7f086c:	01 5a       	mov	1, r11
  7f086e:	5d 5f 70 01 	st.b	r11, 368[r29]
}
  7f0872:	40 06 7f 00 	dispose	0, {r29, lp}, lp

007f0876 <_virtio_console_transmit>:
{
    return console->rx_buffer_pos > 1;
}

void virtio_console_transmit(struct virtio_console *console, char *const data)
{
  7f0876:	80 07 e1 f0 	prepare	{r24 - r29, lp}, 0
  7f087a:	06 e8       	mov	r6, r29
  7f087c:	58 1a       	add	-8, sp
    int data_len = strlen(data);

    if (!console->ready) {
  7f087e:	86 57 71 01 	ld.bu	368[r6], r10
  7f0882:	60 52       	cmp	0, r10
{
  7f0884:	07 d0       	mov	r7, r26
    if (!console->ready) {
  7f0886:	e2 07 2b 01 	be	7f09b0 <_virtio_console_transmit+0x13a>
    int data_len = strlen(data);
  7f088a:	07 30       	mov	r7, r6
  7f088c:	80 ff a4 27 	jarl	7f3030 <_strlen>, lp
        printf("VirtIO console device is not ready\n");
        return;
    }

    if (data == NULL || data_len == 0) {
  7f0890:	60 52       	cmp	0, r10
    int data_len = strlen(data);
  7f0892:	0a e0       	mov	r10, r28
    if (data == NULL || data_len == 0) {
  7f0894:	e2 75       	be	7f0980 <_virtio_console_transmit+0x10a>
        printf("No data to transmit\n");
        return;
    }

    spin_lock(&console->tx_lock);
  7f0896:	1d ce 60 01 	addi	352, r29, r25
    __asm__ volatile(
  7f089a:	f9 07 78 9b 	ldl.w	[r25], r19
  7f089e:	e0 99       	cmp	r0, r19
  7f08a0:	ea 05       	bne	7f08ac <_virtio_console_transmit+0x36>
  7f08a2:	01 9a       	mov	1, r19
  7f08a4:	f9 07 7a 9b 	stc.w	r19, [r25]
  7f08a8:	e0 99       	cmp	r0, r19
  7f08aa:	ca 05       	bne	7f08b2 <_virtio_console_transmit+0x3c>
  7f08ac:	e0 0f 20 01 	snooze	
  7f08b0:	d5 f5       	br	7f089a <_virtio_console_transmit+0x24>
    return vq->desc_num_free != 0;
  7f08b2:	fd 57 35 00 	ld.hu	52[r29], r10
    assert(virtq_has_free_slots(vq));
  7f08b6:	60 52       	cmp	0, r10
  7f08b8:	e2 07 1d 01 	be	7f09d4 <_virtio_console_transmit+0x15e>
    uint16_t idx = vq->desc_next_free;
  7f08bc:	fd c7 33 00 	ld.hu	50[r29], r24
    return &vq->desc[id % VIRTQ_SIZE];
  7f08c0:	3d df 25 00 	ld.w	36[r29], r27
  7f08c4:	d8 5e ff 03 	andi	1023, r24, r11
    if (alloc_size > pool->size) {
  7f08c8:	3d 67 41 00 	ld.w	64[r29], r12
  7f08cc:	c4 5a       	shl	4, r11
    vq->desc_num_free--;
  7f08ce:	5f 52       	add	-1, r10
    return &vq->desc[id % VIRTQ_SIZE];
  7f08d0:	cb d9       	add	r11, r27
    vq->desc_next_free = virtq_get_desc_by_id(vq, idx)->next;
  7f08d2:	3b 5f 0e 00 	ld.h	14[r27], r11
  7f08d6:	ec e1       	cmp	r12, r28
    vq->desc_num_free--;
  7f08d8:	7d 57 34 00 	st.h	r10, 52[r29]
    vq->desc_next_free = virtq_get_desc_by_id(vq, idx)->next;
  7f08dc:	7d 5f 32 00 	st.h	r11, 50[r29]
  7f08e0:	8b 75       	bh	7f09c0 <_virtio_console_transmit+0x14a>
    if (pool->offset + alloc_size <= pool->size) {
  7f08e2:	3d 57 45 00 	ld.w	68[r29], r10
  7f08e6:	1c 68       	mov	r28, r13
  7f08e8:	ca 69       	add	r10, r13
  7f08ea:	ed 61       	cmp	r13, r12
  7f08ec:	a1 55       	bl	7f0990 <_virtio_console_transmit+0x11a>
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f08ee:	3d 37 3d 00 	ld.w	60[r29], r6
  7f08f2:	1c 60       	mov	r28, r12
  7f08f4:	ca 31       	add	r10, r6
  7f08f6:	06 58       	mov	r6, r11
  7f08f8:	c6 61       	add	r6, r12
            if (pool->base[pool->offset + i] != 0) {
  7f08fa:	0b 57 00 00 	ld.b	0[r11], r10
  7f08fe:	60 52       	cmp	0, r10
  7f0900:	8a 65       	bne	7f09c0 <_virtio_console_transmit+0x14a>
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f0902:	41 5a       	add	1, r11
  7f0904:	ec 59       	cmp	r12, r11
  7f0906:	aa fd       	bne	7f08fa <_virtio_console_transmit+0x84>
    /* Get the descriptor */
    volatile struct virtq_desc *desc = virtq_get_desc_by_id(vq, desc_id);

    /* Allocate memory for the I/O buffer from the memory pool */
    char *const io_buffer = virtio_memory_pool_alloc(&vq->pool, data_len);
    if(io_buffer == NULL) {
  7f0908:	60 32       	cmp	0, r6

        /* Reset the offset */
        pool->offset = 0;

        /* Increment the offset for the next allocation */
        pool->offset += alloc_size;
  7f090a:	7d 6f 45 00 	st.w	r13, 68[r29]
  7f090e:	92 5d       	be	7f09c0 <_virtio_console_transmit+0x14a>
        spin_unlock(&console->tx_lock);
        return;
    }

    /* Copy the data to the I/O buffer */
    strcpy(io_buffer, data);
  7f0910:	1a 38       	mov	r26, r7
  7f0912:	80 ff 08 27 	jarl	7f301a <_strcpy>, lp
  7f0916:	0a 30       	mov	r10, r6

    /* Initialize the descriptor */
    virtq_desc_init(desc, (uint64_t)io_buffer, data_len);
  7f0918:	63 57 01 00 	st.w	r10, 0[sp]
  7f091c:	bf 32       	sar	31, r6
    vq->avail->ring[vq->avail->idx % VIRTQ_SIZE] = id;
  7f091e:	3d 5f 29 00 	ld.w	40[r29], r11
  7f0922:	63 37 05 00 	st.w	r6, 4[sp]
    desc->addr = addr;
  7f0926:	a3 07 09 70 	ld.dw	0[sp], r14
  7f092a:	00 00 

    /* Add the buffer to the available ring */
    virtq_add_avail_buf(vq, desc_id);

    /* Notify the backend device */
    virtio_mmio_queue_notify(console->mmio, vq->queue_index);
  7f092c:	3d 67 49 00 	ld.w	72[r29], r12
  7f0930:	fd 6f 31 00 	ld.hu	48[r29], r13
  7f0934:	bb 07 0f 70 	st.dw	r14, 0[r27]
  7f0938:	00 00 
    desc->flags &= ~VIRTQ_DESC_F_WRITE;
  7f093a:	1d 72       	mov	-3, r14
    desc->len = len;
  7f093c:	7b e7 09 00 	st.w	r28, 8[r27]
    desc->flags = 0;
  7f0940:	7b 07 0c 00 	st.h	r0, 12[r27]
    desc->next = 0;
  7f0944:	7b 07 0e 00 	st.h	r0, 14[r27]
    desc->flags &= ~VIRTQ_DESC_F_WRITE;
  7f0948:	3b 57 0c 00 	ld.h	12[r27], r10
  7f094c:	ca 00       	zxh	r10
  7f094e:	4e 51       	and	r14, r10
  7f0950:	ca 00       	zxh	r10
  7f0952:	7b 57 0c 00 	st.h	r10, 12[r27]
    vq->avail->ring[vq->avail->idx % VIRTQ_SIZE] = id;
  7f0956:	2b 57 02 00 	ld.h	2[r11], r10
  7f095a:	ca 56 ff 03 	andi	1023, r10, r10
  7f095e:	ca 51       	add	r10, r10
  7f0960:	cb 51       	add	r11, r10
  7f0962:	6a c7 04 00 	st.h	r24, 4[r10]
    vq->avail->idx++;
  7f0966:	2b 57 02 00 	ld.h	2[r11], r10
  7f096a:	41 52       	add	1, r10
  7f096c:	ca 00       	zxh	r10
  7f096e:	6b 57 02 00 	st.h	r10, 2[r11]
    uint32_t Config;            // offset 0x100
} __attribute__((__packed__, aligned(0x1000)));

static inline void virtio_mmio_queue_notify(volatile struct virtio_mmio_reg *mmio, uint32_t queue_id)
{
    mmio->QueueNotify = queue_id;
  7f0972:	6c 6f 51 00 	st.w	r13, 80[r12]
    __asm__ volatile(
  7f0976:	79 07 01 00 	st.w	r0, 0[r25]

    spin_unlock(&console->tx_lock);
}
  7f097a:	48 1a       	add	8, sp
  7f097c:	40 06 ff f0 	dispose	0, {r24 - r29, lp}, lp
        printf("No data to transmit\n");
  7f0980:	26 06 66 44 	mov	0x7f4466, r6
  7f0984:	7f 00 
  7f0986:	80 ff d2 06 	jarl	7f1058 <_puts>, lp
}
  7f098a:	48 1a       	add	8, sp
  7f098c:	40 06 ff f0 	dispose	0, {r24 - r29, lp}, lp
    if (alloc_size <= pool->offset) {
  7f0990:	ea e1       	cmp	r10, r28
  7f0992:	fb 15       	bh	7f09c0 <_virtio_console_transmit+0x14a>
        char *ptr = pool->base;
  7f0994:	3d 37 3d 00 	ld.w	60[r29], r6
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f0998:	1c 60       	mov	r28, r12
  7f099a:	06 58       	mov	r6, r11
  7f099c:	c6 61       	add	r6, r12
            if (pool->base[i] != 0) {
  7f099e:	0b 57 00 00 	ld.b	0[r11], r10
  7f09a2:	60 52       	cmp	0, r10
  7f09a4:	ea 0d       	bne	7f09c0 <_virtio_console_transmit+0x14a>
        for (unsigned long i = 0; i < alloc_size; i++) {
  7f09a6:	41 5a       	add	1, r11
  7f09a8:	eb 61       	cmp	r11, r12
  7f09aa:	aa fd       	bne	7f099e <_virtio_console_transmit+0x128>
  7f09ac:	1c 68       	mov	r28, r13
  7f09ae:	d5 ad       	br	7f0908 <_virtio_console_transmit+0x92>
        printf("VirtIO console device is not ready\n");
  7f09b0:	26 06 43 44 	mov	0x7f4443, r6
  7f09b4:	7f 00 
  7f09b6:	80 ff a2 06 	jarl	7f1058 <_puts>, lp
}
  7f09ba:	48 1a       	add	8, sp
  7f09bc:	40 06 ff f0 	dispose	0, {r24 - r29, lp}, lp
        printf("Failed to allocate memory for I/O buffer\n");
  7f09c0:	26 06 1a 44 	mov	0x7f441a, r6
  7f09c4:	7f 00 
  7f09c6:	80 ff 92 06 	jarl	7f1058 <_puts>, lp
  7f09ca:	79 07 01 00 	st.w	r0, 0[r25]
}
  7f09ce:	48 1a       	add	8, sp
  7f09d0:	40 06 ff f0 	dispose	0, {r24 - r29, lp}, lp
    assert(virtq_has_free_slots(vq));
  7f09d4:	29 06 7a 44 	mov	0x7f447a, r9
  7f09d8:	7f 00 
  7f09da:	28 06 a5 45 	mov	0x7f45a5, r8
  7f09de:	7f 00 
  7f09e0:	20 3e c1 00 	movea	193, r0, r7
  7f09e4:	26 06 93 44 	mov	0x7f4493, r6
  7f09e8:	7f 00 
  7f09ea:	80 ff 16 10 	jarl	7f1a00 <___assert_func>, lp

007f09ee <_virtio_console_receive>:

bool virtio_console_receive(struct virtio_console *console)
{
  7f09ee:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f09f2:	58 1a       	add	-8, sp
    uint32_t interrupt_status = 0;

    if (!console->ready) {
  7f09f4:	86 57 71 01 	ld.bu	368[r6], r10
  7f09f8:	60 52       	cmp	0, r10
  7f09fa:	b2 0d       	be	7f0a10 <_virtio_console_receive+0x22>
        return false;
    }

    /* Read and acknowledge interrupts */
    interrupt_status = console->mmio->InterruptStatus;
  7f09fc:	26 57 49 00 	ld.w	72[r6], r10
  7f0a00:	2a 5f 61 00 	ld.w	96[r10], r11
    console->mmio->InterruptACK = interrupt_status;

    if (interrupt_status & VIRTIO_MMIO_INT_CONFIG) {
  7f0a04:	cb 66 02 00 	andi	2, r11, r12
    console->mmio->InterruptACK = interrupt_status;
  7f0a08:	6a 5f 65 00 	st.w	r11, 100[r10]
    if (interrupt_status & VIRTIO_MMIO_INT_CONFIG) {
  7f0a0c:	60 62       	cmp	0, r12
  7f0a0e:	d2 05       	be	7f0a18 <_virtio_console_receive+0x2a>
        return false;
    }

    /* Return true if there are receive buffers available */
    return virtio_console_rx_has_buffers(console);
}
  7f0a10:	48 1a       	add	8, sp
        return false;
  7f0a12:	00 52       	mov	0, r10
}
  7f0a14:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp
    spin_lock(&console->rx_lock);
  7f0a18:	06 86 5c 01 	addi	348, r6, r16
    __asm__ volatile(
  7f0a1c:	f0 07 78 9b 	ldl.w	[r16], r19
  7f0a20:	e0 99       	cmp	r0, r19
  7f0a22:	ea 05       	bne	7f0a2e <_virtio_console_receive+0x40>
  7f0a24:	01 9a       	mov	1, r19
  7f0a26:	f0 07 7a 9b 	stc.w	r19, [r16]
  7f0a2a:	e0 99       	cmp	r0, r19
  7f0a2c:	ca 05       	bne	7f0a34 <_virtio_console_receive+0x46>
  7f0a2e:	e0 0f 20 01 	snooze	
  7f0a32:	d5 f5       	br	7f0a1c <_virtio_console_receive+0x2e>
    console->rx_buffer[0] = '\0';
  7f0a34:	46 07 58 00 	st.b	r0, 88[r6]
    console->rx_buffer_pos = 0;
  7f0a38:	66 07 59 01 	st.w	r0, 344[r6]
    __asm__ volatile(
  7f0a3c:	70 07 01 00 	st.w	r0, 0[r16]
    return vq->used->idx != vq->last_used_idx;
  7f0a40:	26 6f 09 00 	ld.w	8[r6], r13
  7f0a44:	e6 5f 15 00 	ld.hu	20[r6], r11
  7f0a48:	2d 57 02 00 	ld.h	2[r13], r10
  7f0a4c:	ca 00       	zxh	r10
        if (!virtq_used_has_buf(vq)) {
  7f0a4e:	eb 51       	cmp	r11, r10
  7f0a50:	e2 07 2f 01 	be	7f0b7e <_virtio_console_receive+0x190>
  7f0a54:	06 50       	mov	r6, r10
  7f0a56:	06 48       	mov	r6, r9
  7f0a58:	00 8a       	mov	0, r17
  7f0a5a:	2d 67 02 00 	ld.h	2[r13], r12
  7f0a5e:	cc 00       	zxh	r12
        while (virtq_used_has_buf(vq))
  7f0a60:	eb 61       	cmp	r11, r12
  7f0a62:	92 6d       	be	7f0b34 <_virtio_console_receive+0x146>
    assert(vq->desc_num_free < VIRTQ_SIZE);
  7f0a64:	20 96 ff 03 	movea	1023, r0, r18
    if (console->rx_buffer_pos >= VIRTIO_CONSOLE_RX_CONSOLE_SIZE - VIRTIO_CONSOLE_RX_BUFFER_SIZE) {
  7f0a68:	20 3e bf 00 	movea	191, r0, r7
        for (int i = console->rx_buffer_pos; i < VIRTIO_CONSOLE_RX_BUFFER_SIZE - 1 && console->rx_buffer_pos < VIRTIO_CONSOLE_RX_CONSOLE_SIZE; i++) {
  7f0a6c:	20 46 3e 00 	movea	62, r0, r8
  7f0a70:	06 7e 3f 00 	addi	63, r6, r15
    return vq->used->idx != vq->last_used_idx;
  7f0a74:	2d 67 02 00 	ld.h	2[r13], r12
  7f0a78:	cc 00       	zxh	r12
    return vq->avail->ring[vq->avail_last_idx++ % VIRTQ_SIZE];
}

static inline uint16_t virtq_get_used_buf_id(struct virtq *vq)
{
    assert(virtq_used_has_buf(vq));
  7f0a7a:	eb 61       	cmp	r11, r12
  7f0a7c:	e2 07 af 01 	be	7f0c2a <_virtio_console_receive+0x23c>
    return vq->used->ring[vq->last_used_idx++ % VIRTQ_SIZE].id;
  7f0a80:	cb 76 ff 03 	andi	1023, r11, r14
  7f0a84:	41 5a       	add	1, r11
  7f0a86:	c3 72       	shl	3, r14
    return &vq->desc[id % VIRTQ_SIZE];
  7f0a88:	2a 67 01 00 	ld.w	0[r10], r12
    return vq->used->ring[vq->last_used_idx++ % VIRTQ_SIZE].id;
  7f0a8c:	ce 69       	add	r14, r13
    assert(vq->desc_num_free < VIRTQ_SIZE);
  7f0a8e:	ea 77 11 00 	ld.hu	16[r10], r14
    return vq->used->ring[vq->last_used_idx++ % VIRTQ_SIZE].id;
  7f0a92:	2d 6f 05 00 	ld.w	4[r13], r13
  7f0a96:	6a 5f 14 00 	st.h	r11, 20[r10]
    return &vq->desc[id % VIRTQ_SIZE];
  7f0a9a:	cd 5e ff 03 	andi	1023, r13, r11
    return vq->used->ring[vq->last_used_idx++ % VIRTQ_SIZE].id;
  7f0a9e:	cd 00       	zxh	r13
    return &vq->desc[id % VIRTQ_SIZE];
  7f0aa0:	c4 5a       	shl	4, r11
  7f0aa2:	cb 61       	add	r11, r12
    assert(vq->desc_num_free < VIRTQ_SIZE);
  7f0aa4:	f2 71       	cmp	r18, r14
  7f0aa6:	eb 07 6b 01 	bh	7f0c10 <_virtio_console_receive+0x222>
    virtq_get_desc_by_id(vq, id)->next = vq->desc_next_free;
  7f0aaa:	ea 5f 0f 00 	ld.hu	14[r10], r11
    vq->desc_num_free++;
  7f0aae:	41 72       	add	1, r14
    virtq_get_desc_by_id(vq, id)->next = vq->desc_next_free;
  7f0ab0:	6c 5f 0e 00 	st.h	r11, 14[r12]
            if (vq_id == VIRTIO_CONSOLE_RX_VQ_IDX) {
  7f0ab4:	60 8a       	cmp	0, r17
    vq->desc_next_free = id;
  7f0ab6:	6a 6f 0e 00 	st.h	r13, 14[r10]
    vq->desc_num_free++;
  7f0aba:	6a 77 10 00 	st.h	r14, 16[r10]
  7f0abe:	82 75       	be	7f0b9e <_virtio_console_receive+0x1b0>
            if(!virtio_memory_pool_free(&vq->pool, (char*)desc->addr, desc->len)) {
  7f0ac0:	ac 07 09 e0 	ld.dw	0[r12], r28
  7f0ac4:	00 00 
 * @param size Size of the memory to free
 * @return Returns true if the memory was successfully freed, false otherwise
 */
static inline bool virtio_memory_pool_free(struct virtio_memory_pool* pool, char* ptr, unsigned long size) {
    /** Check if the pointer is within the pool */
    if (ptr < pool->base || ptr >= pool->base + pool->size) {
  7f0ac6:	2a 77 19 00 	ld.w	24[r10], r14
  7f0aca:	2c 6f 09 00 	ld.w	8[r12], r13
  7f0ace:	a3 07 0f e0 	st.dw	r28, 0[sp]
  7f0ad2:	00 00 
  7f0ad4:	23 5f 01 00 	ld.w	0[sp], r11
  7f0ad8:	ee 59       	cmp	r14, r11
  7f0ada:	e1 07 29 01 	bl	7f0c02 <_virtio_console_receive+0x214>
  7f0ade:	2a 9f 1d 00 	ld.w	28[r10], r19
  7f0ae2:	0e 60       	mov	r14, r12
  7f0ae4:	d3 61       	add	r19, r12
  7f0ae6:	ec 59       	cmp	r12, r11
  7f0ae8:	e9 07 1b 01 	bnl	7f0c02 <_virtio_console_receive+0x214>
        return false;
    }

    /** Check if the size is within the pool */
    if (size > pool->size) {
  7f0aec:	f3 69       	cmp	r19, r13
  7f0aee:	eb 07 15 01 	bh	7f0c02 <_virtio_console_receive+0x214>
        return false;
    }

    /** Calculate the offset */
    unsigned long offset = ptr - pool->base;
  7f0af2:	ae 59       	sub	r14, r11

    /** Check if the offset is within the pool */
    if (offset < 0 || offset >= pool->size) {
  7f0af4:	eb 99       	cmp	r11, r19
    unsigned long offset = ptr - pool->base;
  7f0af6:	0b 60       	mov	r11, r12
    if (offset < 0 || offset >= pool->size) {
  7f0af8:	e3 07 0b 01 	bnh	7f0c02 <_virtio_console_receive+0x214>
        return false;
    }

    /** Free the memory */
    for (unsigned long i = 0; i < size; i++) {
  7f0afc:	60 6a       	cmp	0, r13
  7f0afe:	a2 15       	be	7f0b22 <_virtio_console_receive+0x134>
        pool->base[offset + i] = 0;
  7f0b00:	23 5f 01 00 	ld.w	0[sp], r11
    for (unsigned long i = 0; i < size; i++) {
  7f0b04:	61 6a       	cmp	1, r13
        pool->base[offset + i] = 0;
  7f0b06:	4b 07 00 00 	st.b	r0, 0[r11]
    for (unsigned long i = 0; i < size; i++) {
  7f0b0a:	c2 0d       	be	7f0b22 <_virtio_console_receive+0x134>
  7f0b0c:	0c 5e 01 00 	addi	1, r12, r11
  7f0b10:	cc 69       	add	r12, r13
        pool->base[offset + i] = 0;
  7f0b12:	2a 67 19 00 	ld.w	24[r10], r12
  7f0b16:	cb 61       	add	r11, r12
    for (unsigned long i = 0; i < size; i++) {
  7f0b18:	41 5a       	add	1, r11
  7f0b1a:	ed 59       	cmp	r13, r11
        pool->base[offset + i] = 0;
  7f0b1c:	4c 07 00 00 	st.b	r0, 0[r12]
    for (unsigned long i = 0; i < size; i++) {
  7f0b20:	9a fd       	bne	7f0b12 <_virtio_console_receive+0x124>
    return vq->used->idx != vq->last_used_idx;
  7f0b22:	2a 6f 09 00 	ld.w	8[r10], r13
  7f0b26:	ea 5f 15 00 	ld.hu	20[r10], r11
  7f0b2a:	2d 67 02 00 	ld.h	2[r13], r12
  7f0b2e:	cc 00       	zxh	r12
        while (virtq_used_has_buf(vq))
  7f0b30:	eb 61       	cmp	r11, r12
  7f0b32:	9a a5       	bne	7f0a74 <_virtio_console_receive+0x86>
    for (int vq_id = 0; vq_id < VIRTIO_CONSOLE_NUM_VQS; vq_id++)
  7f0b34:	61 8a       	cmp	1, r17
  7f0b36:	da 25       	bne	7f0b80 <_virtio_console_receive+0x192>
    __asm__ volatile(
  7f0b38:	f0 07 78 9b 	ldl.w	[r16], r19
  7f0b3c:	e0 99       	cmp	r0, r19
  7f0b3e:	ea 05       	bne	7f0b4a <_virtio_console_receive+0x15c>
  7f0b40:	01 9a       	mov	1, r19
  7f0b42:	f0 07 7a 9b 	stc.w	r19, [r16]
  7f0b46:	e0 99       	cmp	r0, r19
  7f0b48:	ca 05       	bne	7f0b50 <_virtio_console_receive+0x162>
  7f0b4a:	e0 0f 20 01 	snooze	
  7f0b4e:	d5 f5       	br	7f0b38 <_virtio_console_receive+0x14a>
    if (console->rx_buffer_pos < VIRTIO_CONSOLE_RX_CONSOLE_SIZE - 1) {
  7f0b50:	26 57 59 01 	ld.w	344[r6], r10
  7f0b54:	20 5e fe 00 	movea	254, r0, r11
  7f0b58:	eb 51       	cmp	r11, r10
  7f0b5a:	8b 55       	bh	7f0bfa <_virtio_console_receive+0x20c>
        console->rx_buffer[console->rx_buffer_pos] = '\0';
  7f0b5c:	06 58       	mov	r6, r11
  7f0b5e:	ca 59       	add	r10, r11
        console->rx_buffer_pos++;
  7f0b60:	41 52       	add	1, r10
        console->rx_buffer[console->rx_buffer_pos] = '\0';
  7f0b62:	4b 07 58 00 	st.b	r0, 88[r11]
        console->rx_buffer_pos++;
  7f0b66:	66 57 59 01 	st.w	r10, 344[r6]
    __asm__ volatile(
  7f0b6a:	70 07 01 00 	st.w	r0, 0[r16]
    return console->rx_buffer_pos > 1;
  7f0b6e:	26 57 59 01 	ld.w	344[r6], r10
  7f0b72:	61 52       	cmp	1, r10
  7f0b74:	eb 57 00 00 	setf	h, r10
}
  7f0b78:	48 1a       	add	8, sp
  7f0b7a:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp
  7f0b7e:	06 48       	mov	r6, r9
  7f0b80:	29 6f 2d 00 	ld.w	44[r9], r13
    for (int vq_id = 0; vq_id < VIRTIO_CONSOLE_NUM_VQS; vq_id++)
  7f0b84:	09 4e 24 00 	addi	36, r9, r9
  7f0b88:	09 50       	mov	r9, r10
  7f0b8a:	2d 67 02 00 	ld.h	2[r13], r12
  7f0b8e:	e9 5f 15 00 	ld.hu	20[r9], r11
  7f0b92:	cc 00       	zxh	r12
        if (!virtq_used_has_buf(vq)) {
  7f0b94:	ec 59       	cmp	r12, r11
  7f0b96:	92 d5       	be	7f0b38 <_virtio_console_receive+0x14a>
  7f0b98:	01 8a       	mov	1, r17
  7f0b9a:	bf 07 c0 fe 	jr	7f0a5a <_virtio_console_receive+0x6c>
                char* msg = (char*)desc->addr;
  7f0b9e:	ac 07 09 e0 	ld.dw	0[r12], r28
  7f0ba2:	00 00 
  7f0ba4:	a3 07 0f e0 	st.dw	r28, 0[sp]
  7f0ba8:	00 00 
    __asm__ volatile(
  7f0baa:	f0 07 78 9b 	ldl.w	[r16], r19
  7f0bae:	e0 99       	cmp	r0, r19
  7f0bb0:	ea 05       	bne	7f0bbc <_virtio_console_receive+0x1ce>
  7f0bb2:	01 9a       	mov	1, r19
  7f0bb4:	f0 07 7a 9b 	stc.w	r19, [r16]
  7f0bb8:	e0 99       	cmp	r0, r19
  7f0bba:	ca 05       	bne	7f0bc2 <_virtio_console_receive+0x1d4>
  7f0bbc:	e0 0f 20 01 	snooze	
  7f0bc0:	d5 f5       	br	7f0baa <_virtio_console_receive+0x1bc>
    if (console->rx_buffer_pos >= VIRTIO_CONSOLE_RX_CONSOLE_SIZE - VIRTIO_CONSOLE_RX_BUFFER_SIZE) {
  7f0bc2:	26 9f 59 01 	ld.w	344[r6], r19
  7f0bc6:	e7 99       	cmp	r7, r19
  7f0bc8:	9b 1d       	bh	7f0bfa <_virtio_console_receive+0x20c>
        for (int i = console->rx_buffer_pos; i < VIRTIO_CONSOLE_RX_BUFFER_SIZE - 1 && console->rx_buffer_pos < VIRTIO_CONSOLE_RX_CONSOLE_SIZE; i++) {
  7f0bca:	e8 99       	cmp	r8, r19
  7f0bcc:	ff 0d       	bgt	7f0bea <_virtio_console_receive+0x1fc>
  7f0bce:	23 77 01 00 	ld.w	0[sp], r14
  7f0bd2:	06 58       	mov	r6, r11
  7f0bd4:	d3 59       	add	r19, r11
  7f0bd6:	a6 71       	sub	r6, r14
            console->rx_buffer[i] = data[i];
  7f0bd8:	0e 68       	mov	r14, r13
  7f0bda:	cb 69       	add	r11, r13
        for (int i = console->rx_buffer_pos; i < VIRTIO_CONSOLE_RX_BUFFER_SIZE - 1 && console->rx_buffer_pos < VIRTIO_CONSOLE_RX_CONSOLE_SIZE; i++) {
  7f0bdc:	41 5a       	add	1, r11
            console->rx_buffer[i] = data[i];
  7f0bde:	0d 6f 00 00 	ld.b	0[r13], r13
        for (int i = console->rx_buffer_pos; i < VIRTIO_CONSOLE_RX_BUFFER_SIZE - 1 && console->rx_buffer_pos < VIRTIO_CONSOLE_RX_CONSOLE_SIZE; i++) {
  7f0be2:	ef 59       	cmp	r15, r11
            console->rx_buffer[i] = data[i];
  7f0be4:	4b 6f 57 00 	st.b	r13, 87[r11]
        for (int i = console->rx_buffer_pos; i < VIRTIO_CONSOLE_RX_BUFFER_SIZE - 1 && console->rx_buffer_pos < VIRTIO_CONSOLE_RX_CONSOLE_SIZE; i++) {
  7f0be8:	8a fd       	bne	7f0bd8 <_virtio_console_receive+0x1ea>
        console->rx_buffer_pos += VIRTIO_CONSOLE_RX_BUFFER_SIZE - 1;
  7f0bea:	13 9e 3f 00 	addi	63, r19, r19
  7f0bee:	66 9f 59 01 	st.w	r19, 344[r6]
    __asm__ volatile(
  7f0bf2:	70 07 01 00 	st.w	r0, 0[r16]
    return success;
  7f0bf6:	bf 07 ca fe 	jr	7f0ac0 <_virtio_console_receive+0xd2>
  7f0bfa:	70 07 01 00 	st.w	r0, 0[r16]
    return success;
  7f0bfe:	bf 07 12 fe 	jr	7f0a10 <_virtio_console_receive+0x22>
                printf("Failed to free memory from the memory pool\n");
  7f0c02:	26 06 24 45 	mov	0x7f4524, r6
  7f0c06:	7f 00 
  7f0c08:	80 ff 50 04 	jarl	7f1058 <_puts>, lp
                return false;
  7f0c0c:	bf 07 04 fe 	jr	7f0a10 <_virtio_console_receive+0x22>
    assert(vq->desc_num_free < VIRTQ_SIZE);
  7f0c10:	29 06 05 45 	mov	0x7f4505, r9
  7f0c14:	7f 00 
  7f0c16:	28 06 7b 45 	mov	0x7f457b, r8
  7f0c1a:	7f 00 
  7f0c1c:	20 3e cf 00 	movea	207, r0, r7
  7f0c20:	26 06 93 44 	mov	0x7f4493, r6
  7f0c24:	7f 00 
  7f0c26:	80 ff da 0d 	jarl	7f1a00 <___assert_func>, lp
    assert(virtq_used_has_buf(vq));
  7f0c2a:	29 06 ee 44 	mov	0x7f44ee, r9
  7f0c2e:	7f 00 
  7f0c30:	28 06 8f 45 	mov	0x7f458f, r8
  7f0c34:	7f 00 
  7f0c36:	20 3e 58 01 	movea	344, r0, r7
  7f0c3a:	26 06 93 44 	mov	0x7f4493, r6
  7f0c3e:	7f 00 
  7f0c40:	80 ff c0 0d 	jarl	7f1a00 <___assert_func>, lp

007f0c44 <_virtio_console_rx_get_buffer>:

char* virtio_console_rx_get_buffer(struct virtio_console *console)
{
    return console->rx_buffer;
}
  7f0c44:	06 56 58 00 	addi	88, r6, r10
  7f0c48:	7f 00       	jmp	[lp]

007f0c4a <_virtio_console_rx_print_buffer>:

void virtio_console_rx_print_buffer(struct virtio_console *console)
{
  7f0c4a:	80 07 61 00 	prepare	{r29, lp}, 0
    spin_lock(&console->rx_lock);
  7f0c4e:	06 ee 5c 01 	addi	348, r6, r29
{
  7f0c52:	58 1a       	add	-8, sp
    __asm__ volatile(
  7f0c54:	fd 07 78 9b 	ldl.w	[r29], r19
  7f0c58:	e0 99       	cmp	r0, r19
  7f0c5a:	ea 05       	bne	7f0c66 <_virtio_console_rx_print_buffer+0x1c>
  7f0c5c:	01 9a       	mov	1, r19
  7f0c5e:	fd 07 7a 9b 	stc.w	r19, [r29]
  7f0c62:	e0 99       	cmp	r0, r19
  7f0c64:	ca 05       	bne	7f0c6c <_virtio_console_rx_print_buffer+0x22>
  7f0c66:	e0 0f 20 01 	snooze	
  7f0c6a:	d5 f5       	br	7f0c54 <_virtio_console_rx_print_buffer+0xa>
    printf("Received message on the VirtIO console: %s\n", console->rx_buffer);
  7f0c6c:	2a 06 4f 45 	mov	0x7f454f, r10
  7f0c70:	7f 00 
  7f0c72:	06 36 58 00 	addi	88, r6, r6
  7f0c76:	63 37 05 00 	st.w	r6, 4[sp]
  7f0c7a:	63 57 01 00 	st.w	r10, 0[sp]
  7f0c7e:	80 ff 28 04 	jarl	7f10a6 <_printf>, lp
    __asm__ volatile(
  7f0c82:	7d 07 01 00 	st.w	r0, 0[r29]
    spin_unlock(&console->rx_lock);
  7f0c86:	48 1a       	add	8, sp
  7f0c88:	40 06 7f 00 	dispose	0, {r29, lp}, lp

007f0c8c <_uart_init>:

static struct renesas_rlin3 *uart = (void*)PLAT_UART_ADDR;

static struct rh850_u2a16_OSTMn* timer = (void*)PLAT_OSTM0_BASE;

void uart_init(){
  7f0c8c:	80 07 21 00 	prepare	{lp}, 0
    renesas_rlin3_init(uart);
  7f0c90:	26 06 00 c1 	mov	0xffc7c100, r6
  7f0c94:	c7 ff 
  7f0c96:	80 ff b6 00 	jarl	7f0d4c <_renesas_rlin3_init>, lp
}
  7f0c9a:	40 06 3f 00 	dispose	0, {lp}, lp

007f0c9e <_uart_putc>:

void uart_putc(char c) {
  7f0c9e:	06 38       	mov	r6, r7
  7f0ca0:	80 07 61 00 	prepare	{r29, lp}, 0
  7f0ca4:	a7 00       	sxb	r7
    if (c == '\n') {
        // Considering compatibility, we manually add another one '\r'
        renesas_rlin3_putc(uart, c);
  7f0ca6:	26 06 00 c1 	mov	0xffc7c100, r6
  7f0caa:	c7 ff 
    if (c == '\n') {
  7f0cac:	6a 3a       	cmp	10, r7
  7f0cae:	d2 05       	be	7f0cb8 <_uart_putc+0x1a>
        renesas_rlin3_putc(uart, '\r');
    } else {
        renesas_rlin3_putc(uart, c);
  7f0cb0:	80 ff 02 01 	jarl	7f0db2 <_renesas_rlin3_putc>, lp
    }
}
  7f0cb4:	40 06 7f 00 	dispose	0, {r29, lp}, lp
        renesas_rlin3_putc(uart, c);
  7f0cb8:	3d 06 b2 0d 	mov	0x7f0db2, r29
  7f0cbc:	7f 00 
  7f0cbe:	fd c7 60 f9 	jarl	[r29], lp
        renesas_rlin3_putc(uart, '\r');
  7f0cc2:	0d 3a       	mov	13, r7
  7f0cc4:	26 06 00 c1 	mov	0xffc7c100, r6
  7f0cc8:	c7 ff 
  7f0cca:	fd c7 60 f9 	jarl	[r29], lp
}
  7f0cce:	40 06 7f 00 	dispose	0, {r29, lp}, lp

007f0cd2 <_uart_getchar>:

char uart_getchar(void) {
  7f0cd2:	80 07 21 00 	prepare	{lp}, 0
    return renesas_rlin3_getc(uart);
  7f0cd6:	26 06 00 c1 	mov	0xffc7c100, r6
  7f0cda:	c7 ff 
  7f0cdc:	80 ff ec 00 	jarl	7f0dc8 <_renesas_rlin3_getc>, lp
}
  7f0ce0:	40 06 3f 00 	dispose	0, {lp}, lp

007f0ce4 <_uart_enable_rxirq>:

void uart_enable_rxirq() {
  7f0ce4:	80 07 21 00 	prepare	{lp}, 0
    renesas_rlin3_enable_rxirq(uart);
  7f0ce8:	26 06 00 c1 	mov	0xffc7c100, r6
  7f0cec:	c7 ff 
  7f0cee:	80 ff fa 00 	jarl	7f0de8 <_renesas_rlin3_enable_rxirq>, lp
}
  7f0cf2:	40 06 3f 00 	dispose	0, {lp}, lp

007f0cf6 <_uart_clear_rxirq>:

void uart_clear_rxirq() {
  7f0cf6:	80 07 21 00 	prepare	{lp}, 0
    renesas_rlin3_clear_rxirq(uart);
  7f0cfa:	26 06 00 c1 	mov	0xffc7c100, r6
  7f0cfe:	c7 ff 
  7f0d00:	80 ff ea 00 	jarl	7f0dea <_renesas_rlin3_clear_rxirq>, lp
}
  7f0d04:	40 06 3f 00 	dispose	0, {lp}, lp

007f0d08 <_timer_enable>:

void timer_enable() {
  7f0d08:	80 07 21 00 	prepare	{lp}, 0
    rh850_u2a16_OSTMn_enable(timer);
  7f0d0c:	40 36 bf ff 	movhi	-65, r0, r6
  7f0d10:	80 ff dc 00 	jarl	7f0dec <_rh850_u2a16_OSTMn_enable>, lp
}
  7f0d14:	40 06 3f 00 	dispose	0, {lp}, lp

007f0d18 <_timer_get>:

uint64_t timer_get() {
  7f0d18:	80 07 21 00 	prepare	{lp}, 0
    return rh850_u2a16_OSTMn_get(timer);
  7f0d1c:	40 36 bf ff 	movhi	-65, r0, r6
  7f0d20:	80 ff 04 01 	jarl	7f0e24 <_rh850_u2a16_OSTMn_get>, lp
}
  7f0d24:	40 06 3f 00 	dispose	0, {lp}, lp

007f0d28 <_timer_set>:

void timer_set(uint64_t n) {
  7f0d28:	80 07 21 00 	prepare	{lp}, 0
  7f0d2c:	58 1a       	add	-8, sp
  7f0d2e:	a3 07 0f 30 	st.dw	r6, 0[sp]
  7f0d32:	00 00 
  7f0d34:	a3 07 09 50 	ld.dw	0[sp], r10
  7f0d38:	00 00 
    rh850_u2a16_OSTMn_set(timer, n);
  7f0d3a:	40 36 bf ff 	movhi	-65, r0, r6
  7f0d3e:	0b 40       	mov	r11, r8
  7f0d40:	0a 38       	mov	r10, r7
  7f0d42:	80 ff ea 00 	jarl	7f0e2c <_rh850_u2a16_OSTMn_set>, lp
}
  7f0d46:	48 1a       	add	8, sp
  7f0d48:	40 06 3f 00 	dispose	0, {lp}, lp

007f0d4c <_renesas_rlin3_init>:
volatile unsigned int uart_rxcnt = 0;
spinlock_t rx_lock = SPINLOCK_INITVAL;

void renesas_rlin3_init(struct renesas_rlin3* uart)
{
    *((volatile uint32_t*) MSRKCPROT) = KCPROT_ENABLE;
  7f0d4c:	2a 06 10 17 	mov	0xff981710, r10
  7f0d50:	98 ff 
  7f0d52:	2b 06 01 a5 	mov	0xa5a5a501, r11
  7f0d56:	a5 a5 
  7f0d58:	6a 5f 01 00 	st.w	r11, 0[r10]
    *((volatile uint32_t*) MSR_RLIN3) = 0;
  7f0d5c:	2b 06 60 10 	mov	0xff981060, r11
  7f0d60:	98 ff 
  7f0d62:	6b 07 01 00 	st.w	r0, 0[r11]
    *((volatile uint32_t*) MSRKCPROT) = KCPROT_DISABLE;
  7f0d66:	2b 06 00 a5 	mov	0xa5a5a500, r11
  7f0d6a:	a5 a5 
  7f0d6c:	6a 5f 01 00 	st.w	r11, 0[r10]

    // Set reset mode
    uart->RLN3nLCUC = 0;
  7f0d70:	46 07 0e 00 	st.b	r0, 14[r6]

    while ((uart->RLN3nLMST & RLIN3_LMST_OMM0_MSK) != 0x0) {
  7f0d74:	06 57 11 00 	ld.b	17[r6], r10
  7f0d78:	ca 56 01 00 	andi	1, r10, r10
  7f0d7c:	60 52       	cmp	0, r10
  7f0d7e:	ba fd       	bne	7f0d74 <_renesas_rlin3_init+0x28>
    }

    // Set baud rate to 500000 assuming CLK_RLIN = 80 MHz
    uart->RLN3nLWBR = 0; // prescaler reset;
  7f0d80:	46 07 01 00 	st.b	r0, 1[r6]
    uart->RLN3nLWBR = RLIN3_LWBR_LPRS_16 | RLIN3_LWBR_NSPB_10;
  7f0d84:	20 56 98 ff 	movea	-104, r0, r10
  7f0d88:	46 57 01 00 	st.b	r10, 1[r6]
        RLN3_LBFC_USBLS_1B |
        RLN3_LBFC_UPS_DIS;

 
    // Set uart mode
    uart->RLN3nLMD = RLN3_LMD_UART_MODE; 
  7f0d8c:	01 52       	mov	1, r10
    uart->RLN3nLBRP01 = 0;
  7f0d8e:	66 07 02 00 	st.h	r0, 2[r6]
    uart->RLN3nLBFC = 
  7f0d92:	46 07 09 00 	st.b	r0, 9[r6]
    uart->RLN3nLMD = RLN3_LMD_UART_MODE; 
  7f0d96:	46 57 08 00 	st.b	r10, 8[r6]
    uart->RLN3nLCUC = RLN3_LCUC_LIN_CANC;
  7f0d9a:	46 57 0e 00 	st.b	r10, 14[r6]

    while ((uart->RLN3nLMST & RLIN3_LMST_OMM0_MSK) != 0x1) {
  7f0d9e:	06 57 11 00 	ld.b	17[r6], r10
  7f0da2:	ca 56 01 00 	andi	1, r10, r10
  7f0da6:	60 52       	cmp	0, r10
  7f0da8:	b2 fd       	be	7f0d9e <_renesas_rlin3_init+0x52>
    }

    // Enable reception and transmission
    uart->RLN3nLUOER = RLN3_LUOER_UROE | RLN3_LUOER_UTOE;
  7f0daa:	03 52       	mov	3, r10
  7f0dac:	46 57 20 00 	st.b	r10, 32[r6]
}
  7f0db0:	7f 00       	jmp	[lp]

007f0db2 <_renesas_rlin3_putc>:

void renesas_rlin3_putc(struct renesas_rlin3* uart, int8_t c)
{
  7f0db2:	a7 00       	sxb	r7
    while (uart->RLN3nLST & RLN3_LST_UTS_MSK);
  7f0db4:	06 57 12 00 	ld.b	18[r6], r10
  7f0db8:	ca 56 10 00 	andi	16, r10, r10
  7f0dbc:	60 52       	cmp	0, r10
  7f0dbe:	ba fd       	bne	7f0db4 <_renesas_rlin3_putc+0x2>
    uart->RLN3nLUTDR = c;
  7f0dc0:	c7 00       	zxh	r7
  7f0dc2:	66 3f 24 00 	st.h	r7, 36[r6]
}
  7f0dc6:	7f 00       	jmp	[lp]

007f0dc8 <_renesas_rlin3_getc>:

uint32_t renesas_rlin3_getc(struct renesas_rlin3* uart)
{
    while(!uart_rxcnt);
  7f0dc8:	2b 06 84 25 	mov	0xfe102584, r11
  7f0dcc:	10 fe 
  7f0dce:	2b 57 01 00 	ld.w	0[r11], r10
  7f0dd2:	60 52       	cmp	0, r10
  7f0dd4:	d2 fd       	be	7f0dce <_renesas_rlin3_getc+0x6>

    uart_rxcnt--;
  7f0dd6:	2b 57 01 00 	ld.w	0[r11], r10
  7f0dda:	5f 52       	add	-1, r10
  7f0ddc:	6b 57 01 00 	st.w	r10, 0[r11]

    return uart->RLN3nLURDR;
  7f0de0:	26 57 26 00 	ld.h	38[r6], r10
}
  7f0de4:	ca 00       	zxh	r10
  7f0de6:	7f 00       	jmp	[lp]

007f0de8 <_renesas_rlin3_enable_rxirq>:

void renesas_rlin3_enable_rxirq(struct renesas_rlin3 *uart)
{
    // Enabled by default ?
}
  7f0de8:	7f 00       	jmp	[lp]

007f0dea <_renesas_rlin3_clear_rxirq>:

void renesas_rlin3_clear_rxirq(struct renesas_rlin3 *uart)
  7f0dea:	7f 00       	jmp	[lp]

007f0dec <_rh850_u2a16_OSTMn_enable>:
#include <rh850-u2a16_ostm.h>

void rh850_u2a16_OSTMn_enable(struct rh850_u2a16_OSTMn* timer) {
    timer->OSTMnCTL |= (0b00000010); // Set to Free-run compare mode
  7f0dec:	06 57 20 00 	ld.b	32[r6], r10
    timer->OSTMnCTL &= (0b11111110); // Disable interrupts when counting starts, we don't need it
    timer->OSTMnCTL &= (0b11111011); // Set OSTMnMD2 to 0, it will reset CNT to 0x0 when start.

    // Enable interrupt
    timer->OSTMnCTL |= (0b10000000);
  7f0df0:	20 5e 80 ff 	movea	-128, r0, r11
    timer->OSTMnCTL |= (0b00000010); // Set to Free-run compare mode
  7f0df4:	8a 00       	zxb	r10
  7f0df6:	8a 56 02 00 	ori	2, r10, r10
  7f0dfa:	46 57 20 00 	st.b	r10, 32[r6]
    timer->OSTMnCTL &= (0b11111110); // Disable interrupts when counting starts, we don't need it
  7f0dfe:	06 57 20 00 	ld.b	32[r6], r10
  7f0e02:	ca 56 fe 00 	andi	254, r10, r10
  7f0e06:	46 57 20 00 	st.b	r10, 32[r6]
    timer->OSTMnCTL &= (0b11111011); // Set OSTMnMD2 to 0, it will reset CNT to 0x0 when start.
  7f0e0a:	06 57 20 00 	ld.b	32[r6], r10
  7f0e0e:	ca 56 fb 00 	andi	251, r10, r10
  7f0e12:	46 57 20 00 	st.b	r10, 32[r6]
    timer->OSTMnCTL |= (0b10000000);
  7f0e16:	06 57 20 00 	ld.b	32[r6], r10
  7f0e1a:	0b 51       	or	r11, r10
  7f0e1c:	8a 00       	zxb	r10
  7f0e1e:	46 57 20 00 	st.b	r10, 32[r6]
}
  7f0e22:	7f 00       	jmp	[lp]

007f0e24 <_rh850_u2a16_OSTMn_get>:

uint64_t rh850_u2a16_OSTMn_get(struct rh850_u2a16_OSTMn* timer) {
    return timer->OSTMnCNT;
  7f0e24:	26 57 05 00 	ld.w	4[r6], r10
}
  7f0e28:	00 5a       	mov	0, r11
  7f0e2a:	7f 00       	jmp	[lp]

007f0e2c <_rh850_u2a16_OSTMn_set>:

void rh850_u2a16_OSTMn_set(struct rh850_u2a16_OSTMn* timer, uint64_t n) {
    // Stop
    timer->OSTMnTT = 0x01;
  7f0e2c:	01 52       	mov	1, r10
  7f0e2e:	46 57 18 00 	st.b	r10, 24[r6]
    // Reset CMP, CNT will reset to 0
    timer->OSTMnCMP = n;
  7f0e32:	66 3f 01 00 	st.w	r7, 0[r6]
    // Start
    timer->OSTMnTS |= (0x01);
  7f0e36:	06 57 14 00 	ld.b	20[r6], r10
  7f0e3a:	8a 00       	zxb	r10
  7f0e3c:	8a 56 01 00 	ori	1, r10, r10
  7f0e40:	46 57 14 00 	st.b	r10, 20[r6]
}
  7f0e44:	7f 00       	jmp	[lp]

007f0e46 <_arch_init>:

static inline void ei(){
    asm volatile("ei\n\t");
}

void arch_init(){
  7f0e46:	80 07 21 00 	prepare	{lp}, 0
    static volatile uint32_t *const BOOTCTRL = (void*) PLAT_BOOTCTRL_ADDR;
    *BOOTCTRL = ~0UL;
  7f0e4a:	1f 5a       	mov	-1, r11
  7f0e4c:	2a 06 00 20 	mov	0xfffb2000, r10
  7f0e50:	fb ff 
  7f0e52:	6a 5f 01 00 	st.w	r11, 0[r10]
    intc_init();
  7f0e56:	80 ff 34 01 	jarl	7f0f8a <_intc_init>, lp
    timer_enable();
  7f0e5a:	bf ff ae fe 	jarl	7f0d08 <_timer_enable>, lp
    asm volatile("ei\n\t");
  7f0e5e:	e0 87 60 01 	ei	
    ei();
}
  7f0e62:	40 06 3f 00 	dispose	0, {lp}, lp

007f0e66 <_intc_set_pend>:
#define EIBD_SET_PEID(reg, value) ((reg) = ((reg) & ~EIBD_PEID_MASK) | ((value) & EIBD_PEID_MASK))
#define EIBD_GET_PEID(reg)        ((reg) & EIBD_PEID_MASK)

void intc_set_pend(unsigned long int_id, bool en)
{
    if (int_id < PRIVATE_IRQS_NUM) {
  7f0e66:	20 56 1f 00 	movea	31, r0, r10
{
  7f0e6a:	87 00       	zxb	r7
    if (int_id < PRIVATE_IRQS_NUM) {
  7f0e6c:	ea 31       	cmp	r10, r6
  7f0e6e:	ab 15       	bh	7f0e92 <_intc_set_pend+0x2c>
        if (en) {
            EIC_SET_EIRFn(intc1_hw->EIC[int_id]);
  7f0e70:	2a 06 18 00 	mov	0xfe100018, r10
  7f0e74:	10 fe 
  7f0e76:	c6 31       	add	r6, r6
            EIC_CLR_EIRFn(intc1_hw->EIC[int_id]);
        }
    } else {
        unsigned long intc2_irq_id = int_id - PRIVATE_IRQS_NUM;
        if (en) {
            EIC_SET_EIRFn(intc2_hw->EIC[intc2_irq_id]);
  7f0e78:	2a 57 01 00 	ld.w	0[r10], r10
  7f0e7c:	c6 51       	add	r6, r10
  7f0e7e:	2a 5f 00 00 	ld.h	0[r10], r11
        if (en) {
  7f0e82:	60 3a       	cmp	0, r7
  7f0e84:	a2 15       	be	7f0ea8 <_intc_set_pend+0x42>
            EIC_SET_EIRFn(intc2_hw->EIC[intc2_irq_id]);
  7f0e86:	cb 00       	zxh	r11
  7f0e88:	8b 5e 00 10 	ori	4096, r11, r11
  7f0e8c:	6a 5f 00 00 	st.h	r11, 0[r10]
  7f0e90:	7f 00       	jmp	[lp]
  7f0e92:	2a 06 14 00 	mov	0xfe100014, r10
  7f0e96:	10 fe 
  7f0e98:	c6 31       	add	r6, r6
  7f0e9a:	2a 57 01 00 	ld.w	0[r10], r10
  7f0e9e:	c6 51       	add	r6, r10
  7f0ea0:	2a 5f 00 00 	ld.h	0[r10], r11
        if (en) {
  7f0ea4:	60 3a       	cmp	0, r7
  7f0ea6:	8a f5       	bne	7f0e86 <_intc_set_pend+0x20>
        } else {
            EIC_CLR_EIRFn(intc2_hw->EIC[intc2_irq_id]);
  7f0ea8:	cb 5e ff ef 	andi	61439, r11, r11
  7f0eac:	6a 5f 00 00 	st.h	r11, 0[r10]
        }
    }
}
  7f0eb0:	7f 00       	jmp	[lp]

007f0eb2 <_intc_get_pend>:

bool intc_get_pend(unsigned long int_id)
{
    unsigned int pend = 0;
    if (int_id < PRIVATE_IRQS_NUM) {
  7f0eb2:	20 56 1f 00 	movea	31, r0, r10
  7f0eb6:	ea 31       	cmp	r10, r6
  7f0eb8:	eb 0d       	bh	7f0ed4 <_intc_get_pend+0x22>
        pend = EIC_GET_EIRFn(intc1_hw->EIC[int_id]);
  7f0eba:	c6 31       	add	r6, r6
  7f0ebc:	2a 06 18 00 	mov	0xfe100018, r10
  7f0ec0:	10 fe 

    } else {
        unsigned long intc2_irq_id = int_id - PRIVATE_IRQS_NUM;
        pend = EIC_GET_EIRFn(intc2_hw->EIC[intc2_irq_id]);
  7f0ec2:	2a 57 01 00 	ld.w	0[r10], r10
  7f0ec6:	c6 51       	add	r6, r10
  7f0ec8:	2a 57 00 00 	ld.h	0[r10], r10
  7f0ecc:	8c 52       	shr	12, r10
  7f0ece:	ca 56 01 00 	andi	1, r10, r10
    }

    return !!pend;
}
  7f0ed2:	7f 00       	jmp	[lp]
        pend = EIC_GET_EIRFn(intc2_hw->EIC[intc2_irq_id]);
  7f0ed4:	c6 31       	add	r6, r6
  7f0ed6:	2a 06 14 00 	mov	0xfe100014, r10
  7f0eda:	10 fe 
  7f0edc:	b5 f5       	br	7f0ec2 <_intc_get_pend+0x10>

007f0ede <_intc_set_trgt>:

void intc_set_trgt(unsigned long int_id, unsigned long cpu_id)
{
    if (int_id >= PRIVATE_IRQS_NUM) {
  7f0ede:	20 56 1f 00 	movea	31, r0, r10
  7f0ee2:	ea 31       	cmp	r10, r6
  7f0ee4:	93 15       	bnh	7f0f06 <_intc_set_trgt+0x28>
        unsigned long intc2_irq_id = int_id - PRIVATE_IRQS_NUM;
        EIBD_SET_PEID(intc2_hw->EIBD[intc2_irq_id], cpu_id);
  7f0ee6:	2a 06 14 00 	mov	0xfe100014, r10
  7f0eea:	10 fe 
  7f0eec:	c2 32       	shl	2, r6
  7f0eee:	2a 5f 01 00 	ld.w	0[r10], r11
  7f0ef2:	18 62       	mov	-8, r12
  7f0ef4:	c7 3e 07 00 	andi	7, r7, r7
  7f0ef8:	c6 59       	add	r6, r11
  7f0efa:	2b 57 01 20 	ld.w	8192[r11], r10
  7f0efe:	4c 51       	and	r12, r10
  7f0f00:	07 51       	or	r7, r10
  7f0f02:	6b 57 01 20 	st.w	r10, 8192[r11]
    }
}
  7f0f06:	7f 00       	jmp	[lp]

007f0f08 <_intc_set_enable>:

void intc_set_enable(unsigned long int_id, bool en)
{
    if (int_id < PRIVATE_IRQS_NUM) {
  7f0f08:	20 56 1f 00 	movea	31, r0, r10
{
  7f0f0c:	87 00       	zxb	r7
    if (int_id < PRIVATE_IRQS_NUM) {
  7f0f0e:	ea 31       	cmp	r10, r6
  7f0f10:	9b 15       	bh	7f0f32 <_intc_set_enable+0x2a>
        if (en) {
            EIC_CLR_EIMKn(intc1_hw->EIC[int_id]);
  7f0f12:	2a 06 18 00 	mov	0xfe100018, r10
  7f0f16:	10 fe 
  7f0f18:	c6 31       	add	r6, r6
            EIC_SET_EIMKn(intc1_hw->EIC[int_id]);
        }
    } else {
        unsigned long intc2_irq_id = int_id - PRIVATE_IRQS_NUM;
        if (en) {
            EIC_CLR_EIMKn(intc2_hw->EIC[intc2_irq_id]);
  7f0f1a:	2a 57 01 00 	ld.w	0[r10], r10
  7f0f1e:	c6 51       	add	r6, r10
  7f0f20:	2a 5f 00 00 	ld.h	0[r10], r11
        if (en) {
  7f0f24:	60 3a       	cmp	0, r7
  7f0f26:	92 15       	be	7f0f48 <_intc_set_enable+0x40>
            EIC_CLR_EIMKn(intc2_hw->EIC[intc2_irq_id]);
  7f0f28:	cb 5e 7f ff 	andi	65407, r11, r11
  7f0f2c:	6a 5f 00 00 	st.h	r11, 0[r10]
  7f0f30:	7f 00       	jmp	[lp]
  7f0f32:	2a 06 14 00 	mov	0xfe100014, r10
  7f0f36:	10 fe 
  7f0f38:	c6 31       	add	r6, r6
  7f0f3a:	2a 57 01 00 	ld.w	0[r10], r10
  7f0f3e:	c6 51       	add	r6, r10
  7f0f40:	2a 5f 00 00 	ld.h	0[r10], r11
        if (en) {
  7f0f44:	60 3a       	cmp	0, r7
  7f0f46:	9a f5       	bne	7f0f28 <_intc_set_enable+0x20>
        } else {
            EIC_SET_EIMKn(intc2_hw->EIC[intc2_irq_id]);
  7f0f48:	cb 00       	zxh	r11
  7f0f4a:	8b 5e 80 00 	ori	128, r11, r11
  7f0f4e:	6a 5f 00 00 	st.h	r11, 0[r10]
        }
    }
}
  7f0f52:	7f 00       	jmp	[lp]

007f0f54 <_intc_set_prio>:

void intc_set_prio(unsigned long int_id, unsigned long prio)
{
    if (int_id < PRIVATE_IRQS_NUM) {
  7f0f54:	20 56 1f 00 	movea	31, r0, r10
        EIC_SET_EIPn(intc1_hw->EIC[int_id], prio);
  7f0f58:	c7 3e 0f 00 	andi	15, r7, r7
    if (int_id < PRIVATE_IRQS_NUM) {
  7f0f5c:	ea 31       	cmp	r10, r6
  7f0f5e:	9b 15       	bh	7f0f80 <_intc_set_prio+0x2c>
        EIC_SET_EIPn(intc1_hw->EIC[int_id], prio);
  7f0f60:	c6 31       	add	r6, r6
  7f0f62:	2a 06 18 00 	mov	0xfe100018, r10
  7f0f66:	10 fe 
  7f0f68:	2a 5f 01 00 	ld.w	0[r10], r11
    } else {
        unsigned long intc2_irq_id = int_id - PRIVATE_IRQS_NUM;
        EIC_SET_EIPn(intc2_hw->EIC[intc2_irq_id], prio);
  7f0f6c:	10 62       	mov	-16, r12
  7f0f6e:	c6 59       	add	r6, r11
  7f0f70:	2b 57 00 00 	ld.h	0[r11], r10
  7f0f74:	ca 00       	zxh	r10
  7f0f76:	4c 51       	and	r12, r10
  7f0f78:	0a 39       	or	r10, r7
  7f0f7a:	6b 3f 00 00 	st.h	r7, 0[r11]
    }
}
  7f0f7e:	7f 00       	jmp	[lp]
        EIC_SET_EIPn(intc2_hw->EIC[intc2_irq_id], prio);
  7f0f80:	c6 31       	add	r6, r6
  7f0f82:	2a 06 14 00 	mov	0xfe100014, r10
  7f0f86:	10 fe 
  7f0f88:	85 f5       	br	7f0f68 <_intc_set_prio+0x14>

007f0f8a <_intc_init>:

void intc_init()
{

}
  7f0f8a:	7f 00       	jmp	[lp]

007f0f8c <_irq_enable>:
    struct ipir_pe_set pe[4];
};

static volatile struct ipir_hw* ipir = (void*)PLAT_IPIR_BASE;

void irq_enable(unsigned id) {
  7f0f8c:	80 07 61 00 	prepare	{r29, lp}, 0
    intc_set_enable(id, true);
  7f0f90:	01 3a       	mov	1, r7
void irq_enable(unsigned id) {
  7f0f92:	06 e8       	mov	r6, r29
    intc_set_enable(id, true);
  7f0f94:	bf ff 74 ff 	jarl	7f0f08 <_intc_set_enable>, lp
}

static inline unsigned long get_peid(void)
{
    unsigned long val;
    __asm__ volatile ("stsr 0, %0, 2" : "=r"(val));
  7f0f98:	e0 3f 40 10 	stsr	<invalid s-reg number>, r7, 2
    intc_set_trgt(id, get_cpuid());
  7f0f9c:	1d 30       	mov	r29, r6
  7f0f9e:	bf ff 40 ff 	jarl	7f0ede <_intc_set_trgt>, lp
    if (id == IPI_IRQ_ID) {
  7f0fa2:	60 ea       	cmp	0, r29
  7f0fa4:	fa 05       	bne	7f0fb2 <_irq_enable+0x26>
        ipir->self[IPI_IRQ_ID].IPInEN = (uint8_t)0xFU;
  7f0fa6:	2a 06 00 90 	mov	0xfffb9000, r10
  7f0faa:	fb ff 
  7f0fac:	0f 5a       	mov	15, r11
  7f0fae:	4a 5f 00 00 	st.b	r11, 0[r10]
    }
}
  7f0fb2:	40 06 7f 00 	dispose	0, {r29, lp}, lp

007f0fb6 <_irq_set_prio>:

void irq_set_prio(unsigned id, unsigned prio) {
  7f0fb6:	80 07 21 00 	prepare	{lp}, 0
    intc_set_prio(id, prio);
  7f0fba:	bf ff 9a ff 	jarl	7f0f54 <_intc_set_prio>, lp
}
  7f0fbe:	40 06 3f 00 	dispose	0, {lp}, lp

007f0fc2 <_irq_send_ipi>:

void irq_send_ipi(unsigned long target_cpu_mask) {
    ipir->self[IPI_IRQ_ID].IPInREQ = target_cpu_mask;
  7f0fc2:	86 00       	zxb	r6
  7f0fc4:	2a 06 00 90 	mov	0xfffb9000, r10
  7f0fc8:	fb ff 
  7f0fca:	4a 37 10 00 	st.b	r6, 16[r10]
}
  7f0fce:	7f 00       	jmp	[lp]

007f0fd0 <_irq_clear_ipi>:

void irq_clear_ipi(void) {
    uint8_t src_cpu = ipir->self[IPI_IRQ_ID].IPInFLG;
  7f0fd0:	2a 06 00 90 	mov	0xfffb9000, r10
  7f0fd4:	fb ff 
  7f0fd6:	0a 5f 04 00 	ld.b	4[r10], r11
    ipir->self[IPI_IRQ_ID].IPInFCLR = src_cpu;
  7f0fda:	4a 5f 08 00 	st.b	r11, 8[r10]
}
  7f0fde:	7f 00       	jmp	[lp]

007f0fe0 <_print_uint>:
        uart_putc(*str);
        str++;
    }
}

static void print_uint(unsigned int num, int base) {
  7f0fe0:	80 07 e1 10 	prepare	{r27 - r29, lp}, 0
  7f0fe4:	50 1a       	add	-16, sp
    char buffer[12];
    int i = 0;
    
    if (num == 0) {
  7f0fe6:	60 32       	cmp	0, r6
  7f0fe8:	82 35       	be	7f1048 <_print_uint+0x68>
  7f0fea:	03 e6 04 00 	addi	4, sp, r28
    int i = 0;
  7f0fee:	00 ea       	mov	0, r29
        uart_putc('0');
        return;
    }
    
    while (num > 0) {
        unsigned int digit = num % base;
  7f0ff0:	1c 58       	mov	r28, r11
  7f0ff2:	a5 0d       	br	7f1006 <_print_uint+0x26>
        if (digit < 10) {
            buffer[i] = '0' + digit;
  7f0ff4:	ce 56 ff 00 	andi	255, r14, r10
        } else {
            buffer[i] = 'a' + (digit - 10);
        }
        i++;
  7f0ff8:	41 ea       	add	1, r29
  7f0ffa:	4b 57 00 00 	st.b	r10, 0[r11]
    while (num > 0) {
  7f0ffe:	41 5a       	add	1, r11
  7f1000:	e7 31       	cmp	r7, r6
  7f1002:	c1 15       	bl	7f102a <_print_uint+0x4a>
        num /= base;
  7f1004:	0d 30       	mov	r13, r6
            buffer[i] = 'a' + (digit - 10);
  7f1006:	06 68       	mov	r6, r13
  7f1008:	e7 6f fe 62 	divqu	r7, r13, r12
            buffer[i] = '0' + digit;
  7f100c:	cc 56 ff 00 	andi	255, r12, r10
  7f1010:	0a 76 30 00 	addi	48, r10, r14
            buffer[i] = 'a' + (digit - 10);
  7f1014:	0a 56 57 00 	addi	87, r10, r10
        if (digit < 10) {
  7f1018:	69 62       	cmp	9, r12
  7f101a:	d3 ed       	bnh	7f0ff4 <_print_uint+0x14>
            buffer[i] = 'a' + (digit - 10);
  7f101c:	8a 00       	zxb	r10
        i++;
  7f101e:	41 ea       	add	1, r29
  7f1020:	4b 57 00 00 	st.b	r10, 0[r11]
    while (num > 0) {
  7f1024:	41 5a       	add	1, r11
  7f1026:	e7 31       	cmp	r7, r6
  7f1028:	e9 ed       	bnl	7f1004 <_print_uint+0x24>
  7f102a:	dc e9       	add	r28, r29
  7f102c:	3b 06 9e 0c 	mov	0x7f0c9e, r27
  7f1030:	7f 00 
    }
    
    while (i > 0) {
        i--;
        uart_putc(buffer[i]);
  7f1032:	1d 37 ff ff 	ld.b	-1[r29], r6
    while (i > 0) {
  7f1036:	5f ea       	add	-1, r29
        uart_putc(buffer[i]);
  7f1038:	fb c7 60 f9 	jarl	[r27], lp
    while (i > 0) {
  7f103c:	fd e1       	cmp	r29, r28
  7f103e:	aa fd       	bne	7f1032 <_print_uint+0x52>
    }
}
  7f1040:	03 1e 10 00 	addi	16, sp, sp
  7f1044:	40 06 ff 10 	dispose	0, {r27 - r29, lp}, lp
        uart_putc('0');
  7f1048:	20 36 30 00 	movea	48, r0, r6
  7f104c:	bf ff 52 fc 	jarl	7f0c9e <_uart_putc>, lp
}
  7f1050:	03 1e 10 00 	addi	16, sp, sp
  7f1054:	40 06 ff 10 	dispose	0, {r27 - r29, lp}, lp

007f1058 <_puts>:
int puts(const char *str) {
  7f1058:	80 07 e1 10 	prepare	{r27 - r29, lp}, 0
  7f105c:	06 e0       	mov	r6, r28
    while (*str != '\0') {
  7f105e:	06 37 00 00 	ld.b	0[r6], r6
  7f1062:	60 32       	cmp	0, r6
  7f1064:	f2 15       	be	7f1092 <_puts+0x3a>
    int count = 0;
  7f1066:	00 ea       	mov	0, r29
  7f1068:	3b 06 9e 0c 	mov	0x7f0c9e, r27
  7f106c:	7f 00 
        uart_putc(*str);
  7f106e:	fb c7 60 f9 	jarl	[r27], lp
        count++;
  7f1072:	1d 50       	mov	r29, r10
    while (*str != '\0') {
  7f1074:	1c 58       	mov	r28, r11
        count++;
  7f1076:	41 ea       	add	1, r29
    while (*str != '\0') {
  7f1078:	dd 59       	add	r29, r11
  7f107a:	0b 37 00 00 	ld.b	0[r11], r6
  7f107e:	60 32       	cmp	0, r6
  7f1080:	fa f5       	bne	7f106e <_puts+0x16>
    uart_putc('\n');
  7f1082:	0a 32       	mov	10, r6
    count++;
  7f1084:	0a ee 02 00 	addi	2, r10, r29
    uart_putc('\n');
  7f1088:	fb c7 60 f9 	jarl	[r27], lp
}
  7f108c:	1d 50       	mov	r29, r10
  7f108e:	40 06 ff 10 	dispose	0, {r27 - r29, lp}, lp
  7f1092:	3b 06 9e 0c 	mov	0x7f0c9e, r27
  7f1096:	7f 00 
    uart_putc('\n');
  7f1098:	0a 32       	mov	10, r6
    while (*str != '\0') {
  7f109a:	01 ea       	mov	1, r29
    uart_putc('\n');
  7f109c:	fb c7 60 f9 	jarl	[r27], lp
}
  7f10a0:	1d 50       	mov	r29, r10
  7f10a2:	40 06 ff 10 	dispose	0, {r27 - r29, lp}, lp

007f10a6 <_printf>:
int printf(const char *format, ...) {
  7f10a6:	03 1e d0 ff 	addi	-48, sp, sp
  7f10aa:	63 e7 05 00 	st.w	r28, 4[sp]
  7f10ae:	63 ef 01 00 	st.w	r29, 0[sp]
  7f10b2:	63 ff 2d 00 	st.w	lp, 44[sp]
  7f10b6:	63 17 29 00 	st.w	r2, 40[sp]
  7f10ba:	63 a7 25 00 	st.w	r20, 36[sp]
  7f10be:	63 af 21 00 	st.w	r21, 32[sp]
  7f10c2:	63 b7 1d 00 	st.w	r22, 28[sp]
  7f10c6:	63 bf 19 00 	st.w	r23, 24[sp]
  7f10ca:	63 c7 15 00 	st.w	r24, 20[sp]
  7f10ce:	63 cf 11 00 	st.w	r25, 16[sp]
  7f10d2:	63 d7 0d 00 	st.w	r26, 12[sp]
  7f10d6:	63 df 09 00 	st.w	r27, 8[sp]
  7f10da:	03 1e e8 ff 	addi	-24, sp, sp
    int chars_written = 0;
  7f10de:	00 ea       	mov	0, r29
    while (*format) {
  7f10e0:	23 e7 49 00 	ld.w	72[sp], r28
  7f10e4:	1c 37 00 00 	ld.b	0[r28], r6
  7f10e8:	60 32       	cmp	0, r6
  7f10ea:	92 45       	be	7f116c <_printf+0xc6>
    char *args = (char *)&format + sizeof(char *);
  7f10ec:	03 d6 4c 00 	addi	76, sp, r26
        if (*format != '%') {
  7f10f0:	20 de 25 00 	movea	37, r0, r27
            switch (*format) {
  7f10f4:	20 ce 14 00 	movea	20, r0, r25
  7f10f8:	37 06 b0 11 	mov	0x7f11b0, r23
  7f10fc:	7f 00 
            uart_putc(*format);
  7f10fe:	38 06 9e 0c 	mov	0x7f0c9e, r24
  7f1102:	7f 00 
  7f1104:	e5 0d       	br	7f1120 <_printf+0x7a>
  7f1106:	f8 c7 60 f9 	jarl	[r24], lp
        format++;
  7f110a:	23 af 49 00 	ld.w	72[sp], r21
            chars_written++;
  7f110e:	41 ea       	add	1, r29
        format++;
  7f1110:	15 e6 01 00 	addi	1, r21, r28
    while (*format) {
  7f1114:	15 37 01 00 	ld.b	1[r21], r6
        format++;
  7f1118:	63 e7 49 00 	st.w	r28, 72[sp]
    while (*format) {
  7f111c:	60 32       	cmp	0, r6
  7f111e:	f2 25       	be	7f116c <_printf+0xc6>
        if (*format != '%') {
  7f1120:	fb 31       	cmp	r27, r6
  7f1122:	aa f5       	bne	7f1106 <_printf+0x60>
            format++;
  7f1124:	1c ae 01 00 	addi	1, r28, r21
            switch (*format) {
  7f1128:	1c 57 01 00 	ld.b	1[r28], r10
  7f112c:	fb 51       	cmp	r27, r10
            format++;
  7f112e:	63 af 49 00 	st.w	r21, 72[sp]
            switch (*format) {
  7f1132:	e2 07 ab 01 	be	7f12dc <_printf+0x236>
  7f1136:	0a 56 9c ff 	addi	-100, r10, r10
  7f113a:	ca 5e ff 00 	andi	255, r10, r11
  7f113e:	f9 59       	cmp	r25, r11
  7f1140:	bb 05       	bh	7f1146 <_printf+0xa0>
  7f1142:	f9 51       	cmp	r25, r10
  7f1144:	83 35       	bnh	7f11a4 <_printf+0xfe>
                    uart_putc('%');
  7f1146:	20 36 25 00 	movea	37, r0, r6
  7f114a:	34 06 9e 0c 	mov	0x7f0c9e, r20
  7f114e:	7f 00 
  7f1150:	f4 c7 60 f9 	jarl	[r20], lp
                    chars_written += 2;
  7f1154:	42 ea       	add	2, r29
                    uart_putc(*format);
  7f1156:	1c 37 01 00 	ld.b	1[r28], r6
        format++;
  7f115a:	42 e2       	add	2, r28
                    uart_putc(*format);
  7f115c:	f4 c7 60 f9 	jarl	[r20], lp
    while (*format) {
  7f1160:	15 37 01 00 	ld.b	1[r21], r6
        format++;
  7f1164:	63 e7 49 00 	st.w	r28, 72[sp]
    while (*format) {
  7f1168:	60 32       	cmp	0, r6
  7f116a:	ba dd       	bne	7f1120 <_printf+0x7a>
}
  7f116c:	23 ff 45 00 	ld.w	68[sp], lp
  7f1170:	23 17 41 00 	ld.w	64[sp], r2
  7f1174:	23 a7 3d 00 	ld.w	60[sp], r20
  7f1178:	23 af 39 00 	ld.w	56[sp], r21
  7f117c:	23 b7 35 00 	ld.w	52[sp], r22
  7f1180:	23 bf 31 00 	ld.w	48[sp], r23
  7f1184:	23 c7 2d 00 	ld.w	44[sp], r24
  7f1188:	23 cf 29 00 	ld.w	40[sp], r25
  7f118c:	23 d7 25 00 	ld.w	36[sp], r26
  7f1190:	23 df 21 00 	ld.w	32[sp], r27
  7f1194:	23 e7 1d 00 	ld.w	28[sp], r28
  7f1198:	1d 50       	mov	r29, r10
  7f119a:	23 ef 19 00 	ld.w	24[sp], r29
  7f119e:	03 1e 48 00 	addi	72, sp, sp
  7f11a2:	7f 00       	jmp	[lp]
            switch (*format) {
  7f11a4:	c2 52       	shl	2, r10
  7f11a6:	d7 51       	add	r23, r10
  7f11a8:	2a 57 01 00 	ld.w	0[r10], r10
  7f11ac:	d7 51       	add	r23, r10
  7f11ae:	6a 00       	jmp	[r10]
  7f11b0:	06 01       	or	r6, r0
  7f11b2:	00 00       	nop	
  7f11b4:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11b8:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11bc:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11c0:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11c4:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11c8:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11cc:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11d0:	de 00       	zxh	ep
  7f11d2:	00 00       	nop	
  7f11d4:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11d8:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11dc:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11e0:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11e4:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11e8:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11ec:	90 00       	zxb	r16
  7f11ee:	00 00       	nop	
  7f11f0:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11f4:	70 00       	jmp	[r16]
  7f11f6:	00 00       	nop	
  7f11f8:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f11fc:	96 ff ff ff 	ld.bu	-2[r22], lp
  7f1200:	54 00       	switch	r20
  7f1202:	00 00       	nop	
                    unsigned int num = *(unsigned int *)args;
  7f1204:	3a b7 01 00 	ld.w	0[r26], r22
                    print_uint(num, 16);
  7f1208:	20 3e 10 00 	movea	16, r0, r7
                    args += sizeof(unsigned int);
  7f120c:	44 d2       	add	4, r26
                    print_uint(num, 16);
  7f120e:	16 30       	mov	r22, r6
  7f1210:	bf ff d0 fd 	jarl	7f0fe0 <_print_uint>, lp
                        temp >>= 4;
  7f1214:	84 b2       	shr	4, r22
                        chars_written++;
  7f1216:	41 ea       	add	1, r29
                    } while (temp);
  7f1218:	60 b2       	cmp	0, r22
  7f121a:	da fd       	bne	7f1214 <_printf+0x16e>
        format++;
  7f121c:	42 e2       	add	2, r28
  7f121e:	95 a5       	br	7f1160 <_printf+0xba>
                    unsigned int num = *(unsigned int *)args;
  7f1220:	3a b7 01 00 	ld.w	0[r26], r22
                    print_uint(num, 10);
  7f1224:	0a 3a       	mov	10, r7
                    args += sizeof(unsigned int);
  7f1226:	44 d2       	add	4, r26
                    print_uint(num, 10);
  7f1228:	16 30       	mov	r22, r6
  7f122a:	bf ff b6 fd 	jarl	7f0fe0 <_print_uint>, lp
                        temp /= 10;
  7f122e:	0a 52       	mov	10, r10
                        chars_written++;
  7f1230:	16 58       	mov	r22, r11
  7f1232:	41 ea       	add	1, r29
                        temp /= 10;
  7f1234:	ea b7 fe 62 	divqu	r10, r22, r12
                    } while (temp);
  7f1238:	69 5a       	cmp	9, r11
  7f123a:	bb fd       	bh	7f1230 <_printf+0x18a>
        format++;
  7f123c:	42 e2       	add	2, r28
  7f123e:	95 95       	br	7f1160 <_printf+0xba>
                    const char *str = *(const char **)args;
  7f1240:	3a b7 01 00 	ld.w	0[r26], r22
                    args += sizeof(char *);
  7f1244:	44 d2       	add	4, r26
                    if (str == 0) {
  7f1246:	60 b2       	cmp	0, r22
  7f1248:	a2 55       	be	7f12ec <_printf+0x246>
    while (*str) {
  7f124a:	16 37 00 00 	ld.b	0[r22], r6
        format++;
  7f124e:	42 e2       	add	2, r28
    while (*str) {
  7f1250:	60 32       	cmp	0, r6
  7f1252:	f2 07 c3 fe 	be	7f1114 <_printf+0x6e>
        format++;
  7f1256:	16 10       	mov	r22, r2
  7f1258:	34 06 9e 0c 	mov	0x7f0c9e, r20
  7f125c:	7f 00 
        uart_putc(*str);
  7f125e:	f4 c7 60 f9 	jarl	[r20], lp
        str++;
  7f1262:	41 12       	add	1, r2
    while (*str) {
  7f1264:	02 37 00 00 	ld.b	0[r2], r6
  7f1268:	60 32       	cmp	0, r6
  7f126a:	aa fd       	bne	7f125e <_printf+0x1b8>
                    while (*p) {
  7f126c:	16 5f 00 00 	ld.b	0[r22], r11
                    const char *p = str;
  7f1270:	16 50       	mov	r22, r10
                    while (*p) {
  7f1272:	60 5a       	cmp	0, r11
  7f1274:	f2 07 a1 fe 	be	7f1114 <_printf+0x6e>
                        p++;
  7f1278:	0a 60       	mov	r10, r12
  7f127a:	41 52       	add	1, r10
                    while (*p) {
  7f127c:	0a 5f 00 00 	ld.b	0[r10], r11
  7f1280:	60 5a       	cmp	0, r11
  7f1282:	ba fd       	bne	7f1278 <_printf+0x1d2>
  7f1284:	41 ea       	add	1, r29
  7f1286:	b6 e9       	sub	r22, r29
  7f1288:	cc e9       	add	r12, r29
  7f128a:	bf 07 8a fe 	jr	7f1114 <_printf+0x6e>
                    format++;
  7f128e:	1c b6 02 00 	addi	2, r28, r22
                    if (*format == 'x') {
  7f1292:	1c 5f 02 00 	ld.b	2[r28], r11
  7f1296:	20 56 78 00 	movea	120, r0, r10
            chars_written++;
  7f129a:	1d 16 01 00 	addi	1, r29, r2
                    if (*format == 'x') {
  7f129e:	ea 59       	cmp	r10, r11
                    format++;
  7f12a0:	63 b7 49 00 	st.w	r22, 72[sp]
                    if (*format == 'x') {
  7f12a4:	a2 35       	be	7f1308 <_printf+0x262>
                        uart_putc('%');
  7f12a6:	20 36 25 00 	movea	37, r0, r6
  7f12aa:	16 e0       	mov	r22, r28
  7f12ac:	bf ff f2 f9 	jarl	7f0c9e <_uart_putc>, lp
                        chars_written++;
  7f12b0:	02 e8       	mov	r2, r29
  7f12b2:	bf 07 62 fe 	jr	7f1114 <_printf+0x6e>
                    int num = *(int *)args;
  7f12b6:	3a b7 01 00 	ld.w	0[r26], r22
                    args += sizeof(int);
  7f12ba:	44 d2       	add	4, r26
                    if (num < 0) {
  7f12bc:	60 b2       	cmp	0, r22
  7f12be:	e6 1d       	blt	7f12fa <_printf+0x254>
                    print_uint((unsigned int)num, 10);
  7f12c0:	0a 3a       	mov	10, r7
  7f12c2:	16 30       	mov	r22, r6
  7f12c4:	bf ff 1c fd 	jarl	7f0fe0 <_print_uint>, lp
                        temp /= 10;
  7f12c8:	0a 52       	mov	10, r10
                        chars_written++;
  7f12ca:	16 58       	mov	r22, r11
  7f12cc:	41 ea       	add	1, r29
                        temp /= 10;
  7f12ce:	ea b7 fe 62 	divqu	r10, r22, r12
                    } while (temp);
  7f12d2:	69 5a       	cmp	9, r11
  7f12d4:	bb fd       	bh	7f12ca <_printf+0x224>
        format++;
  7f12d6:	42 e2       	add	2, r28
  7f12d8:	bf 07 88 fe 	jr	7f1160 <_printf+0xba>
                    uart_putc('%');
  7f12dc:	20 36 25 00 	movea	37, r0, r6
                    chars_written++;
  7f12e0:	41 ea       	add	1, r29
                    uart_putc('%');
  7f12e2:	bf ff bc f9 	jarl	7f0c9e <_uart_putc>, lp
        format++;
  7f12e6:	42 e2       	add	2, r28
                    break;
  7f12e8:	bf 07 2c fe 	jr	7f1114 <_printf+0x6e>
        format++;
  7f12ec:	42 e2       	add	2, r28
                        str = "(null)";
  7f12ee:	36 06 bc 45 	mov	0x7f45bc, r22
  7f12f2:	7f 00 
        format++;
  7f12f4:	20 36 28 00 	movea	40, r0, r6
  7f12f8:	f5 ad       	br	7f1256 <_printf+0x1b0>
                        uart_putc('-');
  7f12fa:	20 36 2d 00 	movea	45, r0, r6
            chars_written++;
  7f12fe:	41 ea       	add	1, r29
                        uart_putc('-');
  7f1300:	bf ff 9e f9 	jarl	7f0c9e <_uart_putc>, lp
                        num = -num;
  7f1304:	80 b1       	subr	r0, r22
  7f1306:	d5 dd       	br	7f12c0 <_printf+0x21a>
                        unsigned long num = *(unsigned long *)args;
  7f1308:	3a af 01 00 	ld.w	0[r26], r21
                        args += sizeof(unsigned long);
  7f130c:	44 d2       	add	4, r26

static void print_ulong(unsigned long num, int base) {
    char buffer[24];
    int i = 0;
    
    if (num == 0) {
  7f130e:	60 aa       	cmp	0, r21
  7f1310:	b2 2d       	be	7f1366 <_printf+0x2c0>
  7f1312:	15 58       	mov	r21, r11
  7f1314:	03 68       	mov	sp, r13
    int i = 0;
  7f1316:	00 ea       	mov	0, r29
  7f1318:	a5 0d       	br	7f132c <_printf+0x286>
    }
    
    while (num > 0) {
        unsigned long digit = num % base;
        if (digit < 10) {
            buffer[i] = '0' + digit;
  7f131a:	0c 66 30 00 	addi	48, r12, r12
  7f131e:	4d 67 00 00 	st.b	r12, 0[r13]
        } else {
            buffer[i] = 'a' + (digit - 10);
        }
        i++;
        num /= base;
  7f1322:	84 5a       	shr	4, r11
        i++;
  7f1324:	41 ea       	add	1, r29
    while (num > 0) {
  7f1326:	41 6a       	add	1, r13
  7f1328:	60 5a       	cmp	0, r11
  7f132a:	a2 0d       	be	7f133e <_printf+0x298>
        unsigned long digit = num % base;
  7f132c:	cb 76 0f 00 	andi	15, r11, r14
            buffer[i] = '0' + digit;
  7f1330:	ce 66 ff 00 	andi	255, r14, r12
        if (digit < 10) {
  7f1334:	69 72       	cmp	9, r14
  7f1336:	a3 f5       	bnh	7f131a <_printf+0x274>
            buffer[i] = 'a' + (digit - 10);
  7f1338:	0c 66 57 00 	addi	87, r12, r12
  7f133c:	95 f5       	br	7f131e <_printf+0x278>
  7f133e:	c3 e9       	add	sp, r29
  7f1340:	34 06 9e 0c 	mov	0x7f0c9e, r20
  7f1344:	7f 00 
    }
    
    while (i > 0) {
        i--;
        uart_putc(buffer[i]);
  7f1346:	1d 37 ff ff 	ld.b	-1[r29], r6
    while (i > 0) {
  7f134a:	5f ea       	add	-1, r29
        uart_putc(buffer[i]);
  7f134c:	f4 c7 60 f9 	jarl	[r20], lp
    while (i > 0) {
  7f1350:	fd 19       	cmp	r29, sp
  7f1352:	aa fd       	bne	7f1346 <_printf+0x2a0>
  7f1354:	a5 05       	br	7f1358 <_printf+0x2b2>
  7f1356:	41 12       	add	1, r2
                            temp >>= 4;
  7f1358:	84 aa       	shr	4, r21
                            chars_written++;
  7f135a:	02 e8       	mov	r2, r29
                        } while (temp);
  7f135c:	da fd       	bne	7f1356 <_printf+0x2b0>
        format++;
  7f135e:	43 e2       	add	3, r28
  7f1360:	16 a8       	mov	r22, r21
  7f1362:	bf 07 b2 fd 	jr	7f1114 <_printf+0x6e>
        uart_putc('0');
  7f1366:	20 36 30 00 	movea	48, r0, r6
  7f136a:	bf ff 34 f9 	jarl	7f0c9e <_uart_putc>, lp
        return;
  7f136e:	d5 f5       	br	7f1358 <_printf+0x2b2>

007f1370 <_uart_rx_handler>:

#define TIMER_INTERVAL (TIME_S(1))

spinlock_t print_lock = SPINLOCK_INITVAL;

void uart_rx_handler(){
  7f1370:	80 07 21 00 	prepare	{lp}, 0
  7f1374:	50 1a       	add	-16, sp
  7f1376:	e0 57 40 10 	stsr	<invalid s-reg number>, r10, 2
    printf("cpu%d: %s\n",get_cpuid(), __func__);
  7f137a:	2b 06 0d 46 	mov	0x7f460d, r11
  7f137e:	7f 00 
  7f1380:	63 57 05 00 	st.w	r10, 4[sp]
  7f1384:	2a 06 c3 45 	mov	0x7f45c3, r10
  7f1388:	7f 00 
  7f138a:	63 5f 09 00 	st.w	r11, 8[sp]
  7f138e:	63 57 01 00 	st.w	r10, 0[sp]
  7f1392:	bf ff 14 fd 	jarl	7f10a6 <_printf>, lp
    uart_clear_rxirq();
  7f1396:	bf ff 60 f9 	jarl	7f0cf6 <_uart_clear_rxirq>, lp
}
  7f139a:	03 1e 10 00 	addi	16, sp, sp
  7f139e:	40 06 3f 00 	dispose	0, {lp}, lp

007f13a2 <_ipi_handler>:

void ipi_handler(){
  7f13a2:	80 07 21 00 	prepare	{lp}, 0
  7f13a6:	50 1a       	add	-16, sp
    irq_clear_ipi();
  7f13a8:	bf ff 28 fc 	jarl	7f0fd0 <_irq_clear_ipi>, lp
  7f13ac:	e0 57 40 10 	stsr	<invalid s-reg number>, r10, 2
    printf("cpu%d: %s\n", get_cpuid(), __func__);
  7f13b0:	2b 06 01 46 	mov	0x7f4601, r11
  7f13b4:	7f 00 
  7f13b6:	63 57 05 00 	st.w	r10, 4[sp]
  7f13ba:	2a 06 c3 45 	mov	0x7f45c3, r10
  7f13be:	7f 00 
  7f13c0:	63 5f 09 00 	st.w	r11, 8[sp]
  7f13c4:	63 57 01 00 	st.w	r10, 0[sp]
  7f13c8:	bf ff de fc 	jarl	7f10a6 <_printf>, lp
  7f13cc:	e0 57 40 10 	stsr	<invalid s-reg number>, r10, 2
    irq_send_ipi(1ull << (get_cpuid() + 1));
  7f13d0:	01 32       	mov	1, r6
  7f13d2:	41 52       	add	1, r10
  7f13d4:	ea 37 c0 00 	shl	r10, r6
  7f13d8:	ca 5e 20 00 	andi	32, r10, r11
  7f13dc:	60 5a       	cmp	0, r11
  7f13de:	e6 07 24 33 	cmov	z, r6, r0, r6
  7f13e2:	bf ff e0 fb 	jarl	7f0fc2 <_irq_send_ipi>, lp
}
  7f13e6:	03 1e 10 00 	addi	16, sp, sp
  7f13ea:	40 06 3f 00 	dispose	0, {lp}, lp

007f13ee <_timer_handler>:

void timer_handler(){
  7f13ee:	80 07 21 00 	prepare	{lp}, 0
  7f13f2:	50 1a       	add	-16, sp
  7f13f4:	e0 57 40 10 	stsr	<invalid s-reg number>, r10, 2
    printf("cpu%d: %s\n", get_cpuid(), __func__);
  7f13f8:	2b 06 f3 45 	mov	0x7f45f3, r11
  7f13fc:	7f 00 
  7f13fe:	63 57 05 00 	st.w	r10, 4[sp]
  7f1402:	2a 06 c3 45 	mov	0x7f45c3, r10
  7f1406:	7f 00 
  7f1408:	63 5f 09 00 	st.w	r11, 8[sp]
  7f140c:	63 57 01 00 	st.w	r10, 0[sp]
  7f1410:	bf ff 96 fc 	jarl	7f10a6 <_printf>, lp
    timer_set(TIMER_INTERVAL);
  7f1414:	26 06 00 b4 	mov	0x4c4b400, r6
  7f1418:	c4 04 
  7f141a:	00 3a       	mov	0, r7
  7f141c:	bf ff 0c f9 	jarl	7f0d28 <_timer_set>, lp
  7f1420:	e0 57 40 10 	stsr	<invalid s-reg number>, r10, 2
    irq_send_ipi(1ull << (get_cpuid() + 1));
  7f1424:	01 32       	mov	1, r6
  7f1426:	41 52       	add	1, r10
  7f1428:	ea 37 c0 00 	shl	r10, r6
  7f142c:	ca 5e 20 00 	andi	32, r10, r11
  7f1430:	60 5a       	cmp	0, r11
  7f1432:	e6 07 24 33 	cmov	z, r6, r0, r6
  7f1436:	bf ff 8c fb 	jarl	7f0fc2 <_irq_send_ipi>, lp
}
  7f143a:	03 1e 10 00 	addi	16, sp, sp
  7f143e:	40 06 3f 00 	dispose	0, {lp}, lp

007f1442 <_spin_lock.constprop___0>:
    __asm__ volatile(
  7f1442:	2a 06 88 25 	mov	0xfe102588, r10
  7f1446:	10 fe 
  7f1448:	ea 07 78 9b 	ldl.w	[r10], r19
  7f144c:	e0 99       	cmp	r0, r19
  7f144e:	ea 05       	bne	7f145a <_spin_lock.constprop___0+0x18>
  7f1450:	01 9a       	mov	1, r19
  7f1452:	ea 07 7a 9b 	stc.w	r19, [r10]
  7f1456:	e0 99       	cmp	r0, r19
  7f1458:	ca 05       	bne	7f1460 <_spin_lock.constprop___0+0x1e>
  7f145a:	e0 0f 20 01 	snooze	
  7f145e:	d5 f5       	br	7f1448 <_spin_lock.constprop___0+0x6>
}
  7f1460:	7f 00       	jmp	[lp]

007f1462 <_main>:

void main(void){
  7f1462:	80 07 e1 70 	prepare	{r25 - r29, lp}, 0
  7f1466:	58 1a       	add	-8, sp
  7f1468:	e0 57 40 10 	stsr	<invalid s-reg number>, r10, 2

    static volatile bool master_done = false;

    if(cpu_is_master()){
  7f146c:	60 52       	cmp	0, r10
        spin_lock(&print_lock);
  7f146e:	39 06 42 14 	mov	0x7f1442, r25
  7f1472:	7f 00 
    if(cpu_is_master()){
  7f1474:	c2 35       	be	7f14dc <_main+0x7a>
  7f1476:	3a 06 88 25 	mov	0xfe102588, r26
  7f147a:	10 fe 
  7f147c:	3b 06 8c 0f 	mov	0x7f0f8c, r27
  7f1480:	7f 00 
  7f1482:	3c 06 b6 0f 	mov	0x7f0fb6, r28
  7f1486:	7f 00 
  7f1488:	3d 06 8c 25 	mov	0xfe10258c, r29
  7f148c:	10 fe 
        irq_set_prio(TIMER_IRQ_ID, TIMER_IRQ_PRIO);

        master_done = true;
    }

    irq_enable(UART_IRQ_ID);
  7f148e:	20 36 b6 01 	movea	438, r0, r6
  7f1492:	fb c7 60 f9 	jarl	[r27], lp
    irq_set_prio(UART_IRQ_ID, UART_IRQ_PRIO);
  7f1496:	01 3a       	mov	1, r7
  7f1498:	20 36 b6 01 	movea	438, r0, r6
  7f149c:	fc c7 60 f9 	jarl	[r28], lp
    irq_enable(IPI_IRQ_ID);
  7f14a0:	00 32       	mov	0, r6
  7f14a2:	fb c7 60 f9 	jarl	[r27], lp
    irq_set_prio(IPI_IRQ_ID, UART_IRQ_PRIO);
  7f14a6:	01 3a       	mov	1, r7
  7f14a8:	00 32       	mov	0, r6
  7f14aa:	fc c7 60 f9 	jarl	[r28], lp

    while(!master_done);
  7f14ae:	1d 57 00 00 	ld.b	0[r29], r10
  7f14b2:	8a 00       	zxb	r10
  7f14b4:	60 52       	cmp	0, r10
  7f14b6:	c2 fd       	be	7f14ae <_main+0x4c>
    spin_lock(&print_lock);
  7f14b8:	f9 c7 60 f9 	jarl	[r25], lp
  7f14bc:	e0 57 40 10 	stsr	<invalid s-reg number>, r10, 2
    printf("cpu %d up\n", get_cpuid());
  7f14c0:	63 57 05 00 	st.w	r10, 4[sp]
  7f14c4:	2a 06 e8 45 	mov	0x7f45e8, r10
  7f14c8:	7f 00 
  7f14ca:	63 57 01 00 	st.w	r10, 0[sp]
  7f14ce:	bf ff d8 fb 	jarl	7f10a6 <_printf>, lp
    __asm__ volatile(
  7f14d2:	7a 07 01 00 	st.w	r0, 0[r26]
  7f14d6:	e0 0f 20 01 	snooze	
    spin_unlock(&print_lock);

    while(1) wfi();
  7f14da:	e5 fd       	br	7f14d6 <_main+0x74>
        spin_lock(&print_lock);
  7f14dc:	f9 c7 60 f9 	jarl	[r25], lp
  7f14e0:	3a 06 88 25 	mov	0xfe102588, r26
  7f14e4:	10 fe 
        printf("Bao bare-metal test guest\n");
  7f14e6:	26 06 ce 45 	mov	0x7f45ce, r6
  7f14ea:	7f 00 
  7f14ec:	bf ff 6c fb 	jarl	7f1058 <_puts>, lp
  7f14f0:	7a 07 01 00 	st.w	r0, 0[r26]
        irq_set_handler(UART_IRQ_ID, uart_rx_handler);
  7f14f4:	3d 06 00 02 	mov	0x7f0200, r29
  7f14f8:	7f 00 
  7f14fa:	27 06 70 13 	mov	0x7f1370, r7
  7f14fe:	7f 00 
  7f1500:	20 36 b6 01 	movea	438, r0, r6
        irq_enable(TIMER_IRQ_ID);
  7f1504:	3b 06 8c 0f 	mov	0x7f0f8c, r27
  7f1508:	7f 00 
        irq_set_handler(UART_IRQ_ID, uart_rx_handler);
  7f150a:	fd c7 60 f9 	jarl	[r29], lp
        irq_set_prio(TIMER_IRQ_ID, TIMER_IRQ_PRIO);
  7f150e:	3c 06 b6 0f 	mov	0x7f0fb6, r28
  7f1512:	7f 00 
        irq_set_handler(TIMER_IRQ_ID, timer_handler);
  7f1514:	27 06 ee 13 	mov	0x7f13ee, r7
  7f1518:	7f 00 
  7f151a:	20 36 c7 00 	movea	199, r0, r6
  7f151e:	fd c7 60 f9 	jarl	[r29], lp
        irq_set_handler(IPI_IRQ_ID, ipi_handler);
  7f1522:	27 06 a2 13 	mov	0x7f13a2, r7
  7f1526:	7f 00 
  7f1528:	00 32       	mov	0, r6
  7f152a:	fd c7 60 f9 	jarl	[r29], lp
        uart_enable_rxirq();
  7f152e:	bf ff b6 f7 	jarl	7f0ce4 <_uart_enable_rxirq>, lp
        timer_set(TIMER_INTERVAL);
  7f1532:	00 3a       	mov	0, r7
  7f1534:	26 06 00 b4 	mov	0x4c4b400, r6
  7f1538:	c4 04 
  7f153a:	bf ff ee f7 	jarl	7f0d28 <_timer_set>, lp
        master_done = true;
  7f153e:	3d 06 8c 25 	mov	0xfe10258c, r29
  7f1542:	10 fe 
        irq_enable(TIMER_IRQ_ID);
  7f1544:	20 36 c7 00 	movea	199, r0, r6
  7f1548:	fb c7 60 f9 	jarl	[r27], lp
        irq_set_prio(TIMER_IRQ_ID, TIMER_IRQ_PRIO);
  7f154c:	01 3a       	mov	1, r7
  7f154e:	20 36 c7 00 	movea	199, r0, r6
  7f1552:	fc c7 60 f9 	jarl	[r28], lp
        master_done = true;
  7f1556:	01 52       	mov	1, r10
  7f1558:	5d 57 00 00 	st.b	r10, 0[r29]
  7f155c:	95 9d       	br	7f148e <_main+0x2c>
	...

007f1600 <_vector_table>:
  7f1600:	bf 07 00 ea 	jr	7f0000 <_start>
	...
  7f1610:	1f 00       	syncp	
  7f1612:	80 07 00 02 	jr	7f1812 <_handle_exception>
	...
  7f161e:	00 00       	nop	
  7f1620:	80 07 f2 01 	jr	7f1812 <_handle_exception>
	...
  7f1630:	80 07 e2 01 	jr	7f1812 <_handle_exception>
	...
  7f1640:	80 07 d2 01 	jr	7f1812 <_handle_exception>
	...
  7f1650:	80 07 c2 01 	jr	7f1812 <_handle_exception>
	...
  7f1660:	80 07 b2 01 	jr	7f1812 <_handle_exception>
	...
  7f1670:	1f 00       	syncp	
  7f1672:	80 07 a0 01 	jr	7f1812 <_handle_exception>
	...
  7f167e:	00 00       	nop	
  7f1680:	80 07 92 01 	jr	7f1812 <_handle_exception>
	...
  7f1690:	80 07 82 01 	jr	7f1812 <_handle_exception>
	...
  7f16a0:	80 07 72 01 	jr	7f1812 <_handle_exception>
	...
  7f16b0:	80 07 62 01 	jr	7f1812 <_handle_exception>
	...
  7f16c0:	80 07 52 01 	jr	7f1812 <_handle_exception>
	...
  7f16d0:	80 07 42 01 	jr	7f1812 <_handle_exception>
	...
  7f16e0:	1f 00       	syncp	
  7f16e2:	80 07 30 01 	jr	7f1812 <_handle_exception>
	...
  7f16ee:	00 00       	nop	
  7f16f0:	1f 00       	syncp	
  7f16f2:	80 07 20 01 	jr	7f1812 <_handle_exception>
	...
  7f16fe:	00 00       	nop	
  7f1700:	1f 00       	syncp	
  7f1702:	80 07 12 01 	jr	7f1814 <_Interrupt_EI>
	...
  7f170e:	00 00       	nop	
  7f1710:	1f 00       	syncp	
  7f1712:	80 07 02 01 	jr	7f1814 <_Interrupt_EI>
	...
  7f171e:	00 00       	nop	
  7f1720:	1f 00       	syncp	
  7f1722:	80 07 f2 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f172e:	00 00       	nop	
  7f1730:	1f 00       	syncp	
  7f1732:	80 07 e2 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f173e:	00 00       	nop	
  7f1740:	1f 00       	syncp	
  7f1742:	80 07 d2 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f174e:	00 00       	nop	
  7f1750:	1f 00       	syncp	
  7f1752:	80 07 c2 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f175e:	00 00       	nop	
  7f1760:	1f 00       	syncp	
  7f1762:	80 07 b2 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f176e:	00 00       	nop	
  7f1770:	1f 00       	syncp	
  7f1772:	80 07 a2 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f177e:	00 00       	nop	
  7f1780:	1f 00       	syncp	
  7f1782:	80 07 92 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f178e:	00 00       	nop	
  7f1790:	1f 00       	syncp	
  7f1792:	80 07 82 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f179e:	00 00       	nop	
  7f17a0:	1f 00       	syncp	
  7f17a2:	80 07 72 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f17ae:	00 00       	nop	
  7f17b0:	1f 00       	syncp	
  7f17b2:	80 07 62 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f17be:	00 00       	nop	
  7f17c0:	1f 00       	syncp	
  7f17c2:	80 07 52 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f17ce:	00 00       	nop	
  7f17d0:	1f 00       	syncp	
  7f17d2:	80 07 42 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f17de:	00 00       	nop	
  7f17e0:	1f 00       	syncp	
  7f17e2:	80 07 32 00 	jr	7f1814 <_Interrupt_EI>
	...
  7f17ee:	00 00       	nop	
  7f17f0:	1f 00       	syncp	
  7f17f2:	80 07 22 00 	jr	7f1814 <_Interrupt_EI>

007f17f6 <select_xxret>:
  7f17f6:	e5 ff 40 00 	stsr	psw/vmtid, lp, 0
  7f17fa:	df fe 80 00 	andi	128, lp, lp
  7f17fe:	e0 f9       	cmp	r0, lp
  7f1800:	d2 05       	be	7f180a <ei_ret>
  7f1802:	fc ff 40 00 	stsr	eiwr/dpa3u, lp, 0
  7f1806:	e0 07 4a 01 	feret	

007f180a <ei_ret>:
  7f180a:	fc ff 40 00 	stsr	eiwr/dpa3u, lp, 0
  7f180e:	e0 07 48 01 	eiret	

007f1812 <_handle_exception>:
  7f1812:	85 05       	br	7f1812 <_handle_exception>

007f1814 <_Interrupt_EI>:
  7f1814:	00 a6 7c 00 	addi	124, r0, r20
  7f1818:	b4 19       	sub	r20, sp
  7f181a:	a3 07 0f 00 	st.dw	r0, 0[sp]
  7f181e:	00 00 
  7f1820:	a3 07 8f 10 	st.dw	r2, 8[sp]
  7f1824:	00 00 
  7f1826:	a3 07 0f 21 	st.dw	gp, 16[sp]
  7f182a:	00 00 
  7f182c:	a3 07 8f 31 	st.dw	r6, 24[sp]
  7f1830:	00 00 
  7f1832:	a3 07 0f 42 	st.dw	r8, 32[sp]
  7f1836:	00 00 
  7f1838:	a3 07 8f 52 	st.dw	r10, 40[sp]
  7f183c:	00 00 
  7f183e:	a3 07 0f 63 	st.dw	r12, 48[sp]
  7f1842:	00 00 
  7f1844:	a3 07 8f 73 	st.dw	r14, 56[sp]
  7f1848:	00 00 
  7f184a:	a3 07 0f 84 	st.dw	r16, 64[sp]
  7f184e:	00 00 
  7f1850:	a3 07 8f 94 	st.dw	r18, 72[sp]
  7f1854:	00 00 
  7f1856:	a3 07 0f a5 	st.dw	r20, 80[sp]
  7f185a:	00 00 
  7f185c:	a3 07 8f b5 	st.dw	r22, 88[sp]
  7f1860:	00 00 
  7f1862:	a3 07 0f c6 	st.dw	r24, 96[sp]
  7f1866:	00 00 
  7f1868:	a3 07 8f d6 	st.dw	r26, 104[sp]
  7f186c:	00 00 
  7f186e:	a3 07 0f e7 	st.dw	r28, 112[sp]
  7f1872:	00 00 
  7f1874:	a3 07 8f f7 	st.dw	ep, 120[sp]
  7f1878:	00 00 
  7f187a:	ed 37 40 00 	stsr	eiic/vdtid/ipa0u, r6, 0
  7f187e:	34 06 ff 07 	mov	0x7ff, r20
  7f1882:	00 00 
  7f1884:	54 31       	and	r20, r6
  7f1886:	bf ff 92 e9 	jarl	7f0218 <_irq_handle>, lp
  7f188a:	a3 07 09 00 	ld.dw	0[sp], r0
  7f188e:	00 00 
  7f1890:	23 17 09 00 	ld.w	8[sp], r2
  7f1894:	a3 07 09 21 	ld.dw	16[sp], gp
  7f1898:	00 00 
  7f189a:	a3 07 89 31 	ld.dw	24[sp], r6
  7f189e:	00 00 
  7f18a0:	a3 07 09 42 	ld.dw	32[sp], r8
  7f18a4:	00 00 
  7f18a6:	a3 07 89 52 	ld.dw	40[sp], r10
  7f18aa:	00 00 
  7f18ac:	a3 07 09 63 	ld.dw	48[sp], r12
  7f18b0:	00 00 
  7f18b2:	a3 07 89 73 	ld.dw	56[sp], r14
  7f18b6:	00 00 
  7f18b8:	a3 07 09 84 	ld.dw	64[sp], r16
  7f18bc:	00 00 
  7f18be:	a3 07 89 94 	ld.dw	72[sp], r18
  7f18c2:	00 00 
  7f18c4:	a3 07 09 a5 	ld.dw	80[sp], r20
  7f18c8:	00 00 
  7f18ca:	a3 07 89 b5 	ld.dw	88[sp], r22
  7f18ce:	00 00 
  7f18d0:	a3 07 09 c6 	ld.dw	96[sp], r24
  7f18d4:	00 00 
  7f18d6:	a3 07 89 d6 	ld.dw	104[sp], r26
  7f18da:	00 00 
  7f18dc:	a3 07 09 e7 	ld.dw	112[sp], r28
  7f18e0:	00 00 
  7f18e2:	a3 07 89 f7 	ld.dw	120[sp], ep
  7f18e6:	00 00 
  7f18e8:	00 a6 7c 00 	addi	124, r0, r20
  7f18ec:	d4 19       	add	r20, sp
  7f18ee:	e0 07 48 01 	eiret	
	...

007f1a00 <___assert_func>:
  7f1a00:	80 07 21 00 	prepare	{lp}, 0
  7f1a04:	24 5f 01 f8 	ld.w	-2048[gp], r11
  7f1a08:	03 1e e8 ff 	addi	-24, sp, sp
  7f1a0c:	06 50       	mov	r6, r10
  7f1a0e:	60 42       	cmp	0, r8
  7f1a10:	2b 37 0d 00 	ld.w	12[r11], r6
  7f1a14:	f2 15       	be	7f1a42 <___assert_func+0x42>
  7f1a16:	2b 06 1d 46 	mov	0x7f461d, r11
  7f1a1a:	7f 00 
  7f1a1c:	63 57 09 00 	st.w	r10, 8[sp]
  7f1a20:	2a 06 2b 46 	mov	0x7f462b, r10
  7f1a24:	7f 00 
  7f1a26:	63 47 15 00 	st.w	r8, 20[sp]
  7f1a2a:	63 5f 11 00 	st.w	r11, 16[sp]
  7f1a2e:	63 3f 0d 00 	st.w	r7, 12[sp]
  7f1a32:	63 4f 05 00 	st.w	r9, 4[sp]
  7f1a36:	63 57 01 00 	st.w	r10, 0[sp]
  7f1a3a:	80 ff 32 00 	jarl	7f1a6c <_fiprintf>, lp
  7f1a3e:	80 ff 5a 17 	jarl	7f3198 <_abort>, lp
  7f1a42:	2b 06 2a 46 	mov	0x7f462a, r11
  7f1a46:	7f 00 
  7f1a48:	0b 40       	mov	r11, r8
  7f1a4a:	95 ed       	br	7f1a1c <___assert_func+0x1c>

007f1a4c <___assert>:
  7f1a4c:	08 48       	mov	r8, r9
  7f1a4e:	80 07 21 00 	prepare	{lp}, 0
  7f1a52:	00 42       	mov	0, r8
  7f1a54:	bf ff ac ff 	jarl	7f1a00 <___assert_func>, lp

007f1a58 <__fiprintf_r>:
  7f1a58:	80 07 21 00 	prepare	{lp}, 0
  7f1a5c:	23 47 05 00 	ld.w	4[sp], r8
  7f1a60:	03 4e 08 00 	addi	8, sp, r9
  7f1a64:	80 ff 24 00 	jarl	7f1a88 <__vfiprintf_r>, lp
  7f1a68:	40 06 3f 00 	dispose	0, {lp}, lp

007f1a6c <_fiprintf>:
  7f1a6c:	80 07 21 00 	prepare	{lp}, 0
  7f1a70:	06 38       	mov	r6, r7
  7f1a72:	23 47 05 00 	ld.w	4[sp], r8
  7f1a76:	24 37 01 f8 	ld.w	-2048[gp], r6
  7f1a7a:	03 4e 08 00 	addi	8, sp, r9
  7f1a7e:	80 ff 0a 00 	jarl	7f1a88 <__vfiprintf_r>, lp
  7f1a82:	40 06 3f 00 	dispose	0, {lp}, lp
	...

007f1a88 <__vfiprintf_r>:
  7f1a88:	03 1e d0 ff 	addi	-48, sp, sp
  7f1a8c:	63 c7 15 00 	st.w	r24, 20[sp]
  7f1a90:	63 cf 11 00 	st.w	r25, 16[sp]
  7f1a94:	63 df 09 00 	st.w	r27, 8[sp]
  7f1a98:	63 e7 05 00 	st.w	r28, 4[sp]
  7f1a9c:	63 ff 2d 00 	st.w	lp, 44[sp]
  7f1aa0:	63 17 29 00 	st.w	r2, 40[sp]
  7f1aa4:	63 a7 25 00 	st.w	r20, 36[sp]
  7f1aa8:	63 af 21 00 	st.w	r21, 32[sp]
  7f1aac:	63 b7 1d 00 	st.w	r22, 28[sp]
  7f1ab0:	63 bf 19 00 	st.w	r23, 24[sp]
  7f1ab4:	63 d7 0d 00 	st.w	r26, 12[sp]
  7f1ab8:	63 ef 01 00 	st.w	r29, 0[sp]
  7f1abc:	03 1e 74 ff 	addi	-140, sp, sp
  7f1ac0:	06 d8       	mov	r6, r27
  7f1ac2:	60 32       	cmp	0, r6
  7f1ac4:	07 e0       	mov	r7, r28
  7f1ac6:	08 c0       	mov	r8, r24
  7f1ac8:	09 c8       	mov	r9, r25
  7f1aca:	f2 05       	be	7f1ad8 <__vfiprintf_r+0x50>
  7f1acc:	26 57 35 00 	ld.w	52[r6], r10
  7f1ad0:	60 52       	cmp	0, r10
  7f1ad2:	ba 05       	bne	7f1ad8 <__vfiprintf_r+0x50>
  7f1ad4:	80 ff 98 0e 	jarl	7f296c <___sinit>, lp
  7f1ad8:	3c 5f 0c 00 	ld.h	12[r28], r11
  7f1adc:	3c 57 65 00 	ld.w	100[r28], r10
  7f1ae0:	cb 66 00 20 	andi	8192, r11, r12
  7f1ae4:	60 62       	cmp	0, r12
  7f1ae6:	da 25       	bne	7f1b30 <__vfiprintf_r+0xa8>
  7f1ae8:	8b 5e 00 20 	ori	8192, r11, r11
  7f1aec:	7c 5f 0c 00 	st.h	r11, 12[r28]
  7f1af0:	20 5e ff df 	movea	-8193, r0, r11
  7f1af4:	4b 51       	and	r11, r10
  7f1af6:	7c 57 65 00 	st.w	r10, 100[r28]
  7f1afa:	3c 57 0c 00 	ld.h	12[r28], r10
  7f1afe:	ca 56 08 00 	andi	8, r10, r10
  7f1b02:	60 52       	cmp	0, r10
  7f1b04:	b2 3d       	be	7f1b7a <__vfiprintf_r+0xf2>
  7f1b06:	3c 57 11 00 	ld.w	16[r28], r10
  7f1b0a:	60 52       	cmp	0, r10
  7f1b0c:	f2 35       	be	7f1b7a <__vfiprintf_r+0xf2>
  7f1b0e:	3c 57 0c 00 	ld.h	12[r28], r10
  7f1b12:	ca 56 1a 00 	andi	26, r10, r10
  7f1b16:	6a 52       	cmp	10, r10
  7f1b18:	8a 3d       	bne	7f1b88 <__vfiprintf_r+0x100>
  7f1b1a:	3c 57 0e 00 	ld.h	14[r28], r10
  7f1b1e:	60 52       	cmp	0, r10
  7f1b20:	c6 35       	blt	7f1b88 <__vfiprintf_r+0x100>
  7f1b22:	19 48       	mov	r25, r9
  7f1b24:	18 40       	mov	r24, r8
  7f1b26:	1c 38       	mov	r28, r7
  7f1b28:	1b 30       	mov	r27, r6
  7f1b2a:	80 ff d6 09 	jarl	7f2500 <___sbprintf>, lp
  7f1b2e:	f5 05       	br	7f1b3c <__vfiprintf_r+0xb4>
  7f1b30:	ad 52       	sar	13, r10
  7f1b32:	ca 56 01 00 	andi	1, r10, r10
  7f1b36:	60 52       	cmp	0, r10
  7f1b38:	92 e5       	be	7f1afa <__vfiprintf_r+0x72>
  7f1b3a:	1f 52       	mov	-1, r10
  7f1b3c:	63 57 05 00 	st.w	r10, 4[sp]
  7f1b40:	23 ff b9 00 	ld.w	184[sp], lp
  7f1b44:	23 57 05 00 	ld.w	4[sp], r10
  7f1b48:	23 17 b5 00 	ld.w	180[sp], r2
  7f1b4c:	23 a7 b1 00 	ld.w	176[sp], r20
  7f1b50:	23 af ad 00 	ld.w	172[sp], r21
  7f1b54:	23 b7 a9 00 	ld.w	168[sp], r22
  7f1b58:	23 bf a5 00 	ld.w	164[sp], r23
  7f1b5c:	23 c7 a1 00 	ld.w	160[sp], r24
  7f1b60:	23 cf 9d 00 	ld.w	156[sp], r25
  7f1b64:	23 d7 99 00 	ld.w	152[sp], r26
  7f1b68:	23 df 95 00 	ld.w	148[sp], r27
  7f1b6c:	23 e7 91 00 	ld.w	144[sp], r28
  7f1b70:	23 ef 8d 00 	ld.w	140[sp], r29
  7f1b74:	03 1e bc 00 	addi	188, sp, sp
  7f1b78:	7f 00       	jmp	[lp]
  7f1b7a:	1c 38       	mov	r28, r7
  7f1b7c:	1b 30       	mov	r27, r6
  7f1b7e:	80 ff 28 13 	jarl	7f2ea6 <___swsetup_r>, lp
  7f1b82:	60 52       	cmp	0, r10
  7f1b84:	d2 c5       	be	7f1b0e <__vfiprintf_r+0x86>
  7f1b86:	a5 dd       	br	7f1b3a <__vfiprintf_r+0xb2>
  7f1b88:	03 d6 4c 00 	addi	76, sp, r26
  7f1b8c:	63 07 21 00 	st.w	r0, 32[sp]
  7f1b90:	1a 58       	mov	r26, r11
  7f1b92:	63 d7 19 00 	st.w	r26, 24[sp]
  7f1b96:	63 07 1d 00 	st.w	r0, 28[sp]
  7f1b9a:	63 07 09 00 	st.w	r0, 8[sp]
  7f1b9e:	63 07 05 00 	st.w	r0, 4[sp]
  7f1ba2:	18 e8       	mov	r24, r29
  7f1ba4:	1d 57 00 00 	ld.b	0[r29], r10
  7f1ba8:	60 52       	cmp	0, r10
  7f1baa:	d2 05       	be	7f1bb4 <__vfiprintf_r+0x12c>
  7f1bac:	20 66 25 00 	movea	37, r0, r12
  7f1bb0:	ec 51       	cmp	r12, r10
  7f1bb2:	fa 4d       	bne	7f1c50 <__vfiprintf_r+0x1c8>
  7f1bb4:	1d b8       	mov	r29, r23
  7f1bb6:	b8 b9       	sub	r24, r23
  7f1bb8:	f8 e9       	cmp	r24, r29
  7f1bba:	f2 15       	be	7f1be8 <__vfiprintf_r+0x160>
  7f1bbc:	23 57 21 00 	ld.w	32[sp], r10
  7f1bc0:	6b c7 01 00 	st.w	r24, 0[r11]
  7f1bc4:	6b bf 05 00 	st.w	r23, 4[r11]
  7f1bc8:	d7 51       	add	r23, r10
  7f1bca:	63 57 21 00 	st.w	r10, 32[sp]
  7f1bce:	23 57 1d 00 	ld.w	28[sp], r10
  7f1bd2:	41 52       	add	1, r10
  7f1bd4:	67 52       	cmp	7, r10
  7f1bd6:	63 57 1d 00 	st.w	r10, 28[sp]
  7f1bda:	df 3d       	bgt	7f1c54 <__vfiprintf_r+0x1cc>
  7f1bdc:	48 5a       	add	8, r11
  7f1bde:	23 57 05 00 	ld.w	4[sp], r10
  7f1be2:	d7 51       	add	r23, r10
  7f1be4:	63 57 05 00 	st.w	r10, 4[sp]
  7f1be8:	1d 57 00 00 	ld.b	0[r29], r10
  7f1bec:	60 52       	cmp	0, r10
  7f1bee:	c2 25       	be	7f1c36 <__vfiprintf_r+0x1ae>
  7f1bf0:	1d 56 01 00 	addi	1, r29, r10
  7f1bf4:	00 ba       	mov	0, r23
  7f1bf6:	1f ea       	mov	-1, r29
  7f1bf8:	00 aa       	mov	0, r21
  7f1bfa:	20 7e 78 00 	movea	120, r0, r15
  7f1bfe:	20 86 4e 00 	movea	78, r0, r16
  7f1c02:	20 8e 29 00 	movea	41, r0, r17
  7f1c06:	43 07 15 00 	st.b	r0, 21[sp]
  7f1c0a:	0a c6 01 00 	addi	1, r10, r24
  7f1c0e:	0a 77 00 00 	ld.b	0[r10], r14
  7f1c12:	ef 71       	cmp	r15, r14
  7f1c14:	ef 07 01 02 	bgt	7f1e14 <__vfiprintf_r+0x38c>
  7f1c18:	f0 71       	cmp	r16, r14
  7f1c1a:	bf 2d       	bgt	7f1c70 <__vfiprintf_r+0x1e8>
  7f1c1c:	20 56 39 00 	movea	57, r0, r10
  7f1c20:	ea 71       	cmp	r10, r14
  7f1c22:	ef 07 eb 01 	bgt	7f1e0c <__vfiprintf_r+0x384>
  7f1c26:	20 56 1f 00 	movea	31, r0, r10
  7f1c2a:	ea 71       	cmp	r10, r14
  7f1c2c:	ef 07 57 01 	bgt	7f1d82 <__vfiprintf_r+0x2fa>
  7f1c30:	60 72       	cmp	0, r14
  7f1c32:	ea 07 e3 01 	bne	7f1e14 <__vfiprintf_r+0x38c>
  7f1c36:	23 57 21 00 	ld.w	32[sp], r10
  7f1c3a:	60 52       	cmp	0, r10
  7f1c3c:	e2 07 1d 08 	be	7f2458 <__vfiprintf_r+0x9d0>
  7f1c40:	03 46 18 00 	addi	24, sp, r8
  7f1c44:	1c 38       	mov	r28, r7
  7f1c46:	1b 30       	mov	r27, r6
  7f1c48:	80 ff 48 09 	jarl	7f2590 <___sprint_r>, lp
  7f1c4c:	80 07 0c 08 	jr	7f2458 <__vfiprintf_r+0x9d0>
  7f1c50:	41 ea       	add	1, r29
  7f1c52:	95 ad       	br	7f1ba4 <__vfiprintf_r+0x11c>
  7f1c54:	03 46 18 00 	addi	24, sp, r8
  7f1c58:	1c 38       	mov	r28, r7
  7f1c5a:	1b 30       	mov	r27, r6
  7f1c5c:	80 ff 34 09 	jarl	7f2590 <___sprint_r>, lp
  7f1c60:	60 52       	cmp	0, r10
  7f1c62:	ea 07 f7 07 	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f1c66:	1a 58       	mov	r26, r11
  7f1c68:	b5 bd       	br	7f1bde <__vfiprintf_r+0x156>
  7f1c6a:	0a c8       	mov	r10, r25
  7f1c6c:	18 50       	mov	r24, r10
  7f1c6e:	e5 cd       	br	7f1c0a <__vfiprintf_r+0x182>
  7f1c70:	20 56 4f 00 	movea	79, r0, r10
  7f1c74:	8e 51       	subr	r14, r10
  7f1c76:	f1 51       	cmp	r17, r10
  7f1c78:	cb dd       	bh	7f1c30 <__vfiprintf_r+0x1a8>
  7f1c7a:	2c 06 8c 1c 	mov	0x7f1c8c, r12
  7f1c7e:	7f 00 
  7f1c80:	c2 52       	shl	2, r10
  7f1c82:	cc 51       	add	r12, r10
  7f1c84:	2a 57 01 00 	ld.w	0[r10], r10
  7f1c88:	cc 51       	add	r12, r10
  7f1c8a:	6a 00       	jmp	[r10]
  7f1c8c:	f2 02 00 00 	jarl	231c8c <__heap_base+0x212d57c>, r18
  7f1c90:	a4 ff 
  7f1c92:	ff ff a4 ff 	.long	0xffa4ffff
  7f1c96:	ff ff a4 ff 	.long	0xffa4ffff
  7f1c9a:	ff ff a4 ff 	.long	0xffa4ffff
  7f1c9e:	ff ff a4 ff 	.long	0xffa4ffff
  7f1ca2:	ff ff ba 05 	.long	0x05baffff
  7f1ca6:	00 00       	nop	
  7f1ca8:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cac:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cb0:	f2 05       	be	7f1cbe <__vfiprintf_r+0x236>
  7f1cb2:	00 00       	nop	
  7f1cb4:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cb8:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cbc:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cc0:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cc4:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cc8:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1ccc:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cd0:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cd4:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cd8:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cdc:	60 02       	cmp	0, r0
  7f1cde:	00 00       	nop	
  7f1ce0:	a2 02       	sar	2, r0
  7f1ce2:	00 00       	nop	
  7f1ce4:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1ce8:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cec:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cf0:	50 02       	add	-16, r0
  7f1cf2:	00 00       	nop	
  7f1cf4:	a2 02       	sar	2, r0
  7f1cf6:	00 00       	nop	
  7f1cf8:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1cfc:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1d00:	58 02       	add	-8, r0
  7f1d02:	00 00       	nop	
  7f1d04:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1d08:	c2 02       	shl	2, r0
  7f1d0a:	00 00       	nop	
  7f1d0c:	2a 03       	sld.b	42[ep], r0
  7f1d0e:	00 00       	nop	
  7f1d10:	4c 03       	sld.b	76[ep], r0
  7f1d12:	00 00       	nop	
  7f1d14:	58 02       	add	-8, r0
  7f1d16:	00 00       	nop	
  7f1d18:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1d1c:	7a 03       	sld.b	122[ep], r0
  7f1d1e:	00 00       	nop	
  7f1d20:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1d24:	d0 05       	bv	7f1d2e <__vfiprintf_r+0x2a6>
  7f1d26:	00 00       	nop	
  7f1d28:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1d2c:	a4 ff ff ff 	ld.bu	-1[gp], lp
  7f1d30:	a8 00       	sxb	r8
  7f1d32:	00 00       	nop	
  7f1d34:	2a 06 5a 46 	mov	0x7f465a, r10
  7f1d38:	7f 00 
  7f1d3a:	19 66 04 00 	addi	4, r25, r12
  7f1d3e:	63 57 09 00 	st.w	r10, 8[sp]
  7f1d42:	63 67 01 00 	st.w	r12, 0[sp]
  7f1d46:	d5 66 10 00 	andi	16, r21, r12
  7f1d4a:	60 62       	cmp	0, r12
  7f1d4c:	39 57 01 00 	ld.w	0[r25], r10
  7f1d50:	fa 05       	bne	7f1d5e <__vfiprintf_r+0x2d6>
  7f1d52:	d5 66 40 00 	andi	64, r21, r12
  7f1d56:	60 62       	cmp	0, r12
  7f1d58:	b2 05       	be	7f1d5e <__vfiprintf_r+0x2d6>
  7f1d5a:	ca 56 ff ff 	andi	65535, r10, r10
  7f1d5e:	d5 66 01 00 	andi	1, r21, r12
  7f1d62:	60 62       	cmp	0, r12
  7f1d64:	e2 07 9f 02 	be	7f2002 <__vfiprintf_r+0x57a>
  7f1d68:	60 52       	cmp	0, r10
  7f1d6a:	e2 07 99 02 	be	7f2002 <__vfiprintf_r+0x57a>
  7f1d6e:	20 66 30 00 	movea	48, r0, r12
  7f1d72:	95 ae 02 00 	ori	2, r21, r21
  7f1d76:	43 67 16 00 	st.b	r12, 22[sp]
  7f1d7a:	43 77 17 00 	st.b	r14, 23[sp]
  7f1d7e:	80 07 84 02 	jr	7f2002 <__vfiprintf_r+0x57a>
  7f1d82:	20 66 19 00 	movea	25, r0, r12
  7f1d86:	0e 56 e0 ff 	addi	-32, r14, r10
  7f1d8a:	ec 51       	cmp	r12, r10
  7f1d8c:	fb 07 a5 fe 	bh	7f1c30 <__vfiprintf_r+0x1a8>
  7f1d90:	2c 06 a4 1d 	mov	0x7f1da4, r12
  7f1d94:	7f 00 
  7f1d96:	c2 52       	shl	2, r10
  7f1d98:	cc 51       	add	r12, r10
  7f1d9a:	2a 57 01 00 	ld.w	0[r10], r10
  7f1d9e:	cc 51       	add	r12, r10
  7f1da0:	6a 00       	jmp	[r10]
  7f1da2:	00 00       	nop	
  7f1da4:	7e 00       	jmp	[ep]
  7f1da6:	00 00       	nop	
  7f1da8:	8c fe ff ff 	ori	65535, r12, lp
  7f1dac:	8c fe ff ff 	ori	65535, r12, lp
  7f1db0:	94 00       	zxb	r20
  7f1db2:	00 00       	nop	
  7f1db4:	8c fe ff ff 	ori	65535, r12, lp
  7f1db8:	8c fe ff ff 	ori	65535, r12, lp
  7f1dbc:	8c fe ff ff 	ori	65535, r12, lp
  7f1dc0:	8c fe ff ff 	ori	65535, r12, lp
  7f1dc4:	8c fe ff ff 	ori	65535, r12, lp
  7f1dc8:	8c fe ff ff 	ori	65535, r12, lp
  7f1dcc:	9c 00       	zxb	r28
  7f1dce:	00 00       	nop	
  7f1dd0:	b6 00       	sxb	r22
  7f1dd2:	00 00       	nop	
  7f1dd4:	8c fe ff ff 	ori	65535, r12, lp
  7f1dd8:	ae 00       	sxb	r14
  7f1dda:	00 00       	nop	
  7f1ddc:	bc 00       	sxb	r28
  7f1dde:	00 00       	nop	
  7f1de0:	8c fe ff ff 	ori	65535, r12, lp
  7f1de4:	0c 01       	or	r12, r0
  7f1de6:	00 00       	nop	
  7f1de8:	14 01       	or	r20, r0
  7f1dea:	00 00       	nop	
  7f1dec:	14 01       	or	r20, r0
  7f1dee:	00 00       	nop	
  7f1df0:	14 01       	or	r20, r0
  7f1df2:	00 00       	nop	
  7f1df4:	14 01       	or	r20, r0
  7f1df6:	00 00       	nop	
  7f1df8:	14 01       	or	r20, r0
  7f1dfa:	00 00       	nop	
  7f1dfc:	14 01       	or	r20, r0
  7f1dfe:	00 00       	nop	
  7f1e00:	14 01       	or	r20, r0
  7f1e02:	00 00       	nop	
  7f1e04:	14 01       	or	r20, r0
  7f1e06:	00 00       	nop	
  7f1e08:	14 01       	or	r20, r0
  7f1e0a:	00 00       	nop	
  7f1e0c:	20 56 44 00 	movea	68, r0, r10
  7f1e10:	ea 71       	cmp	r10, r14
  7f1e12:	d2 7d       	be	7f1f0c <__vfiprintf_r+0x484>
  7f1e14:	43 77 24 00 	st.b	r14, 36[sp]
  7f1e18:	43 07 15 00 	st.b	r0, 21[sp]
  7f1e1c:	63 cf 01 00 	st.w	r25, 0[sp]
  7f1e20:	85 75       	br	7f1f00 <__vfiprintf_r+0x478>
  7f1e22:	03 57 15 00 	ld.b	21[sp], r10
  7f1e26:	60 52       	cmp	0, r10
  7f1e28:	fa 07 45 fe 	bne	7f1c6c <__vfiprintf_r+0x1e4>
  7f1e2c:	20 56 20 00 	movea	32, r0, r10
  7f1e30:	43 57 15 00 	st.b	r10, 21[sp]
  7f1e34:	bf 07 38 fe 	jr	7f1c6c <__vfiprintf_r+0x1e4>
  7f1e38:	95 ae 01 00 	ori	1, r21, r21
  7f1e3c:	bf 07 30 fe 	jr	7f1c6c <__vfiprintf_r+0x1e4>
  7f1e40:	39 bf 01 00 	ld.w	0[r25], r23
  7f1e44:	19 56 04 00 	addi	4, r25, r10
  7f1e48:	60 ba       	cmp	0, r23
  7f1e4a:	fe 07 21 fe 	bge	7f1c6a <__vfiprintf_r+0x1e2>
  7f1e4e:	80 b9       	subr	r0, r23
  7f1e50:	0a c8       	mov	r10, r25
  7f1e52:	95 ae 04 00 	ori	4, r21, r21
  7f1e56:	bf 07 16 fe 	jr	7f1c6c <__vfiprintf_r+0x1e4>
  7f1e5a:	20 56 2b 00 	movea	43, r0, r10
  7f1e5e:	95 ed       	br	7f1e30 <__vfiprintf_r+0x3a8>
  7f1e60:	18 56 01 00 	addi	1, r24, r10
  7f1e64:	18 77 00 00 	ld.b	0[r24], r14
  7f1e68:	20 66 2a 00 	movea	42, r0, r12
  7f1e6c:	ec 71       	cmp	r12, r14
  7f1e6e:	fa 1d       	bne	7f1eac <__vfiprintf_r+0x424>
  7f1e70:	39 ef 01 00 	ld.w	0[r25], r29
  7f1e74:	1f 62       	mov	-1, r12
  7f1e76:	0a c0       	mov	r10, r24
  7f1e78:	60 ea       	cmp	0, r29
  7f1e7a:	fd 67 3c eb 	cmov	ge, r29, r12, r29
  7f1e7e:	44 ca       	add	4, r25
  7f1e80:	bf 07 ec fd 	jr	7f1c6c <__vfiprintf_r+0x1e4>
  7f1e84:	0c e8       	mov	r12, r29
  7f1e86:	41 52       	add	1, r10
  7f1e88:	c2 ea       	shl	2, r29
  7f1e8a:	0a 77 ff ff 	ld.b	-1[r10], r14
  7f1e8e:	cc e9       	add	r12, r29
  7f1e90:	dd e9       	add	r29, r29
  7f1e92:	1d 60       	mov	r29, r12
  7f1e94:	d2 61       	add	r18, r12
  7f1e96:	0e 96 d0 ff 	addi	-48, r14, r18
  7f1e9a:	69 92       	cmp	9, r18
  7f1e9c:	c3 f5       	bnh	7f1e84 <__vfiprintf_r+0x3fc>
  7f1e9e:	1f 92       	mov	-1, r18
  7f1ea0:	60 62       	cmp	0, r12
  7f1ea2:	ec 97 3c eb 	cmov	ge, r12, r18, r29
  7f1ea6:	0a c0       	mov	r10, r24
  7f1ea8:	bf 07 6a fd 	jr	7f1c12 <__vfiprintf_r+0x18a>
  7f1eac:	00 62       	mov	0, r12
  7f1eae:	c5 f5       	br	7f1e96 <__vfiprintf_r+0x40e>
  7f1eb0:	95 ae 80 00 	ori	128, r21, r21
  7f1eb4:	bf 07 b8 fd 	jr	7f1c6c <__vfiprintf_r+0x1e4>
  7f1eb8:	00 ba       	mov	0, r23
  7f1eba:	17 50       	mov	r23, r10
  7f1ebc:	0e 76 d0 ff 	addi	-48, r14, r14
  7f1ec0:	c2 52       	shl	2, r10
  7f1ec2:	41 c2       	add	1, r24
  7f1ec4:	d7 51       	add	r23, r10
  7f1ec6:	ca 51       	add	r10, r10
  7f1ec8:	ca 71       	add	r10, r14
  7f1eca:	0e b8       	mov	r14, r23
  7f1ecc:	18 77 ff ff 	ld.b	-1[r24], r14
  7f1ed0:	0e 56 d0 ff 	addi	-48, r14, r10
  7f1ed4:	69 52       	cmp	9, r10
  7f1ed6:	a3 f5       	bnh	7f1eba <__vfiprintf_r+0x432>
  7f1ed8:	bf 07 3a fd 	jr	7f1c12 <__vfiprintf_r+0x18a>
  7f1edc:	95 ae 40 00 	ori	64, r21, r21
  7f1ee0:	bf 07 8c fd 	jr	7f1c6c <__vfiprintf_r+0x1e4>
  7f1ee4:	95 ae 10 00 	ori	16, r21, r21
  7f1ee8:	bf 07 84 fd 	jr	7f1c6c <__vfiprintf_r+0x1e4>
  7f1eec:	19 56 04 00 	addi	4, r25, r10
  7f1ef0:	43 07 15 00 	st.b	r0, 21[sp]
  7f1ef4:	63 57 01 00 	st.w	r10, 0[sp]
  7f1ef8:	39 57 01 00 	ld.w	0[r25], r10
  7f1efc:	43 57 24 00 	st.b	r10, 36[sp]
  7f1f00:	01 ea       	mov	1, r29
  7f1f02:	00 ca       	mov	0, r25
  7f1f04:	03 b6 24 00 	addi	36, sp, r22
  7f1f08:	80 07 3e 01 	jr	7f2046 <__vfiprintf_r+0x5be>
  7f1f0c:	95 ae 10 00 	ori	16, r21, r21
  7f1f10:	19 56 04 00 	addi	4, r25, r10
  7f1f14:	63 57 01 00 	st.w	r10, 0[sp]
  7f1f18:	39 57 01 00 	ld.w	0[r25], r10
  7f1f1c:	60 52       	cmp	0, r10
  7f1f1e:	ee 05       	bge	7f1f2a <__vfiprintf_r+0x4a2>
  7f1f20:	20 66 2d 00 	movea	45, r0, r12
  7f1f24:	80 51       	subr	r0, r10
  7f1f26:	43 67 15 00 	st.b	r12, 21[sp]
  7f1f2a:	01 62       	mov	1, r12
  7f1f2c:	c5 35       	br	7f1f94 <__vfiprintf_r+0x50c>
  7f1f2e:	19 56 04 00 	addi	4, r25, r10
  7f1f32:	63 57 01 00 	st.w	r10, 0[sp]
  7f1f36:	d5 56 10 00 	andi	16, r21, r10
  7f1f3a:	60 52       	cmp	0, r10
  7f1f3c:	aa ed       	bne	7f1f10 <__vfiprintf_r+0x488>
  7f1f3e:	d5 66 40 00 	andi	64, r21, r12
  7f1f42:	39 57 01 00 	ld.w	0[r25], r10
  7f1f46:	60 62       	cmp	0, r12
  7f1f48:	a2 ed       	be	7f1f1c <__vfiprintf_r+0x494>
  7f1f4a:	ea 00       	sxh	r10
  7f1f4c:	85 ed       	br	7f1f1c <__vfiprintf_r+0x494>
  7f1f4e:	d5 56 10 00 	andi	16, r21, r10
  7f1f52:	60 52       	cmp	0, r10
  7f1f54:	82 0d       	be	7f1f64 <__vfiprintf_r+0x4dc>
  7f1f56:	39 57 01 00 	ld.w	0[r25], r10
  7f1f5a:	23 67 05 00 	ld.w	4[sp], r12
  7f1f5e:	6a 67 01 00 	st.w	r12, 0[r10]
  7f1f62:	b5 0d       	br	7f1f78 <__vfiprintf_r+0x4f0>
  7f1f64:	d5 6e 40 00 	andi	64, r21, r13
  7f1f68:	60 6a       	cmp	0, r13
  7f1f6a:	e2 f5       	be	7f1f56 <__vfiprintf_r+0x4ce>
  7f1f6c:	39 57 01 00 	ld.w	0[r25], r10
  7f1f70:	23 67 05 00 	ld.w	4[sp], r12
  7f1f74:	6a 67 00 00 	st.h	r12, 0[r10]
  7f1f78:	44 ca       	add	4, r25
  7f1f7a:	bf 07 28 fc 	jr	7f1ba2 <__vfiprintf_r+0x11a>
  7f1f7e:	95 ae 10 00 	ori	16, r21, r21
  7f1f82:	19 56 04 00 	addi	4, r25, r10
  7f1f86:	63 57 01 00 	st.w	r10, 0[sp]
  7f1f8a:	39 57 01 00 	ld.w	0[r25], r10
  7f1f8e:	00 62       	mov	0, r12
  7f1f90:	43 07 15 00 	st.b	r0, 21[sp]
  7f1f94:	60 ea       	cmp	0, r29
  7f1f96:	e6 07 03 05 	blt	7f2498 <__vfiprintf_r+0xa10>
  7f1f9a:	20 7e 7f ff 	movea	-129, r0, r15
  7f1f9e:	55 79       	and	r21, r15
  7f1fa0:	60 52       	cmp	0, r10
  7f1fa2:	ea 07 ff 04 	bne	7f24a0 <__vfiprintf_r+0xa18>
  7f1fa6:	60 ea       	cmp	0, r29
  7f1fa8:	e2 07 33 03 	be	7f22da <__vfiprintf_r+0x852>
  7f1fac:	61 62       	cmp	1, r12
  7f1fae:	ea 07 f9 04 	bne	7f24a6 <__vfiprintf_r+0xa1e>
  7f1fb2:	80 07 da 02 	jr	7f228c <__vfiprintf_r+0x804>
  7f1fb6:	19 56 04 00 	addi	4, r25, r10
  7f1fba:	63 57 01 00 	st.w	r10, 0[sp]
  7f1fbe:	d5 56 10 00 	andi	16, r21, r10
  7f1fc2:	60 52       	cmp	0, r10
  7f1fc4:	fa dd       	bne	7f1f82 <__vfiprintf_r+0x4fa>
  7f1fc6:	d5 66 40 00 	andi	64, r21, r12
  7f1fca:	39 57 01 00 	ld.w	0[r25], r10
  7f1fce:	60 62       	cmp	0, r12
  7f1fd0:	f2 dd       	be	7f1f8e <__vfiprintf_r+0x506>
  7f1fd2:	ca 56 ff ff 	andi	65535, r10, r10
  7f1fd6:	c5 dd       	br	7f1f8e <__vfiprintf_r+0x506>
  7f1fd8:	19 56 04 00 	addi	4, r25, r10
  7f1fdc:	20 66 30 00 	movea	48, r0, r12
  7f1fe0:	63 57 01 00 	st.w	r10, 0[sp]
  7f1fe4:	43 67 16 00 	st.b	r12, 22[sp]
  7f1fe8:	39 57 01 00 	ld.w	0[r25], r10
  7f1fec:	20 66 78 00 	movea	120, r0, r12
  7f1ff0:	43 67 17 00 	st.b	r12, 23[sp]
  7f1ff4:	95 ae 02 00 	ori	2, r21, r21
  7f1ff8:	2c 06 5a 46 	mov	0x7f465a, r12
  7f1ffc:	7f 00 
  7f1ffe:	63 67 09 00 	st.w	r12, 8[sp]
  7f2002:	02 62       	mov	2, r12
  7f2004:	e5 c5       	br	7f1f90 <__vfiprintf_r+0x508>
  7f2006:	19 56 04 00 	addi	4, r25, r10
  7f200a:	43 07 15 00 	st.b	r0, 21[sp]
  7f200e:	60 ea       	cmp	0, r29
  7f2010:	63 57 01 00 	st.w	r10, 0[sp]
  7f2014:	63 5f 0d 00 	st.w	r11, 12[sp]
  7f2018:	39 b7 01 00 	ld.w	0[r25], r22
  7f201c:	e6 0d       	blt	7f2038 <__vfiprintf_r+0x5b0>
  7f201e:	1d 40       	mov	r29, r8
  7f2020:	00 3a       	mov	0, r7
  7f2022:	16 30       	mov	r22, r6
  7f2024:	80 ff 70 0f 	jarl	7f2f94 <_memchr>, lp
  7f2028:	60 52       	cmp	0, r10
  7f202a:	23 5f 0d 00 	ld.w	12[sp], r11
  7f202e:	b2 05       	be	7f2034 <__vfiprintf_r+0x5ac>
  7f2030:	b6 51       	sub	r22, r10
  7f2032:	0a e8       	mov	r10, r29
  7f2034:	00 ca       	mov	0, r25
  7f2036:	85 0d       	br	7f2046 <__vfiprintf_r+0x5be>
  7f2038:	16 30       	mov	r22, r6
  7f203a:	00 ca       	mov	0, r25
  7f203c:	80 ff f4 0f 	jarl	7f3030 <_strlen>, lp
  7f2040:	23 5f 0d 00 	ld.w	12[sp], r11
  7f2044:	0a e8       	mov	r10, r29
  7f2046:	fd c9       	cmp	r29, r25
  7f2048:	03 57 15 00 	ld.b	21[sp], r10
  7f204c:	f9 ef 3c a3 	cmov	ge, r25, r29, r20
  7f2050:	60 52       	cmp	0, r10
  7f2052:	ea 57 00 00 	setf	nz, r10
  7f2056:	d5 16 02 00 	andi	2, r21, r2
  7f205a:	ca a1       	add	r10, r20
  7f205c:	60 12       	cmp	0, r2
  7f205e:	a2 05       	be	7f2062 <__vfiprintf_r+0x5da>
  7f2060:	42 a2       	add	2, r20
  7f2062:	d5 56 84 00 	andi	132, r21, r10
  7f2066:	60 52       	cmp	0, r10
  7f2068:	63 57 0d 00 	st.w	r10, 12[sp]
  7f206c:	da 2d       	bne	7f20c6 <__vfiprintf_r+0x63e>
  7f206e:	17 78       	mov	r23, r15
  7f2070:	b4 79       	sub	r20, r15
  7f2072:	60 7a       	cmp	0, r15
  7f2074:	97 2d       	ble	7f20c6 <__vfiprintf_r+0x63e>
  7f2076:	20 8e 10 00 	movea	16, r0, r17
  7f207a:	30 06 8c 46 	mov	0x7f468c, r16
  7f207e:	7f 00 
  7f2080:	32 06 90 25 	mov	0x7f2590, r18
  7f2084:	7f 00 
  7f2086:	23 77 1d 00 	ld.w	28[sp], r14
  7f208a:	0b 9e 08 00 	addi	8, r11, r19
  7f208e:	6b 87 01 00 	st.w	r16, 0[r11]
  7f2092:	23 57 21 00 	ld.w	32[sp], r10
  7f2096:	41 72       	add	1, r14
  7f2098:	f1 79       	cmp	r17, r15
  7f209a:	ef 07 59 02 	bgt	7f22f2 <__vfiprintf_r+0x86a>
  7f209e:	cf 51       	add	r15, r10
  7f20a0:	6b 7f 05 00 	st.w	r15, 4[r11]
  7f20a4:	67 72       	cmp	7, r14
  7f20a6:	63 57 21 00 	st.w	r10, 32[sp]
  7f20aa:	63 77 1d 00 	st.w	r14, 28[sp]
  7f20ae:	e7 07 8d 02 	ble	7f233a <__vfiprintf_r+0x8b2>
  7f20b2:	03 46 18 00 	addi	24, sp, r8
  7f20b6:	1c 38       	mov	r28, r7
  7f20b8:	1b 30       	mov	r27, r6
  7f20ba:	80 ff d6 04 	jarl	7f2590 <___sprint_r>, lp
  7f20be:	60 52       	cmp	0, r10
  7f20c0:	ea 07 99 03 	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f20c4:	1a 58       	mov	r26, r11
  7f20c6:	03 57 15 00 	ld.b	21[sp], r10
  7f20ca:	60 52       	cmp	0, r10
  7f20cc:	e2 15       	be	7f20f8 <__vfiprintf_r+0x670>
  7f20ce:	03 76 15 00 	addi	21, sp, r14
  7f20d2:	23 57 1d 00 	ld.w	28[sp], r10
  7f20d6:	6b 77 01 00 	st.w	r14, 0[r11]
  7f20da:	01 72       	mov	1, r14
  7f20dc:	6b 77 05 00 	st.w	r14, 4[r11]
  7f20e0:	23 77 21 00 	ld.w	32[sp], r14
  7f20e4:	41 52       	add	1, r10
  7f20e6:	41 72       	add	1, r14
  7f20e8:	63 57 1d 00 	st.w	r10, 28[sp]
  7f20ec:	67 52       	cmp	7, r10
  7f20ee:	63 77 21 00 	st.w	r14, 32[sp]
  7f20f2:	ef 07 4f 02 	bgt	7f2340 <__vfiprintf_r+0x8b8>
  7f20f6:	48 5a       	add	8, r11
  7f20f8:	60 12       	cmp	0, r2
  7f20fa:	e2 15       	be	7f2126 <__vfiprintf_r+0x69e>
  7f20fc:	03 76 16 00 	addi	22, sp, r14
  7f2100:	23 57 1d 00 	ld.w	28[sp], r10
  7f2104:	6b 77 01 00 	st.w	r14, 0[r11]
  7f2108:	02 72       	mov	2, r14
  7f210a:	6b 77 05 00 	st.w	r14, 4[r11]
  7f210e:	23 77 21 00 	ld.w	32[sp], r14
  7f2112:	41 52       	add	1, r10
  7f2114:	42 72       	add	2, r14
  7f2116:	63 57 1d 00 	st.w	r10, 28[sp]
  7f211a:	67 52       	cmp	7, r10
  7f211c:	63 77 21 00 	st.w	r14, 32[sp]
  7f2120:	ef 07 39 02 	bgt	7f2358 <__vfiprintf_r+0x8d0>
  7f2124:	48 5a       	add	8, r11
  7f2126:	23 67 0d 00 	ld.w	12[sp], r12
  7f212a:	20 56 80 00 	movea	128, r0, r10
  7f212e:	ea 61       	cmp	r10, r12
  7f2130:	da 2d       	bne	7f218a <__vfiprintf_r+0x702>
  7f2132:	17 10       	mov	r23, r2
  7f2134:	b4 11       	sub	r20, r2
  7f2136:	60 12       	cmp	0, r2
  7f2138:	97 2d       	ble	7f218a <__vfiprintf_r+0x702>
  7f213a:	20 86 10 00 	movea	16, r0, r16
  7f213e:	2f 06 7c 46 	mov	0x7f467c, r15
  7f2142:	7f 00 
  7f2144:	31 06 90 25 	mov	0x7f2590, r17
  7f2148:	7f 00 
  7f214a:	23 77 1d 00 	ld.w	28[sp], r14
  7f214e:	0b 96 08 00 	addi	8, r11, r18
  7f2152:	6b 7f 01 00 	st.w	r15, 0[r11]
  7f2156:	23 57 21 00 	ld.w	32[sp], r10
  7f215a:	41 72       	add	1, r14
  7f215c:	f0 11       	cmp	r16, r2
  7f215e:	ef 07 11 02 	bgt	7f236e <__vfiprintf_r+0x8e6>
  7f2162:	c2 51       	add	r2, r10
  7f2164:	6b 17 05 00 	st.w	r2, 4[r11]
  7f2168:	67 72       	cmp	7, r14
  7f216a:	63 57 21 00 	st.w	r10, 32[sp]
  7f216e:	63 77 1d 00 	st.w	r14, 28[sp]
  7f2172:	e7 07 3b 02 	ble	7f23ac <__vfiprintf_r+0x924>
  7f2176:	03 46 18 00 	addi	24, sp, r8
  7f217a:	1c 38       	mov	r28, r7
  7f217c:	1b 30       	mov	r27, r6
  7f217e:	80 ff 12 04 	jarl	7f2590 <___sprint_r>, lp
  7f2182:	60 52       	cmp	0, r10
  7f2184:	ea 07 d5 02 	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f2188:	1a 58       	mov	r26, r11
  7f218a:	bd c9       	sub	r29, r25
  7f218c:	60 ca       	cmp	0, r25
  7f218e:	97 2d       	ble	7f21e0 <__vfiprintf_r+0x758>
  7f2190:	20 7e 10 00 	movea	16, r0, r15
  7f2194:	22 06 7c 46 	mov	0x7f467c, r2
  7f2198:	7f 00 
  7f219a:	30 06 90 25 	mov	0x7f2590, r16
  7f219e:	7f 00 
  7f21a0:	23 57 1d 00 	ld.w	28[sp], r10
  7f21a4:	0b 8e 08 00 	addi	8, r11, r17
  7f21a8:	6b 17 01 00 	st.w	r2, 0[r11]
  7f21ac:	23 77 21 00 	ld.w	32[sp], r14
  7f21b0:	41 52       	add	1, r10
  7f21b2:	ef c9       	cmp	r15, r25
  7f21b4:	ef 07 ff 01 	bgt	7f23b2 <__vfiprintf_r+0x92a>
  7f21b8:	6b cf 05 00 	st.w	r25, 4[r11]
  7f21bc:	ce c9       	add	r14, r25
  7f21be:	67 52       	cmp	7, r10
  7f21c0:	63 cf 21 00 	st.w	r25, 32[sp]
  7f21c4:	63 57 1d 00 	st.w	r10, 28[sp]
  7f21c8:	e7 07 23 02 	ble	7f23ea <__vfiprintf_r+0x962>
  7f21cc:	03 46 18 00 	addi	24, sp, r8
  7f21d0:	1c 38       	mov	r28, r7
  7f21d2:	1b 30       	mov	r27, r6
  7f21d4:	80 ff bc 03 	jarl	7f2590 <___sprint_r>, lp
  7f21d8:	60 52       	cmp	0, r10
  7f21da:	ea 07 7f 02 	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f21de:	1a 58       	mov	r26, r11
  7f21e0:	23 57 21 00 	ld.w	32[sp], r10
  7f21e4:	6b b7 01 00 	st.w	r22, 0[r11]
  7f21e8:	6b ef 05 00 	st.w	r29, 4[r11]
  7f21ec:	dd 51       	add	r29, r10
  7f21ee:	63 57 21 00 	st.w	r10, 32[sp]
  7f21f2:	23 57 1d 00 	ld.w	28[sp], r10
  7f21f6:	41 52       	add	1, r10
  7f21f8:	67 52       	cmp	7, r10
  7f21fa:	63 57 1d 00 	st.w	r10, 28[sp]
  7f21fe:	ef 07 f3 01 	bgt	7f23f0 <__vfiprintf_r+0x968>
  7f2202:	48 5a       	add	8, r11
  7f2204:	d5 6e 04 00 	andi	4, r21, r13
  7f2208:	60 6a       	cmp	0, r13
  7f220a:	ea 07 fd 01 	bne	7f2406 <__vfiprintf_r+0x97e>
  7f220e:	f4 b9       	cmp	r20, r23
  7f2210:	23 57 05 00 	ld.w	4[sp], r10
  7f2214:	f7 a7 3c bb 	cmov	ge, r23, r20, r23
  7f2218:	d7 51       	add	r23, r10
  7f221a:	63 57 05 00 	st.w	r10, 4[sp]
  7f221e:	23 57 21 00 	ld.w	32[sp], r10
  7f2222:	60 52       	cmp	0, r10
  7f2224:	a2 0d       	be	7f2238 <__vfiprintf_r+0x7b0>
  7f2226:	03 46 18 00 	addi	24, sp, r8
  7f222a:	1c 38       	mov	r28, r7
  7f222c:	1b 30       	mov	r27, r6
  7f222e:	80 ff 62 03 	jarl	7f2590 <___sprint_r>, lp
  7f2232:	60 52       	cmp	0, r10
  7f2234:	ea 07 25 02 	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f2238:	23 cf 01 00 	ld.w	0[sp], r25
  7f223c:	1a 58       	mov	r26, r11
  7f223e:	63 07 1d 00 	st.w	r0, 28[sp]
  7f2242:	bf 07 60 f9 	jr	7f1ba2 <__vfiprintf_r+0x11a>
  7f2246:	95 ae 10 00 	ori	16, r21, r21
  7f224a:	19 56 04 00 	addi	4, r25, r10
  7f224e:	63 57 01 00 	st.w	r10, 0[sp]
  7f2252:	39 57 01 00 	ld.w	0[r25], r10
  7f2256:	01 62       	mov	1, r12
  7f2258:	bf 07 38 fd 	jr	7f1f90 <__vfiprintf_r+0x508>
  7f225c:	19 56 04 00 	addi	4, r25, r10
  7f2260:	63 57 01 00 	st.w	r10, 0[sp]
  7f2264:	d5 56 10 00 	andi	16, r21, r10
  7f2268:	60 52       	cmp	0, r10
  7f226a:	8a f5       	bne	7f224a <__vfiprintf_r+0x7c2>
  7f226c:	d5 66 40 00 	andi	64, r21, r12
  7f2270:	39 57 01 00 	ld.w	0[r25], r10
  7f2274:	60 62       	cmp	0, r12
  7f2276:	82 f5       	be	7f2256 <__vfiprintf_r+0x7ce>
  7f2278:	ca 56 ff ff 	andi	65535, r10, r10
  7f227c:	d5 ed       	br	7f2256 <__vfiprintf_r+0x7ce>
  7f227e:	2a 06 6b 46 	mov	0x7f466b, r10
  7f2282:	7f 00 
  7f2284:	bf 07 b6 fa 	jr	7f1d3a <__vfiprintf_r+0x2b2>
  7f2288:	69 52       	cmp	9, r10
  7f228a:	ab 0d       	bh	7f229e <__vfiprintf_r+0x816>
  7f228c:	0a 56 30 00 	addi	48, r10, r10
  7f2290:	aa 00       	sxb	r10
  7f2292:	03 b6 4b 00 	addi	75, sp, r22
  7f2296:	43 57 4b 00 	st.b	r10, 75[sp]
  7f229a:	80 07 44 02 	jr	7f24de <__vfiprintf_r+0xa56>
  7f229e:	1a b0       	mov	r26, r22
  7f22a0:	0a 72       	mov	10, r14
  7f22a2:	0a 80       	mov	r10, r16
  7f22a4:	5f b2       	add	-1, r22
  7f22a6:	ee 87 fe 6a 	divqu	r14, r16, r13
  7f22aa:	0d 6e 30 00 	addi	48, r13, r13
  7f22ae:	56 6f 00 00 	st.b	r13, 0[r22]
  7f22b2:	0a 68       	mov	r10, r13
  7f22b4:	69 6a       	cmp	9, r13
  7f22b6:	10 50       	mov	r16, r10
  7f22b8:	db f5       	bh	7f22a2 <__vfiprintf_r+0x81a>
  7f22ba:	80 07 24 02 	jr	7f24de <__vfiprintf_r+0xa56>
  7f22be:	23 67 09 00 	ld.w	8[sp], r12
  7f22c2:	ca 6e 0f 00 	andi	15, r10, r13
  7f22c6:	5f b2       	add	-1, r22
  7f22c8:	cc 69       	add	r12, r13
  7f22ca:	0d 67 00 00 	ld.b	0[r13], r12
  7f22ce:	84 52       	shr	4, r10
  7f22d0:	56 67 00 00 	st.b	r12, 0[r22]
  7f22d4:	da f5       	bne	7f22be <__vfiprintf_r+0x836>
  7f22d6:	80 07 08 02 	jr	7f24de <__vfiprintf_r+0xa56>
  7f22da:	60 62       	cmp	0, r12
  7f22dc:	8a 0d       	bne	7f22ec <__vfiprintf_r+0x864>
  7f22de:	d5 6e 01 00 	andi	1, r21, r13
  7f22e2:	60 6a       	cmp	0, r13
  7f22e4:	c2 05       	be	7f22ec <__vfiprintf_r+0x864>
  7f22e6:	20 56 30 00 	movea	48, r0, r10
  7f22ea:	c5 d5       	br	7f2292 <__vfiprintf_r+0x80a>
  7f22ec:	1a b0       	mov	r26, r22
  7f22ee:	80 07 f0 01 	jr	7f24de <__vfiprintf_r+0xa56>
  7f22f2:	0a 56 10 00 	addi	16, r10, r10
  7f22f6:	6b 8f 05 00 	st.w	r17, 4[r11]
  7f22fa:	67 72       	cmp	7, r14
  7f22fc:	63 57 21 00 	st.w	r10, 32[sp]
  7f2300:	63 77 1d 00 	st.w	r14, 28[sp]
  7f2304:	f7 15       	ble	7f2332 <__vfiprintf_r+0x8aa>
  7f2306:	03 46 18 00 	addi	24, sp, r8
  7f230a:	1c 38       	mov	r28, r7
  7f230c:	1b 30       	mov	r27, r6
  7f230e:	63 7f 11 00 	st.w	r15, 16[sp]
  7f2312:	f2 c7 60 f9 	jarl	[r18], lp
  7f2316:	60 52       	cmp	0, r10
  7f2318:	ea 07 41 01 	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f231c:	23 7f 11 00 	ld.w	16[sp], r15
  7f2320:	1a 98       	mov	r26, r19
  7f2322:	30 06 8c 46 	mov	0x7f468c, r16
  7f2326:	7f 00 
  7f2328:	20 8e 10 00 	movea	16, r0, r17
  7f232c:	32 06 90 25 	mov	0x7f2590, r18
  7f2330:	7f 00 
  7f2332:	50 7a       	add	-16, r15
  7f2334:	13 58       	mov	r19, r11
  7f2336:	bf 07 50 fd 	jr	7f2086 <__vfiprintf_r+0x5fe>
  7f233a:	13 58       	mov	r19, r11
  7f233c:	bf 07 8a fd 	jr	7f20c6 <__vfiprintf_r+0x63e>
  7f2340:	03 46 18 00 	addi	24, sp, r8
  7f2344:	1c 38       	mov	r28, r7
  7f2346:	1b 30       	mov	r27, r6
  7f2348:	80 ff 48 02 	jarl	7f2590 <___sprint_r>, lp
  7f234c:	60 52       	cmp	0, r10
  7f234e:	ea 07 0b 01 	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f2352:	1a 58       	mov	r26, r11
  7f2354:	bf 07 a4 fd 	jr	7f20f8 <__vfiprintf_r+0x670>
  7f2358:	03 46 18 00 	addi	24, sp, r8
  7f235c:	1c 38       	mov	r28, r7
  7f235e:	1b 30       	mov	r27, r6
  7f2360:	80 ff 30 02 	jarl	7f2590 <___sprint_r>, lp
  7f2364:	60 52       	cmp	0, r10
  7f2366:	9a 7d       	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f2368:	1a 58       	mov	r26, r11
  7f236a:	bf 07 bc fd 	jr	7f2126 <__vfiprintf_r+0x69e>
  7f236e:	0a 56 10 00 	addi	16, r10, r10
  7f2372:	6b 87 05 00 	st.w	r16, 4[r11]
  7f2376:	67 72       	cmp	7, r14
  7f2378:	63 57 21 00 	st.w	r10, 32[sp]
  7f237c:	63 77 1d 00 	st.w	r14, 28[sp]
  7f2380:	a7 15       	ble	7f23a4 <__vfiprintf_r+0x91c>
  7f2382:	03 46 18 00 	addi	24, sp, r8
  7f2386:	1c 38       	mov	r28, r7
  7f2388:	1b 30       	mov	r27, r6
  7f238a:	f1 c7 60 f9 	jarl	[r17], lp
  7f238e:	60 52       	cmp	0, r10
  7f2390:	ca 65       	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f2392:	1a 90       	mov	r26, r18
  7f2394:	2f 06 7c 46 	mov	0x7f467c, r15
  7f2398:	7f 00 
  7f239a:	20 86 10 00 	movea	16, r0, r16
  7f239e:	31 06 90 25 	mov	0x7f2590, r17
  7f23a2:	7f 00 
  7f23a4:	50 12       	add	-16, r2
  7f23a6:	12 58       	mov	r18, r11
  7f23a8:	bf 07 a2 fd 	jr	7f214a <__vfiprintf_r+0x6c2>
  7f23ac:	12 58       	mov	r18, r11
  7f23ae:	bf 07 dc fd 	jr	7f218a <__vfiprintf_r+0x702>
  7f23b2:	0e 76 10 00 	addi	16, r14, r14
  7f23b6:	6b 7f 05 00 	st.w	r15, 4[r11]
  7f23ba:	67 52       	cmp	7, r10
  7f23bc:	63 77 21 00 	st.w	r14, 32[sp]
  7f23c0:	63 57 1d 00 	st.w	r10, 28[sp]
  7f23c4:	f7 0d       	ble	7f23e2 <__vfiprintf_r+0x95a>
  7f23c6:	03 46 18 00 	addi	24, sp, r8
  7f23ca:	1c 38       	mov	r28, r7
  7f23cc:	1b 30       	mov	r27, r6
  7f23ce:	f0 c7 60 f9 	jarl	[r16], lp
  7f23d2:	60 52       	cmp	0, r10
  7f23d4:	aa 45       	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f23d6:	1a 88       	mov	r26, r17
  7f23d8:	20 7e 10 00 	movea	16, r0, r15
  7f23dc:	30 06 90 25 	mov	0x7f2590, r16
  7f23e0:	7f 00 
  7f23e2:	50 ca       	add	-16, r25
  7f23e4:	11 58       	mov	r17, r11
  7f23e6:	bf 07 ba fd 	jr	7f21a0 <__vfiprintf_r+0x718>
  7f23ea:	11 58       	mov	r17, r11
  7f23ec:	bf 07 f4 fd 	jr	7f21e0 <__vfiprintf_r+0x758>
  7f23f0:	03 46 18 00 	addi	24, sp, r8
  7f23f4:	1c 38       	mov	r28, r7
  7f23f6:	1b 30       	mov	r27, r6
  7f23f8:	80 ff 98 01 	jarl	7f2590 <___sprint_r>, lp
  7f23fc:	60 52       	cmp	0, r10
  7f23fe:	da 2d       	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f2400:	1a 58       	mov	r26, r11
  7f2402:	bf 07 02 fe 	jr	7f2204 <__vfiprintf_r+0x77c>
  7f2406:	17 e8       	mov	r23, r29
  7f2408:	b4 e9       	sub	r20, r29
  7f240a:	60 ea       	cmp	0, r29
  7f240c:	f7 07 03 fe 	ble	7f220e <__vfiprintf_r+0x786>
  7f2410:	20 16 10 00 	movea	16, r0, r2
  7f2414:	39 06 8c 46 	mov	0x7f468c, r25
  7f2418:	7f 00 
  7f241a:	35 06 90 25 	mov	0x7f2590, r21
  7f241e:	7f 00 
  7f2420:	23 57 1d 00 	ld.w	28[sp], r10
  7f2424:	6b cf 01 00 	st.w	r25, 0[r11]
  7f2428:	23 67 21 00 	ld.w	32[sp], r12
  7f242c:	41 52       	add	1, r10
  7f242e:	e2 e9       	cmp	r2, r29
  7f2430:	df 1d       	bgt	7f246a <__vfiprintf_r+0x9e2>
  7f2432:	6b ef 05 00 	st.w	r29, 4[r11]
  7f2436:	cc e9       	add	r12, r29
  7f2438:	67 52       	cmp	7, r10
  7f243a:	63 ef 21 00 	st.w	r29, 32[sp]
  7f243e:	63 57 1d 00 	st.w	r10, 28[sp]
  7f2442:	f7 07 cd fd 	ble	7f220e <__vfiprintf_r+0x786>
  7f2446:	03 46 18 00 	addi	24, sp, r8
  7f244a:	1c 38       	mov	r28, r7
  7f244c:	1b 30       	mov	r27, r6
  7f244e:	80 ff 42 01 	jarl	7f2590 <___sprint_r>, lp
  7f2452:	60 52       	cmp	0, r10
  7f2454:	f2 07 bb fd 	be	7f220e <__vfiprintf_r+0x786>
  7f2458:	3c 57 0c 00 	ld.h	12[r28], r10
  7f245c:	ca 56 40 00 	andi	64, r10, r10
  7f2460:	60 52       	cmp	0, r10
  7f2462:	f2 07 df f6 	be	7f1b40 <__vfiprintf_r+0xb8>
  7f2466:	bf 07 d4 f6 	jr	7f1b3a <__vfiprintf_r+0xb2>
  7f246a:	0c 66 10 00 	addi	16, r12, r12
  7f246e:	6b 17 05 00 	st.w	r2, 4[r11]
  7f2472:	67 52       	cmp	7, r10
  7f2474:	63 67 21 00 	st.w	r12, 32[sp]
  7f2478:	63 57 1d 00 	st.w	r10, 28[sp]
  7f247c:	cf 05       	bgt	7f2484 <__vfiprintf_r+0x9fc>
  7f247e:	48 5a       	add	8, r11
  7f2480:	50 ea       	add	-16, r29
  7f2482:	f5 cd       	br	7f2420 <__vfiprintf_r+0x998>
  7f2484:	03 46 18 00 	addi	24, sp, r8
  7f2488:	1c 38       	mov	r28, r7
  7f248a:	1b 30       	mov	r27, r6
  7f248c:	f5 c7 60 f9 	jarl	[r21], lp
  7f2490:	60 52       	cmp	0, r10
  7f2492:	ba e5       	bne	7f2458 <__vfiprintf_r+0x9d0>
  7f2494:	1a 58       	mov	r26, r11
  7f2496:	d5 f5       	br	7f2480 <__vfiprintf_r+0x9f8>
  7f2498:	60 52       	cmp	0, r10
  7f249a:	15 78       	mov	r21, r15
  7f249c:	f2 07 11 fb 	be	7f1fac <__vfiprintf_r+0x524>
  7f24a0:	61 62       	cmp	1, r12
  7f24a2:	f2 07 e7 fd 	be	7f2288 <__vfiprintf_r+0x800>
  7f24a6:	62 62       	cmp	2, r12
  7f24a8:	1a b0       	mov	r26, r22
  7f24aa:	f2 07 15 fe 	be	7f22be <__vfiprintf_r+0x836>
  7f24ae:	ca 6e 07 00 	andi	7, r10, r13
  7f24b2:	16 70       	mov	r22, r14
  7f24b4:	0d 6e 30 00 	addi	48, r13, r13
  7f24b8:	5f b2       	add	-1, r22
  7f24ba:	83 52       	shr	3, r10
  7f24bc:	56 6f 00 00 	st.b	r13, 0[r22]
  7f24c0:	fa f5       	bne	7f24ae <__vfiprintf_r+0xa26>
  7f24c2:	cf 56 01 00 	andi	1, r15, r10
  7f24c6:	60 52       	cmp	0, r10
  7f24c8:	b2 0d       	be	7f24de <__vfiprintf_r+0xa56>
  7f24ca:	20 56 30 00 	movea	48, r0, r10
  7f24ce:	ca 86 30 00 	andi	48, r10, r16
  7f24d2:	f0 69       	cmp	r16, r13
  7f24d4:	d2 05       	be	7f24de <__vfiprintf_r+0xa56>
  7f24d6:	56 57 ff ff 	st.b	r10, -1[r22]
  7f24da:	0e b6 fe ff 	addi	-2, r14, r22
  7f24de:	1d c8       	mov	r29, r25
  7f24e0:	1a e8       	mov	r26, r29
  7f24e2:	b6 e9       	sub	r22, r29
  7f24e4:	0f a8       	mov	r15, r21
  7f24e6:	bf 07 60 fb 	jr	7f2046 <__vfiprintf_r+0x5be>

007f24ea <_vfiprintf>:
  7f24ea:	08 48       	mov	r8, r9
  7f24ec:	07 40       	mov	r7, r8
  7f24ee:	06 38       	mov	r6, r7
  7f24f0:	24 37 01 f8 	ld.w	-2048[gp], r6
  7f24f4:	80 07 21 00 	prepare	{lp}, 0
  7f24f8:	bf ff 90 f5 	jarl	7f1a88 <__vfiprintf_r>, lp
  7f24fc:	40 06 3f 00 	dispose	0, {lp}, lp

007f2500 <___sbprintf>:
  7f2500:	80 07 e1 10 	prepare	{r27 - r29, lp}, 0
  7f2504:	1d 5a       	mov	-3, r11
  7f2506:	27 57 0c 00 	ld.h	12[r7], r10
  7f250a:	03 1e 98 fb 	addi	-1128, sp, sp
  7f250e:	4b 51       	and	r11, r10
  7f2510:	07 e8       	mov	r7, r29
  7f2512:	63 57 0c 00 	st.h	r10, 12[sp]
  7f2516:	27 57 65 00 	ld.w	100[r7], r10
  7f251a:	06 d8       	mov	r6, r27
  7f251c:	63 07 19 00 	st.w	r0, 24[sp]
  7f2520:	63 57 65 00 	st.w	r10, 100[sp]
  7f2524:	27 57 0e 00 	ld.h	14[r7], r10
  7f2528:	63 57 0e 00 	st.h	r10, 14[sp]
  7f252c:	27 57 1d 00 	ld.w	28[r7], r10
  7f2530:	63 57 1d 00 	st.w	r10, 28[sp]
  7f2534:	27 57 25 00 	ld.w	36[r7], r10
  7f2538:	03 38       	mov	sp, r7
  7f253a:	63 57 25 00 	st.w	r10, 36[sp]
  7f253e:	03 56 68 00 	addi	104, sp, r10
  7f2542:	63 57 01 00 	st.w	r10, 0[sp]
  7f2546:	63 57 11 00 	st.w	r10, 16[sp]
  7f254a:	20 56 00 04 	movea	1024, r0, r10
  7f254e:	63 57 09 00 	st.w	r10, 8[sp]
  7f2552:	63 57 15 00 	st.w	r10, 20[sp]
  7f2556:	bf ff 32 f5 	jarl	7f1a88 <__vfiprintf_r>, lp
  7f255a:	60 52       	cmp	0, r10
  7f255c:	0a e0       	mov	r10, r28
  7f255e:	86 0d       	blt	7f256e <___sbprintf+0x6e>
  7f2560:	03 38       	mov	sp, r7
  7f2562:	1b 30       	mov	r27, r6
  7f2564:	80 ff c8 01 	jarl	7f272c <__fflush_r>, lp
  7f2568:	60 52       	cmp	0, r10
  7f256a:	a2 05       	be	7f256e <___sbprintf+0x6e>
  7f256c:	1f e2       	mov	-1, r28
  7f256e:	23 57 0c 00 	ld.h	12[sp], r10
  7f2572:	ca 56 40 00 	andi	64, r10, r10
  7f2576:	60 52       	cmp	0, r10
  7f2578:	f2 05       	be	7f2586 <___sbprintf+0x86>
  7f257a:	3d 57 0c 00 	ld.h	12[r29], r10
  7f257e:	8a 56 40 00 	ori	64, r10, r10
  7f2582:	7d 57 0c 00 	st.h	r10, 12[r29]
  7f2586:	03 1e 68 04 	addi	1128, sp, sp
  7f258a:	1c 50       	mov	r28, r10
  7f258c:	40 06 ff 10 	dispose	0, {r27 - r29, lp}, lp

007f2590 <___sprint_r>:
  7f2590:	80 07 61 00 	prepare	{r29, lp}, 0
  7f2594:	08 e8       	mov	r8, r29
  7f2596:	28 57 09 00 	ld.w	8[r8], r10
  7f259a:	60 52       	cmp	0, r10
  7f259c:	92 0d       	be	7f25ae <___sprint_r+0x1e>
  7f259e:	80 ff 32 04 	jarl	7f29d0 <___sfvwrite_r>, lp
  7f25a2:	7d 07 09 00 	st.w	r0, 8[r29]
  7f25a6:	7d 07 05 00 	st.w	r0, 4[r29]
  7f25aa:	40 06 7f 00 	dispose	0, {r29, lp}, lp
  7f25ae:	00 52       	mov	0, r10
  7f25b0:	b5 fd       	br	7f25a6 <___sprint_r+0x16>

007f25b2 <___sflush_r>:
  7f25b2:	80 07 e1 30 	prepare	{r26 - r29, lp}, 0
  7f25b6:	06 e0       	mov	r6, r28
  7f25b8:	27 5f 0c 00 	ld.h	12[r7], r11
  7f25bc:	07 e8       	mov	r7, r29
  7f25be:	cb 56 08 00 	andi	8, r11, r10
  7f25c2:	60 52       	cmp	0, r10
  7f25c4:	ea 07 11 01 	bne	7f26d4 <___sflush_r+0x122>
  7f25c8:	8b 56 00 08 	ori	2048, r11, r10
  7f25cc:	67 57 0c 00 	st.h	r10, 12[r7]
  7f25d0:	27 57 05 00 	ld.w	4[r7], r10
  7f25d4:	60 52       	cmp	0, r10
  7f25d6:	df 05       	bgt	7f25e0 <___sflush_r+0x2e>
  7f25d8:	27 57 3d 00 	ld.w	60[r7], r10
  7f25dc:	60 52       	cmp	0, r10
  7f25de:	97 7d       	ble	7f26d0 <___sflush_r+0x11e>
  7f25e0:	3d 57 29 00 	ld.w	40[r29], r10
  7f25e4:	60 52       	cmp	0, r10
  7f25e6:	d2 75       	be	7f26d0 <___sflush_r+0x11e>
  7f25e8:	cb 5e 00 10 	andi	4096, r11, r11
  7f25ec:	3c df 01 00 	ld.w	0[r28], r27
  7f25f0:	60 5a       	cmp	0, r11
  7f25f2:	7c 07 01 00 	st.w	r0, 0[r28]
  7f25f6:	d2 55       	be	7f26a0 <___sflush_r+0xee>
  7f25f8:	3d 47 51 00 	ld.w	80[r29], r8
  7f25fc:	3d 57 0c 00 	ld.h	12[r29], r10
  7f2600:	ca 56 04 00 	andi	4, r10, r10
  7f2604:	60 52       	cmp	0, r10
  7f2606:	b2 0d       	be	7f261c <___sflush_r+0x6a>
  7f2608:	3d 57 05 00 	ld.w	4[r29], r10
  7f260c:	aa 41       	sub	r10, r8
  7f260e:	3d 57 31 00 	ld.w	48[r29], r10
  7f2612:	60 52       	cmp	0, r10
  7f2614:	c2 05       	be	7f261c <___sflush_r+0x6a>
  7f2616:	3d 57 3d 00 	ld.w	60[r29], r10
  7f261a:	aa 41       	sub	r10, r8
  7f261c:	3d 57 29 00 	ld.w	40[r29], r10
  7f2620:	3d 3f 1d 00 	ld.w	28[r29], r7
  7f2624:	00 4a       	mov	0, r9
  7f2626:	1c 30       	mov	r28, r6
  7f2628:	ea c7 60 f9 	jarl	[r10], lp
  7f262c:	7f 52       	cmp	-1, r10
  7f262e:	3d 5f 0c 00 	ld.h	12[r29], r11
  7f2632:	8a 15       	bne	7f2652 <___sflush_r+0xa0>
  7f2634:	3c 6f 01 00 	ld.w	0[r28], r13
  7f2638:	20 66 1d 00 	movea	29, r0, r12
  7f263c:	ec 69       	cmp	r12, r13
  7f263e:	bb 6d       	bh	7f2714 <___sflush_r+0x162>
  7f2640:	2c 06 01 00 	mov	0x20400001, r12
  7f2644:	40 20 
  7f2646:	ed 67 80 00 	shr	r13, r12
  7f264a:	cc 66 01 00 	andi	1, r12, r12
  7f264e:	60 62       	cmp	0, r12
  7f2650:	a2 65       	be	7f2714 <___sflush_r+0x162>
  7f2652:	20 66 ff f7 	movea	-2049, r0, r12
  7f2656:	7d 07 05 00 	st.w	r0, 4[r29]
  7f265a:	4b 61       	and	r11, r12
  7f265c:	cb 5e 00 10 	andi	4096, r11, r11
  7f2660:	7d 67 0c 00 	st.h	r12, 12[r29]
  7f2664:	3d 67 11 00 	ld.w	16[r29], r12
  7f2668:	60 5a       	cmp	0, r11
  7f266a:	7d 67 01 00 	st.w	r12, 0[r29]
  7f266e:	92 0d       	be	7f2680 <___sflush_r+0xce>
  7f2670:	7f 52       	cmp	-1, r10
  7f2672:	da 05       	bne	7f267c <___sflush_r+0xca>
  7f2674:	3c 5f 01 00 	ld.w	0[r28], r11
  7f2678:	60 5a       	cmp	0, r11
  7f267a:	ba 05       	bne	7f2680 <___sflush_r+0xce>
  7f267c:	7d 57 51 00 	st.w	r10, 80[r29]
  7f2680:	3d 3f 31 00 	ld.w	48[r29], r7
  7f2684:	7c df 01 00 	st.w	r27, 0[r28]
  7f2688:	60 3a       	cmp	0, r7
  7f268a:	b2 25       	be	7f26d0 <___sflush_r+0x11e>
  7f268c:	1d 56 40 00 	addi	64, r29, r10
  7f2690:	ea 39       	cmp	r10, r7
  7f2692:	c2 05       	be	7f269a <___sflush_r+0xe8>
  7f2694:	1c 30       	mov	r28, r6
  7f2696:	80 ff da 0b 	jarl	7f3270 <__free_r>, lp
  7f269a:	7d 07 31 00 	st.w	r0, 48[r29]
  7f269e:	95 1d       	br	7f26d0 <___sflush_r+0x11e>
  7f26a0:	3d 3f 1d 00 	ld.w	28[r29], r7
  7f26a4:	00 42       	mov	0, r8
  7f26a6:	01 4a       	mov	1, r9
  7f26a8:	1c 30       	mov	r28, r6
  7f26aa:	ea c7 60 f9 	jarl	[r10], lp
  7f26ae:	7f 52       	cmp	-1, r10
  7f26b0:	0a 40       	mov	r10, r8
  7f26b2:	da a5       	bne	7f25fc <___sflush_r+0x4a>
  7f26b4:	3c 57 01 00 	ld.w	0[r28], r10
  7f26b8:	60 52       	cmp	0, r10
  7f26ba:	92 a5       	be	7f25fc <___sflush_r+0x4a>
  7f26bc:	20 5e 1d 00 	movea	29, r0, r11
  7f26c0:	eb 51       	cmp	r11, r10
  7f26c2:	d2 05       	be	7f26cc <___sflush_r+0x11a>
  7f26c4:	20 5e 16 00 	movea	22, r0, r11
  7f26c8:	eb 51       	cmp	r11, r10
  7f26ca:	ba 25       	bne	7f2710 <___sflush_r+0x15e>
  7f26cc:	7c df 01 00 	st.w	r27, 0[r28]
  7f26d0:	00 52       	mov	0, r10
  7f26d2:	e5 25       	br	7f271e <___sflush_r+0x16c>
  7f26d4:	27 d7 11 00 	ld.w	16[r7], r26
  7f26d8:	60 d2       	cmp	0, r26
  7f26da:	b2 fd       	be	7f26d0 <___sflush_r+0x11e>
  7f26dc:	27 df 01 00 	ld.w	0[r7], r27
  7f26e0:	cb 5e 03 00 	andi	3, r11, r11
  7f26e4:	67 d7 01 00 	st.w	r26, 0[r7]
  7f26e8:	ba d9       	sub	r26, r27
  7f26ea:	60 5a       	cmp	0, r11
  7f26ec:	ba 1d       	bne	7f2722 <___sflush_r+0x170>
  7f26ee:	27 57 15 00 	ld.w	20[r7], r10
  7f26f2:	7d 57 09 00 	st.w	r10, 8[r29]
  7f26f6:	60 da       	cmp	0, r27
  7f26f8:	c7 ed       	ble	7f26d0 <___sflush_r+0x11e>
  7f26fa:	3d 57 25 00 	ld.w	36[r29], r10
  7f26fe:	3d 3f 1d 00 	ld.w	28[r29], r7
  7f2702:	1b 48       	mov	r27, r9
  7f2704:	1a 40       	mov	r26, r8
  7f2706:	1c 30       	mov	r28, r6
  7f2708:	ea c7 60 f9 	jarl	[r10], lp
  7f270c:	60 52       	cmp	0, r10
  7f270e:	cf 0d       	bgt	7f2726 <___sflush_r+0x174>
  7f2710:	3d 5f 0c 00 	ld.h	12[r29], r11
  7f2714:	8b 5e 40 00 	ori	64, r11, r11
  7f2718:	1f 52       	mov	-1, r10
  7f271a:	7d 5f 0c 00 	st.h	r11, 12[r29]
  7f271e:	40 06 ff 30 	dispose	0, {r26 - r29, lp}, lp
  7f2722:	00 52       	mov	0, r10
  7f2724:	f5 e5       	br	7f26f2 <___sflush_r+0x140>
  7f2726:	ca d1       	add	r10, r26
  7f2728:	aa d9       	sub	r10, r27
  7f272a:	e5 e5       	br	7f26f6 <___sflush_r+0x144>

007f272c <__fflush_r>:
  7f272c:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f2730:	06 e8       	mov	r6, r29
  7f2732:	60 32       	cmp	0, r6
  7f2734:	07 e0       	mov	r7, r28
  7f2736:	f2 05       	be	7f2744 <__fflush_r+0x18>
  7f2738:	26 57 35 00 	ld.w	52[r6], r10
  7f273c:	60 52       	cmp	0, r10
  7f273e:	ba 05       	bne	7f2744 <__fflush_r+0x18>
  7f2740:	80 ff 2c 02 	jarl	7f296c <___sinit>, lp
  7f2744:	3c 57 0c 00 	ld.h	12[r28], r10
  7f2748:	60 52       	cmp	0, r10
  7f274a:	f2 05       	be	7f2758 <__fflush_r+0x2c>
  7f274c:	1c 38       	mov	r28, r7
  7f274e:	1d 30       	mov	r29, r6
  7f2750:	bf ff 62 fe 	jarl	7f25b2 <___sflush_r>, lp
  7f2754:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp
  7f2758:	00 52       	mov	0, r10
  7f275a:	d5 fd       	br	7f2754 <__fflush_r+0x28>

007f275c <_fflush>:
  7f275c:	80 07 21 00 	prepare	{lp}, 0
  7f2760:	06 38       	mov	r6, r7
  7f2762:	60 32       	cmp	0, r6
  7f2764:	ea 0d       	bne	7f2780 <_fflush+0x24>
  7f2766:	28 06 1c 00 	mov	0xfe10001c, r8
  7f276a:	10 fe 
  7f276c:	27 06 2c 27 	mov	0x7f272c, r7
  7f2770:	7f 00 
  7f2772:	26 06 28 00 	mov	0xfe100028, r6
  7f2776:	10 fe 
  7f2778:	80 ff 2e 06 	jarl	7f2da6 <__fwalk_sglue>, lp
  7f277c:	40 06 3f 00 	dispose	0, {lp}, lp
  7f2780:	24 37 01 f8 	ld.w	-2048[gp], r6
  7f2784:	bf ff a8 ff 	jarl	7f272c <__fflush_r>, lp
  7f2788:	a5 fd       	br	7f277c <_fflush+0x20>

007f278a <___fp_lock>:
  7f278a:	00 52       	mov	0, r10
  7f278c:	7f 00       	jmp	[lp]

007f278e <_std>:
  7f278e:	80 07 61 00 	prepare	{r29, lp}, 0
  7f2792:	06 e8       	mov	r6, r29
  7f2794:	66 3f 0c 00 	st.h	r7, 12[r6]
  7f2798:	66 47 0e 00 	st.h	r8, 14[r6]
  7f279c:	66 07 01 00 	st.w	r0, 0[r6]
  7f27a0:	66 07 05 00 	st.w	r0, 4[r6]
  7f27a4:	66 07 09 00 	st.w	r0, 8[r6]
  7f27a8:	66 07 65 00 	st.w	r0, 100[r6]
  7f27ac:	66 07 11 00 	st.w	r0, 16[r6]
  7f27b0:	66 07 15 00 	st.w	r0, 20[r6]
  7f27b4:	66 07 19 00 	st.w	r0, 24[r6]
  7f27b8:	08 42       	mov	8, r8
  7f27ba:	00 3a       	mov	0, r7
  7f27bc:	06 36 5c 00 	addi	92, r6, r6
  7f27c0:	80 ff 46 08 	jarl	7f3006 <_memset>, lp
  7f27c4:	7d ef 1d 00 	st.w	r29, 28[r29]
  7f27c8:	2a 06 ec 2d 	mov	0x7f2dec, r10
  7f27cc:	7f 00 
  7f27ce:	7d 57 21 00 	st.w	r10, 32[r29]
  7f27d2:	2a 06 20 2e 	mov	0x7f2e20, r10
  7f27d6:	7f 00 
  7f27d8:	7d 57 25 00 	st.w	r10, 36[r29]
  7f27dc:	2a 06 64 2e 	mov	0x7f2e64, r10
  7f27e0:	7f 00 
  7f27e2:	7d 57 29 00 	st.w	r10, 40[r29]
  7f27e6:	2a 06 96 2e 	mov	0x7f2e96, r10
  7f27ea:	7f 00 
  7f27ec:	7d 57 2d 00 	st.w	r10, 44[r29]
  7f27f0:	40 06 7f 00 	dispose	0, {r29, lp}, lp

007f27f4 <_stdio_exit_handler>:
  7f27f4:	80 07 21 00 	prepare	{lp}, 0
  7f27f8:	28 06 1c 00 	mov	0xfe10001c, r8
  7f27fc:	10 fe 
  7f27fe:	27 06 08 3f 	mov	0x7f3f08, r7
  7f2802:	7f 00 
  7f2804:	26 06 28 00 	mov	0xfe100028, r6
  7f2808:	10 fe 
  7f280a:	80 ff 9c 05 	jarl	7f2da6 <__fwalk_sglue>, lp
  7f280e:	40 06 3f 00 	dispose	0, {lp}, lp

007f2812 <_cleanup_stdio>:
  7f2812:	80 07 61 00 	prepare	{r29, lp}, 0
  7f2816:	06 e8       	mov	r6, r29
  7f2818:	26 3f 05 00 	ld.w	4[r6], r7
  7f281c:	2a 06 c4 25 	mov	0xfe1025c4, r10
  7f2820:	10 fe 
  7f2822:	ea 39       	cmp	r10, r7
  7f2824:	b2 05       	be	7f282a <_cleanup_stdio+0x18>
  7f2826:	80 ff e2 16 	jarl	7f3f08 <__fclose_r>, lp
  7f282a:	3d 3f 09 00 	ld.w	8[r29], r7
  7f282e:	2a 06 2c 26 	mov	0xfe10262c, r10
  7f2832:	10 fe 
  7f2834:	ea 39       	cmp	r10, r7
  7f2836:	c2 05       	be	7f283e <_cleanup_stdio+0x2c>
  7f2838:	1d 30       	mov	r29, r6
  7f283a:	80 ff ce 16 	jarl	7f3f08 <__fclose_r>, lp
  7f283e:	3d 3f 0d 00 	ld.w	12[r29], r7
  7f2842:	2a 06 94 26 	mov	0xfe102694, r10
  7f2846:	10 fe 
  7f2848:	ea 39       	cmp	r10, r7
  7f284a:	c2 05       	be	7f2852 <_cleanup_stdio+0x40>
  7f284c:	1d 30       	mov	r29, r6
  7f284e:	80 ff ba 16 	jarl	7f3f08 <__fclose_r>, lp
  7f2852:	40 06 7f 00 	dispose	0, {r29, lp}, lp

007f2856 <_global_stdio_init.part___0>:
  7f2856:	80 07 61 00 	prepare	{r29, lp}, 0
  7f285a:	2b 06 f4 27 	mov	0x7f27f4, r11
  7f285e:	7f 00 
  7f2860:	2a 06 fc 26 	mov	0xfe1026fc, r10
  7f2864:	10 fe 
  7f2866:	3d 06 8e 27 	mov	0x7f278e, r29
  7f286a:	7f 00 
  7f286c:	00 42       	mov	0, r8
  7f286e:	04 3a       	mov	4, r7
  7f2870:	26 06 c4 25 	mov	0xfe1025c4, r6
  7f2874:	10 fe 
  7f2876:	6a 5f 01 00 	st.w	r11, 0[r10]
  7f287a:	fd c7 60 f9 	jarl	[r29], lp
  7f287e:	01 42       	mov	1, r8
  7f2880:	09 3a       	mov	9, r7
  7f2882:	26 06 2c 26 	mov	0xfe10262c, r6
  7f2886:	10 fe 
  7f2888:	fd c7 60 f9 	jarl	[r29], lp
  7f288c:	02 42       	mov	2, r8
  7f288e:	20 3e 12 00 	movea	18, r0, r7
  7f2892:	26 06 94 26 	mov	0xfe102694, r6
  7f2896:	10 fe 
  7f2898:	fd c7 60 f9 	jarl	[r29], lp
  7f289c:	40 06 7f 00 	dispose	0, {r29, lp}, lp

007f28a0 <___fp_unlock>:
  7f28a0:	00 52       	mov	0, r10
  7f28a2:	7f 00       	jmp	[lp]

007f28a4 <___sfp>:
  7f28a4:	80 07 e1 10 	prepare	{r27 - r29, lp}, 0
  7f28a8:	06 d8       	mov	r6, r27
  7f28aa:	2a 06 fc 26 	mov	0xfe1026fc, r10
  7f28ae:	10 fe 
  7f28b0:	2a 57 01 00 	ld.w	0[r10], r10
  7f28b4:	60 52       	cmp	0, r10
  7f28b6:	ba 05       	bne	7f28bc <___sfp+0x18>
  7f28b8:	bf ff 9e ff 	jarl	7f2856 <_global_stdio_init.part___0>, lp
  7f28bc:	3c 06 1c 00 	mov	0xfe10001c, r28
  7f28c0:	10 fe 
  7f28c2:	3c ef 09 00 	ld.w	8[r28], r29
  7f28c6:	3c 57 05 00 	ld.w	4[r28], r10
  7f28ca:	5f 52       	add	-1, r10
  7f28cc:	bc 15       	bp	7f28f2 <___sfp+0x4e>
  7f28ce:	3c ef 01 00 	ld.w	0[r28], r29
  7f28d2:	60 ea       	cmp	0, r29
  7f28d4:	aa 4d       	bne	7f2968 <___sfp+0xc4>
  7f28d6:	20 3e ac 01 	movea	428, r0, r7
  7f28da:	1b 30       	mov	r27, r6
  7f28dc:	80 ff a4 0b 	jarl	7f3480 <__malloc_r>, lp
  7f28e0:	60 52       	cmp	0, r10
  7f28e2:	0a e8       	mov	r10, r29
  7f28e4:	aa 35       	bne	7f2948 <___sfp+0xa4>
  7f28e6:	0c 52       	mov	12, r10
  7f28e8:	7c 07 01 00 	st.w	r0, 0[r28]
  7f28ec:	7b 57 01 00 	st.w	r10, 0[r27]
  7f28f0:	e5 25       	br	7f293c <___sfp+0x98>
  7f28f2:	3d 5f 0c 00 	ld.h	12[r29], r11
  7f28f6:	60 5a       	cmp	0, r11
  7f28f8:	da 25       	bne	7f2942 <___sfp+0x9e>
  7f28fa:	2a 06 01 00 	mov	0xffff0001, r10
  7f28fe:	ff ff 
  7f2900:	08 42       	mov	8, r8
  7f2902:	00 3a       	mov	0, r7
  7f2904:	1d 36 5c 00 	addi	92, r29, r6
  7f2908:	7d 07 65 00 	st.w	r0, 100[r29]
  7f290c:	7d 07 01 00 	st.w	r0, 0[r29]
  7f2910:	7d 07 05 00 	st.w	r0, 4[r29]
  7f2914:	7d 07 09 00 	st.w	r0, 8[r29]
  7f2918:	7d 57 0d 00 	st.w	r10, 12[r29]
  7f291c:	7d 07 11 00 	st.w	r0, 16[r29]
  7f2920:	7d 07 15 00 	st.w	r0, 20[r29]
  7f2924:	7d 07 19 00 	st.w	r0, 24[r29]
  7f2928:	80 ff de 06 	jarl	7f3006 <_memset>, lp
  7f292c:	7d 07 31 00 	st.w	r0, 48[r29]
  7f2930:	7d 07 35 00 	st.w	r0, 52[r29]
  7f2934:	7d 07 45 00 	st.w	r0, 68[r29]
  7f2938:	7d 07 49 00 	st.w	r0, 72[r29]
  7f293c:	1d 50       	mov	r29, r10
  7f293e:	40 06 ff 10 	dispose	0, {r27 - r29, lp}, lp
  7f2942:	1d ee 68 00 	addi	104, r29, r29
  7f2946:	a5 c5       	br	7f28ca <___sfp+0x26>
  7f2948:	6a 07 01 00 	st.w	r0, 0[r10]
  7f294c:	1d 36 0c 00 	addi	12, r29, r6
  7f2950:	04 52       	mov	4, r10
  7f2952:	20 46 a0 01 	movea	416, r0, r8
  7f2956:	00 3a       	mov	0, r7
  7f2958:	7d 57 05 00 	st.w	r10, 4[r29]
  7f295c:	7d 37 09 00 	st.w	r6, 8[r29]
  7f2960:	80 ff a6 06 	jarl	7f3006 <_memset>, lp
  7f2964:	7c ef 01 00 	st.w	r29, 0[r28]
  7f2968:	1d e0       	mov	r29, r28
  7f296a:	c5 ad       	br	7f28c2 <___sfp+0x1e>

007f296c <___sinit>:
  7f296c:	80 07 21 00 	prepare	{lp}, 0
  7f2970:	26 57 35 00 	ld.w	52[r6], r10
  7f2974:	60 52       	cmp	0, r10
  7f2976:	fa 0d       	bne	7f2994 <___sinit+0x28>
  7f2978:	2a 06 12 28 	mov	0x7f2812, r10
  7f297c:	7f 00 
  7f297e:	66 57 35 00 	st.w	r10, 52[r6]
  7f2982:	2a 06 fc 26 	mov	0xfe1026fc, r10
  7f2986:	10 fe 
  7f2988:	2a 57 01 00 	ld.w	0[r10], r10
  7f298c:	60 52       	cmp	0, r10
  7f298e:	ba 05       	bne	7f2994 <___sinit+0x28>
  7f2990:	bf ff c6 fe 	jarl	7f2856 <_global_stdio_init.part___0>, lp
  7f2994:	40 06 3f 00 	dispose	0, {lp}, lp

007f2998 <___sfp_lock_acquire>:
  7f2998:	7f 00       	jmp	[lp]

007f299a <___sfp_lock_release>:
  7f299a:	7f 00       	jmp	[lp]

007f299c <___fp_lock_all>:
  7f299c:	80 07 21 00 	prepare	{lp}, 0
  7f29a0:	28 06 1c 00 	mov	0xfe10001c, r8
  7f29a4:	10 fe 
  7f29a6:	27 06 8a 27 	mov	0x7f278a, r7
  7f29aa:	7f 00 
  7f29ac:	00 32       	mov	0, r6
  7f29ae:	80 ff f8 03 	jarl	7f2da6 <__fwalk_sglue>, lp
  7f29b2:	40 06 3f 00 	dispose	0, {lp}, lp

007f29b6 <___fp_unlock_all>:
  7f29b6:	80 07 21 00 	prepare	{lp}, 0
  7f29ba:	28 06 1c 00 	mov	0xfe10001c, r8
  7f29be:	10 fe 
  7f29c0:	27 06 a0 28 	mov	0x7f28a0, r7
  7f29c4:	7f 00 
  7f29c6:	00 32       	mov	0, r6
  7f29c8:	80 ff de 03 	jarl	7f2da6 <__fwalk_sglue>, lp
  7f29cc:	40 06 3f 00 	dispose	0, {lp}, lp

007f29d0 <___sfvwrite_r>:
  7f29d0:	03 1e d0 ff 	addi	-48, sp, sp
  7f29d4:	63 d7 0d 00 	st.w	r26, 12[sp]
  7f29d8:	63 e7 05 00 	st.w	r28, 4[sp]
  7f29dc:	63 ef 01 00 	st.w	r29, 0[sp]
  7f29e0:	63 ff 2d 00 	st.w	lp, 44[sp]
  7f29e4:	63 17 29 00 	st.w	r2, 40[sp]
  7f29e8:	63 a7 25 00 	st.w	r20, 36[sp]
  7f29ec:	63 af 21 00 	st.w	r21, 32[sp]
  7f29f0:	63 b7 1d 00 	st.w	r22, 28[sp]
  7f29f4:	63 bf 19 00 	st.w	r23, 24[sp]
  7f29f8:	63 c7 15 00 	st.w	r24, 20[sp]
  7f29fc:	63 cf 11 00 	st.w	r25, 16[sp]
  7f2a00:	63 df 09 00 	st.w	r27, 8[sp]
  7f2a04:	28 57 09 00 	ld.w	8[r8], r10
  7f2a08:	58 1a       	add	-8, sp
  7f2a0a:	06 e0       	mov	r6, r28
  7f2a0c:	07 e8       	mov	r7, r29
  7f2a0e:	60 52       	cmp	0, r10
  7f2a10:	08 d0       	mov	r8, r26
  7f2a12:	da 1d       	bne	7f2a4c <___sfvwrite_r+0x7c>
  7f2a14:	00 52       	mov	0, r10
  7f2a16:	23 ff 35 00 	ld.w	52[sp], lp
  7f2a1a:	23 17 31 00 	ld.w	48[sp], r2
  7f2a1e:	23 a7 2d 00 	ld.w	44[sp], r20
  7f2a22:	23 af 29 00 	ld.w	40[sp], r21
  7f2a26:	23 b7 25 00 	ld.w	36[sp], r22
  7f2a2a:	23 bf 21 00 	ld.w	32[sp], r23
  7f2a2e:	23 c7 1d 00 	ld.w	28[sp], r24
  7f2a32:	23 cf 19 00 	ld.w	24[sp], r25
  7f2a36:	23 d7 15 00 	ld.w	20[sp], r26
  7f2a3a:	23 df 11 00 	ld.w	16[sp], r27
  7f2a3e:	23 e7 0d 00 	ld.w	12[sp], r28
  7f2a42:	23 ef 09 00 	ld.w	8[sp], r29
  7f2a46:	03 1e 38 00 	addi	56, sp, sp
  7f2a4a:	7f 00       	jmp	[lp]
  7f2a4c:	27 57 0c 00 	ld.h	12[r7], r10
  7f2a50:	ca 56 08 00 	andi	8, r10, r10
  7f2a54:	60 52       	cmp	0, r10
  7f2a56:	e2 65       	be	7f2b22 <___sfvwrite_r+0x152>
  7f2a58:	27 57 11 00 	ld.w	16[r7], r10
  7f2a5c:	60 52       	cmp	0, r10
  7f2a5e:	a2 65       	be	7f2b22 <___sfvwrite_r+0x152>
  7f2a60:	3d 57 0c 00 	ld.h	12[r29], r10
  7f2a64:	3a df 01 00 	ld.w	0[r26], r27
  7f2a68:	ca 5e 02 00 	andi	2, r10, r11
  7f2a6c:	60 5a       	cmp	0, r11
  7f2a6e:	ea 07 03 01 	bne	7f2b70 <___sfvwrite_r+0x1a0>
  7f2a72:	ca 56 01 00 	andi	1, r10, r10
  7f2a76:	60 52       	cmp	0, r10
  7f2a78:	e2 07 77 01 	be	7f2bee <___sfvwrite_r+0x21e>
  7f2a7c:	00 12       	mov	0, r2
  7f2a7e:	00 52       	mov	0, r10
  7f2a80:	00 c2       	mov	0, r24
  7f2a82:	00 aa       	mov	0, r21
  7f2a84:	37 06 2c 27 	mov	0x7f272c, r23
  7f2a88:	7f 00 
  7f2a8a:	36 06 c8 2f 	mov	0x7f2fc8, r22
  7f2a8e:	7f 00 
  7f2a90:	34 06 94 2f 	mov	0x7f2f94, r20
  7f2a94:	7f 00 
  7f2a96:	60 aa       	cmp	0, r21
  7f2a98:	e2 07 a9 02 	be	7f2d40 <___sfvwrite_r+0x370>
  7f2a9c:	60 52       	cmp	0, r10
  7f2a9e:	ca 0d       	bne	7f2ab6 <___sfvwrite_r+0xe6>
  7f2aa0:	15 40       	mov	r21, r8
  7f2aa2:	0a 3a       	mov	10, r7
  7f2aa4:	18 30       	mov	r24, r6
  7f2aa6:	f4 c7 60 f9 	jarl	[r20], lp
  7f2aaa:	60 52       	cmp	0, r10
  7f2aac:	e2 07 a5 02 	be	7f2d50 <___sfvwrite_r+0x380>
  7f2ab0:	0a 16 01 00 	addi	1, r10, r2
  7f2ab4:	b8 11       	sub	r24, r2
  7f2ab6:	3d 37 01 00 	ld.w	0[r29], r6
  7f2aba:	3d 57 11 00 	ld.w	16[r29], r10
  7f2abe:	f5 11       	cmp	r21, r2
  7f2ac0:	3d 4f 15 00 	ld.w	20[r29], r9
  7f2ac4:	e2 af 26 43 	cmov	nh, r2, r21, r8
  7f2ac8:	ea 31       	cmp	r10, r6
  7f2aca:	e3 07 8f 02 	bnh	7f2d58 <___sfvwrite_r+0x388>
  7f2ace:	3d cf 09 00 	ld.w	8[r29], r25
  7f2ad2:	c9 c9       	add	r9, r25
  7f2ad4:	f9 41       	cmp	r25, r8
  7f2ad6:	e7 07 83 02 	ble	7f2d58 <___sfvwrite_r+0x388>
  7f2ada:	19 40       	mov	r25, r8
  7f2adc:	18 38       	mov	r24, r7
  7f2ade:	f6 c7 60 f9 	jarl	[r22], lp
  7f2ae2:	3d 57 01 00 	ld.w	0[r29], r10
  7f2ae6:	1d 38       	mov	r29, r7
  7f2ae8:	1c 30       	mov	r28, r6
  7f2aea:	d9 51       	add	r25, r10
  7f2aec:	7d 57 01 00 	st.w	r10, 0[r29]
  7f2af0:	f7 c7 60 f9 	jarl	[r23], lp
  7f2af4:	60 52       	cmp	0, r10
  7f2af6:	ea 07 61 01 	bne	7f2c56 <___sfvwrite_r+0x286>
  7f2afa:	b9 11       	sub	r25, r2
  7f2afc:	ea 07 a5 02 	bne	7f2da0 <___sfvwrite_r+0x3d0>
  7f2b00:	1d 38       	mov	r29, r7
  7f2b02:	1c 30       	mov	r28, r6
  7f2b04:	f7 c7 60 f9 	jarl	[r23], lp
  7f2b08:	60 52       	cmp	0, r10
  7f2b0a:	ea 07 4d 01 	bne	7f2c56 <___sfvwrite_r+0x286>
  7f2b0e:	3a 67 09 00 	ld.w	8[r26], r12
  7f2b12:	d9 c1       	add	r25, r24
  7f2b14:	b9 a9       	sub	r25, r21
  7f2b16:	b9 61       	sub	r25, r12
  7f2b18:	7a 67 09 00 	st.w	r12, 8[r26]
  7f2b1c:	da bd       	bne	7f2a96 <___sfvwrite_r+0xc6>
  7f2b1e:	bf 07 f6 fe 	jr	7f2a14 <___sfvwrite_r+0x44>
  7f2b22:	1d 38       	mov	r29, r7
  7f2b24:	1c 30       	mov	r28, r6
  7f2b26:	80 ff 80 03 	jarl	7f2ea6 <___swsetup_r>, lp
  7f2b2a:	60 52       	cmp	0, r10
  7f2b2c:	a2 9d       	be	7f2a60 <___sfvwrite_r+0x90>
  7f2b2e:	1f 52       	mov	-1, r10
  7f2b30:	bf 07 e6 fe 	jr	7f2a16 <___sfvwrite_r+0x46>
  7f2b34:	3b c7 01 00 	ld.w	0[r27], r24
  7f2b38:	3b cf 05 00 	ld.w	4[r27], r25
  7f2b3c:	48 da       	add	8, r27
  7f2b3e:	60 ca       	cmp	0, r25
  7f2b40:	a2 fd       	be	7f2b34 <___sfvwrite_r+0x164>
  7f2b42:	f7 c9       	cmp	r23, r25
  7f2b44:	3d 57 25 00 	ld.w	36[r29], r10
  7f2b48:	3d 3f 1d 00 	ld.w	28[r29], r7
  7f2b4c:	f9 bf 26 4b 	cmov	nh, r25, r23, r9
  7f2b50:	18 40       	mov	r24, r8
  7f2b52:	1c 30       	mov	r28, r6
  7f2b54:	ea c7 60 f9 	jarl	[r10], lp
  7f2b58:	60 52       	cmp	0, r10
  7f2b5a:	e7 7d       	ble	7f2c56 <___sfvwrite_r+0x286>
  7f2b5c:	3a 5f 09 00 	ld.w	8[r26], r11
  7f2b60:	ca c1       	add	r10, r24
  7f2b62:	aa c9       	sub	r10, r25
  7f2b64:	8b 51       	subr	r11, r10
  7f2b66:	7a 57 09 00 	st.w	r10, 8[r26]
  7f2b6a:	aa ed       	bne	7f2b3e <___sfvwrite_r+0x16e>
  7f2b6c:	bf 07 a8 fe 	jr	7f2a14 <___sfvwrite_r+0x44>
  7f2b70:	00 c2       	mov	0, r24
  7f2b72:	00 ca       	mov	0, r25
  7f2b74:	37 06 00 fc 	mov	0x7ffffc00, r23
  7f2b78:	ff 7f 
  7f2b7a:	a5 e5       	br	7f2b3e <___sfvwrite_r+0x16e>
  7f2b7c:	3b cf 01 00 	ld.w	0[r27], r25
  7f2b80:	3b af 05 00 	ld.w	4[r27], r21
  7f2b84:	48 da       	add	8, r27
  7f2b86:	60 aa       	cmp	0, r21
  7f2b88:	a2 fd       	be	7f2b7c <___sfvwrite_r+0x1ac>
  7f2b8a:	3d 57 0c 00 	ld.h	12[r29], r10
  7f2b8e:	3d 37 01 00 	ld.w	0[r29], r6
  7f2b92:	ca 66 00 02 	andi	512, r10, r12
  7f2b96:	3d 6f 09 00 	ld.w	8[r29], r13
  7f2b9a:	60 62       	cmp	0, r12
  7f2b9c:	e2 07 35 01 	be	7f2cd0 <___sfvwrite_r+0x300>
  7f2ba0:	f5 69       	cmp	r21, r13
  7f2ba2:	0d 40       	mov	r13, r8
  7f2ba4:	93 35       	bnh	7f2c06 <___sfvwrite_r+0x236>
  7f2ba6:	15 68       	mov	r21, r13
  7f2ba8:	15 b0       	mov	r21, r22
  7f2baa:	15 40       	mov	r21, r8
  7f2bac:	3d 37 01 00 	ld.w	0[r29], r6
  7f2bb0:	19 38       	mov	r25, r7
  7f2bb2:	63 6f 05 00 	st.w	r13, 4[sp]
  7f2bb6:	63 47 01 00 	st.w	r8, 0[sp]
  7f2bba:	f8 c7 60 f9 	jarl	[r24], lp
  7f2bbe:	3d 57 09 00 	ld.w	8[r29], r10
  7f2bc2:	23 6f 05 00 	ld.w	4[sp], r13
  7f2bc6:	23 47 01 00 	ld.w	0[sp], r8
  7f2bca:	ad 51       	sub	r13, r10
  7f2bcc:	7d 57 09 00 	st.w	r10, 8[r29]
  7f2bd0:	3d 57 01 00 	ld.w	0[r29], r10
  7f2bd4:	c8 51       	add	r8, r10
  7f2bd6:	7d 57 01 00 	st.w	r10, 0[r29]
  7f2bda:	3a 57 09 00 	ld.w	8[r26], r10
  7f2bde:	d6 c9       	add	r22, r25
  7f2be0:	b6 a9       	sub	r22, r21
  7f2be2:	b6 51       	sub	r22, r10
  7f2be4:	7a 57 09 00 	st.w	r10, 8[r26]
  7f2be8:	fa cd       	bne	7f2b86 <___sfvwrite_r+0x1b6>
  7f2bea:	bf 07 2a fe 	jr	7f2a14 <___sfvwrite_r+0x44>
  7f2bee:	00 ca       	mov	0, r25
  7f2bf0:	00 aa       	mov	0, r21
  7f2bf2:	38 06 c8 2f 	mov	0x7f2fc8, r24
  7f2bf6:	7f 00 
  7f2bf8:	37 06 ff ff 	mov	0x7fffffff, r23
  7f2bfc:	ff 7f 
  7f2bfe:	22 06 ae 2f 	mov	0x7f2fae, r2
  7f2c02:	7f 00 
  7f2c04:	95 c5       	br	7f2b86 <___sfvwrite_r+0x1b6>
  7f2c06:	ca 66 80 04 	andi	1152, r10, r12
  7f2c0a:	60 62       	cmp	0, r12
  7f2c0c:	f2 5d       	be	7f2cca <___sfvwrite_r+0x2fa>
  7f2c0e:	3d 67 15 00 	ld.w	20[r29], r12
  7f2c12:	3d 3f 11 00 	ld.w	16[r29], r7
  7f2c16:	0c 68       	mov	r12, r13
  7f2c18:	a7 31       	sub	r7, r6
  7f2c1a:	cc 69       	add	r12, r13
  7f2c1c:	06 b0       	mov	r6, r22
  7f2c1e:	cc 69       	add	r12, r13
  7f2c20:	0d 30       	mov	r13, r6
  7f2c22:	9f 32       	shr	31, r6
  7f2c24:	cd 31       	add	r13, r6
  7f2c26:	16 6e 01 00 	addi	1, r22, r13
  7f2c2a:	a1 32       	sar	1, r6
  7f2c2c:	d5 69       	add	r21, r13
  7f2c2e:	e6 69       	cmp	r6, r13
  7f2c30:	06 a0       	mov	r6, r20
  7f2c32:	06 40       	mov	r6, r8
  7f2c34:	b3 05       	bnh	7f2c3a <___sfvwrite_r+0x26a>
  7f2c36:	0d a0       	mov	r13, r20
  7f2c38:	0d 40       	mov	r13, r8
  7f2c3a:	ca 56 00 04 	andi	1024, r10, r10
  7f2c3e:	60 52       	cmp	0, r10
  7f2c40:	a2 35       	be	7f2ca4 <___sfvwrite_r+0x2d4>
  7f2c42:	1c 30       	mov	r28, r6
  7f2c44:	08 38       	mov	r8, r7
  7f2c46:	80 ff 3a 08 	jarl	7f3480 <__malloc_r>, lp
  7f2c4a:	60 52       	cmp	0, r10
  7f2c4c:	0a 30       	mov	r10, r6
  7f2c4e:	ca 0d       	bne	7f2c66 <___sfvwrite_r+0x296>
  7f2c50:	0c 52       	mov	12, r10
  7f2c52:	7c 57 01 00 	st.w	r10, 0[r28]
  7f2c56:	3d 57 0c 00 	ld.h	12[r29], r10
  7f2c5a:	8a 56 40 00 	ori	64, r10, r10
  7f2c5e:	7d 57 0c 00 	st.h	r10, 12[r29]
  7f2c62:	bf 07 cc fe 	jr	7f2b2e <___sfvwrite_r+0x15e>
  7f2c66:	3d 3f 11 00 	ld.w	16[r29], r7
  7f2c6a:	16 40       	mov	r22, r8
  7f2c6c:	63 57 01 00 	st.w	r10, 0[sp]
  7f2c70:	e2 c7 60 f9 	jarl	[r2], lp
  7f2c74:	3d 57 0c 00 	ld.h	12[r29], r10
  7f2c78:	20 5e 7f fb 	movea	-1153, r0, r11
  7f2c7c:	4b 51       	and	r11, r10
  7f2c7e:	23 37 01 00 	ld.w	0[sp], r6
  7f2c82:	8a 56 80 00 	ori	128, r10, r10
  7f2c86:	7d 57 0c 00 	st.h	r10, 12[r29]
  7f2c8a:	7d 37 11 00 	st.w	r6, 16[r29]
  7f2c8e:	d6 31       	add	r22, r6
  7f2c90:	7d 37 01 00 	st.w	r6, 0[r29]
  7f2c94:	14 30       	mov	r20, r6
  7f2c96:	b6 31       	sub	r22, r6
  7f2c98:	15 68       	mov	r21, r13
  7f2c9a:	7d a7 15 00 	st.w	r20, 20[r29]
  7f2c9e:	7d 37 09 00 	st.w	r6, 8[r29]
  7f2ca2:	b5 85       	br	7f2ba8 <___sfvwrite_r+0x1d8>
  7f2ca4:	1c 30       	mov	r28, r6
  7f2ca6:	80 ff da 0d 	jarl	7f3a80 <__realloc_r>, lp
  7f2caa:	60 52       	cmp	0, r10
  7f2cac:	0a 30       	mov	r10, r6
  7f2cae:	ea ed       	bne	7f2c8a <___sfvwrite_r+0x2ba>
  7f2cb0:	3d 3f 11 00 	ld.w	16[r29], r7
  7f2cb4:	1c 30       	mov	r28, r6
  7f2cb6:	80 ff ba 05 	jarl	7f3270 <__free_r>, lp
  7f2cba:	3d 57 0c 00 	ld.h	12[r29], r10
  7f2cbe:	20 5e 7f ff 	movea	-129, r0, r11
  7f2cc2:	4b 51       	and	r11, r10
  7f2cc4:	7d 57 0c 00 	st.h	r10, 12[r29]
  7f2cc8:	c5 c5       	br	7f2c50 <___sfvwrite_r+0x280>
  7f2cca:	15 b0       	mov	r21, r22
  7f2ccc:	bf 07 e0 fe 	jr	7f2bac <___sfvwrite_r+0x1dc>
  7f2cd0:	3d 57 11 00 	ld.w	16[r29], r10
  7f2cd4:	e6 51       	cmp	r6, r10
  7f2cd6:	d1 05       	bl	7f2ce0 <___sfvwrite_r+0x310>
  7f2cd8:	3d 57 15 00 	ld.w	20[r29], r10
  7f2cdc:	f5 51       	cmp	r21, r10
  7f2cde:	d3 1d       	bnh	7f2d18 <___sfvwrite_r+0x348>
  7f2ce0:	f5 69       	cmp	r21, r13
  7f2ce2:	19 38       	mov	r25, r7
  7f2ce4:	ed af 26 b3 	cmov	nh, r13, r21, r22
  7f2ce8:	16 40       	mov	r22, r8
  7f2cea:	f8 c7 60 f9 	jarl	[r24], lp
  7f2cee:	3d 57 09 00 	ld.w	8[r29], r10
  7f2cf2:	3d 6f 01 00 	ld.w	0[r29], r13
  7f2cf6:	b6 51       	sub	r22, r10
  7f2cf8:	d6 69       	add	r22, r13
  7f2cfa:	60 52       	cmp	0, r10
  7f2cfc:	7d 57 09 00 	st.w	r10, 8[r29]
  7f2d00:	7d 6f 01 00 	st.w	r13, 0[r29]
  7f2d04:	fa 07 d7 fe 	bne	7f2bda <___sfvwrite_r+0x20a>
  7f2d08:	1d 38       	mov	r29, r7
  7f2d0a:	1c 30       	mov	r28, r6
  7f2d0c:	bf ff 20 fa 	jarl	7f272c <__fflush_r>, lp
  7f2d10:	60 52       	cmp	0, r10
  7f2d12:	f2 07 c9 fe 	be	7f2bda <___sfvwrite_r+0x20a>
  7f2d16:	85 a5       	br	7f2c56 <___sfvwrite_r+0x286>
  7f2d18:	f7 a9       	cmp	r23, r21
  7f2d1a:	3d 3f 1d 00 	ld.w	28[r29], r7
  7f2d1e:	f5 bf 26 63 	cmov	nh, r21, r23, r12
  7f2d22:	19 40       	mov	r25, r8
  7f2d24:	0c 58       	mov	r12, r11
  7f2d26:	1c 30       	mov	r28, r6
  7f2d28:	ea 5f fc 4a 	divq	r10, r11, r9
  7f2d2c:	3d 57 25 00 	ld.w	36[r29], r10
  7f2d30:	8c 49       	subr	r12, r9
  7f2d32:	ea c7 60 f9 	jarl	[r10], lp
  7f2d36:	60 52       	cmp	0, r10
  7f2d38:	0a b0       	mov	r10, r22
  7f2d3a:	ff 07 a1 fe 	bgt	7f2bda <___sfvwrite_r+0x20a>
  7f2d3e:	c5 8d       	br	7f2c56 <___sfvwrite_r+0x286>
  7f2d40:	3b c7 01 00 	ld.w	0[r27], r24
  7f2d44:	3b af 05 00 	ld.w	4[r27], r21
  7f2d48:	00 52       	mov	0, r10
  7f2d4a:	48 da       	add	8, r27
  7f2d4c:	bf 07 4a fd 	jr	7f2a96 <___sfvwrite_r+0xc6>
  7f2d50:	15 16 01 00 	addi	1, r21, r2
  7f2d54:	bf 07 62 fd 	jr	7f2ab6 <___sfvwrite_r+0xe6>
  7f2d58:	e8 49       	cmp	r8, r9
  7f2d5a:	ff 0d       	bgt	7f2d78 <___sfvwrite_r+0x3a8>
  7f2d5c:	3d 57 25 00 	ld.w	36[r29], r10
  7f2d60:	3d 3f 1d 00 	ld.w	28[r29], r7
  7f2d64:	18 40       	mov	r24, r8
  7f2d66:	1c 30       	mov	r28, r6
  7f2d68:	ea c7 60 f9 	jarl	[r10], lp
  7f2d6c:	60 52       	cmp	0, r10
  7f2d6e:	0a c8       	mov	r10, r25
  7f2d70:	ff 07 8b fd 	bgt	7f2afa <___sfvwrite_r+0x12a>
  7f2d74:	bf 07 e2 fe 	jr	7f2c56 <___sfvwrite_r+0x286>
  7f2d78:	18 38       	mov	r24, r7
  7f2d7a:	63 47 01 00 	st.w	r8, 0[sp]
  7f2d7e:	f6 c7 60 f9 	jarl	[r22], lp
  7f2d82:	23 47 01 00 	ld.w	0[sp], r8
  7f2d86:	3d 57 09 00 	ld.w	8[r29], r10
  7f2d8a:	a8 51       	sub	r8, r10
  7f2d8c:	08 c8       	mov	r8, r25
  7f2d8e:	7d 57 09 00 	st.w	r10, 8[r29]
  7f2d92:	3d 57 01 00 	ld.w	0[r29], r10
  7f2d96:	c8 51       	add	r8, r10
  7f2d98:	7d 57 01 00 	st.w	r10, 0[r29]
  7f2d9c:	bf 07 5e fd 	jr	7f2afa <___sfvwrite_r+0x12a>
  7f2da0:	01 52       	mov	1, r10
  7f2da2:	bf 07 6c fd 	jr	7f2b0e <___sfvwrite_r+0x13e>

007f2da6 <__fwalk_sglue>:
  7f2da6:	80 07 e1 f0 	prepare	{r24 - r29, lp}, 0
  7f2daa:	06 d0       	mov	r6, r26
  7f2dac:	07 c8       	mov	r7, r25
  7f2dae:	08 e8       	mov	r8, r29
  7f2db0:	00 da       	mov	0, r27
  7f2db2:	3d e7 09 00 	ld.w	8[r29], r28
  7f2db6:	3d c7 05 00 	ld.w	4[r29], r24
  7f2dba:	5f c2       	add	-1, r24
  7f2dbc:	8c 0d       	bp	7f2dcc <__fwalk_sglue+0x26>
  7f2dbe:	3d ef 01 00 	ld.w	0[r29], r29
  7f2dc2:	60 ea       	cmp	0, r29
  7f2dc4:	fa f5       	bne	7f2db2 <__fwalk_sglue+0xc>
  7f2dc6:	1b 50       	mov	r27, r10
  7f2dc8:	40 06 ff f0 	dispose	0, {r24 - r29, lp}, lp
  7f2dcc:	fc 57 0d 00 	ld.hu	12[r28], r10
  7f2dd0:	61 52       	cmp	1, r10
  7f2dd2:	a3 0d       	bnh	7f2de6 <__fwalk_sglue+0x40>
  7f2dd4:	3c 57 0e 00 	ld.h	14[r28], r10
  7f2dd8:	7f 52       	cmp	-1, r10
  7f2dda:	e2 05       	be	7f2de6 <__fwalk_sglue+0x40>
  7f2ddc:	1c 38       	mov	r28, r7
  7f2dde:	1a 30       	mov	r26, r6
  7f2de0:	f9 c7 60 f9 	jarl	[r25], lp
  7f2de4:	0a d9       	or	r10, r27
  7f2de6:	1c e6 68 00 	addi	104, r28, r28
  7f2dea:	85 ed       	br	7f2dba <__fwalk_sglue+0x14>

007f2dec <___sread>:
  7f2dec:	80 07 61 00 	prepare	{r29, lp}, 0
  7f2df0:	07 e8       	mov	r7, r29
  7f2df2:	27 3f 0e 00 	ld.h	14[r7], r7
  7f2df6:	80 ff 40 03 	jarl	7f3136 <__read_r>, lp
  7f2dfa:	60 52       	cmp	0, r10
  7f2dfc:	86 0d       	blt	7f2e0c <___sread+0x20>
  7f2dfe:	3d 5f 51 00 	ld.w	80[r29], r11
  7f2e02:	ca 59       	add	r10, r11
  7f2e04:	7d 5f 51 00 	st.w	r11, 80[r29]
  7f2e08:	40 06 7f 00 	dispose	0, {r29, lp}, lp
  7f2e0c:	3d 5f 0c 00 	ld.h	12[r29], r11
  7f2e10:	20 66 ff ef 	movea	-4097, r0, r12
  7f2e14:	4c 59       	and	r12, r11
  7f2e16:	7d 5f 0c 00 	st.h	r11, 12[r29]
  7f2e1a:	f5 f5       	br	7f2e08 <___sread+0x1c>

007f2e1c <___seofread>:
  7f2e1c:	00 52       	mov	0, r10
  7f2e1e:	7f 00       	jmp	[lp]

007f2e20 <___swrite>:
  7f2e20:	80 07 e1 30 	prepare	{r26 - r29, lp}, 0
  7f2e24:	06 e0       	mov	r6, r28
  7f2e26:	27 57 0c 00 	ld.h	12[r7], r10
  7f2e2a:	07 e8       	mov	r7, r29
  7f2e2c:	ca 56 00 01 	andi	256, r10, r10
  7f2e30:	08 d8       	mov	r8, r27
  7f2e32:	60 52       	cmp	0, r10
  7f2e34:	09 d0       	mov	r9, r26
  7f2e36:	f2 05       	be	7f2e44 <___swrite+0x24>
  7f2e38:	02 4a       	mov	2, r9
  7f2e3a:	00 42       	mov	0, r8
  7f2e3c:	27 3f 0e 00 	ld.h	14[r7], r7
  7f2e40:	80 ff c8 02 	jarl	7f3108 <__lseek_r>, lp
  7f2e44:	3d 57 0c 00 	ld.h	12[r29], r10
  7f2e48:	20 5e ff ef 	movea	-4097, r0, r11
  7f2e4c:	4b 51       	and	r11, r10
  7f2e4e:	1a 48       	mov	r26, r9
  7f2e50:	1b 40       	mov	r27, r8
  7f2e52:	3d 3f 0e 00 	ld.h	14[r29], r7
  7f2e56:	1c 30       	mov	r28, r6
  7f2e58:	7d 57 0c 00 	st.h	r10, 12[r29]
  7f2e5c:	80 ff 08 03 	jarl	7f3164 <__write_r>, lp
  7f2e60:	40 06 ff 30 	dispose	0, {r26 - r29, lp}, lp

007f2e64 <___sseek>:
  7f2e64:	80 07 61 00 	prepare	{r29, lp}, 0
  7f2e68:	07 e8       	mov	r7, r29
  7f2e6a:	27 3f 0e 00 	ld.h	14[r7], r7
  7f2e6e:	80 ff 9a 02 	jarl	7f3108 <__lseek_r>, lp
  7f2e72:	7f 52       	cmp	-1, r10
  7f2e74:	3d 5f 0c 00 	ld.h	12[r29], r11
  7f2e78:	8a 0d       	bne	7f2e88 <___sseek+0x24>
  7f2e7a:	20 66 ff ef 	movea	-4097, r0, r12
  7f2e7e:	4c 59       	and	r12, r11
  7f2e80:	7d 5f 0c 00 	st.h	r11, 12[r29]
  7f2e84:	40 06 7f 00 	dispose	0, {r29, lp}, lp
  7f2e88:	8b 5e 00 10 	ori	4096, r11, r11
  7f2e8c:	7d 57 51 00 	st.w	r10, 80[r29]
  7f2e90:	7d 5f 0c 00 	st.h	r11, 12[r29]
  7f2e94:	85 fd       	br	7f2e84 <___sseek+0x20>

007f2e96 <___sclose>:
  7f2e96:	80 07 21 00 	prepare	{lp}, 0
  7f2e9a:	27 3f 0e 00 	ld.h	14[r7], r7
  7f2e9e:	80 ff a6 01 	jarl	7f3044 <__close_r>, lp
  7f2ea2:	40 06 3f 00 	dispose	0, {lp}, lp

007f2ea6 <___swsetup_r>:
  7f2ea6:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f2eaa:	06 e0       	mov	r6, r28
  7f2eac:	24 37 01 f8 	ld.w	-2048[gp], r6
  7f2eb0:	07 e8       	mov	r7, r29
  7f2eb2:	60 32       	cmp	0, r6
  7f2eb4:	f2 05       	be	7f2ec2 <___swsetup_r+0x1c>
  7f2eb6:	26 57 35 00 	ld.w	52[r6], r10
  7f2eba:	60 52       	cmp	0, r10
  7f2ebc:	ba 05       	bne	7f2ec2 <___swsetup_r+0x1c>
  7f2ebe:	bf ff ae fa 	jarl	7f296c <___sinit>, lp
  7f2ec2:	3d 57 0c 00 	ld.h	12[r29], r10
  7f2ec6:	ca 5e 08 00 	andi	8, r10, r11
  7f2eca:	60 5a       	cmp	0, r11
  7f2ecc:	fa 2d       	bne	7f2f2a <___swsetup_r+0x84>
  7f2ece:	ca 5e 10 00 	andi	16, r10, r11
  7f2ed2:	60 5a       	cmp	0, r11
  7f2ed4:	ba 0d       	bne	7f2eea <___swsetup_r+0x44>
  7f2ed6:	09 5a       	mov	9, r11
  7f2ed8:	8a 56 40 00 	ori	64, r10, r10
  7f2edc:	7c 5f 01 00 	st.w	r11, 0[r28]
  7f2ee0:	7d 57 0c 00 	st.h	r10, 12[r29]
  7f2ee4:	1f 52       	mov	-1, r10
  7f2ee6:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp
  7f2eea:	ca 5e 04 00 	andi	4, r10, r11
  7f2eee:	60 5a       	cmp	0, r11
  7f2ef0:	92 1d       	be	7f2f22 <___swsetup_r+0x7c>
  7f2ef2:	3d 3f 31 00 	ld.w	48[r29], r7
  7f2ef6:	60 3a       	cmp	0, r7
  7f2ef8:	a2 0d       	be	7f2f0c <___swsetup_r+0x66>
  7f2efa:	1d 56 40 00 	addi	64, r29, r10
  7f2efe:	ea 39       	cmp	r10, r7
  7f2f00:	c2 05       	be	7f2f08 <___swsetup_r+0x62>
  7f2f02:	1c 30       	mov	r28, r6
  7f2f04:	80 ff 6c 03 	jarl	7f3270 <__free_r>, lp
  7f2f08:	7d 07 31 00 	st.w	r0, 48[r29]
  7f2f0c:	20 5e db ff 	movea	-37, r0, r11
  7f2f10:	3d 57 0c 00 	ld.h	12[r29], r10
  7f2f14:	4b 51       	and	r11, r10
  7f2f16:	3d 5f 11 00 	ld.w	16[r29], r11
  7f2f1a:	7d 07 05 00 	st.w	r0, 4[r29]
  7f2f1e:	7d 5f 01 00 	st.w	r11, 0[r29]
  7f2f22:	8a 56 08 00 	ori	8, r10, r10
  7f2f26:	7d 57 0c 00 	st.h	r10, 12[r29]
  7f2f2a:	3d 5f 11 00 	ld.w	16[r29], r11
  7f2f2e:	60 5a       	cmp	0, r11
  7f2f30:	ba 0d       	bne	7f2f46 <___swsetup_r+0xa0>
  7f2f32:	ca 56 80 02 	andi	640, r10, r10
  7f2f36:	20 5e 00 02 	movea	512, r0, r11
  7f2f3a:	eb 51       	cmp	r11, r10
  7f2f3c:	d2 05       	be	7f2f46 <___swsetup_r+0xa0>
  7f2f3e:	1d 38       	mov	r29, r7
  7f2f40:	1c 30       	mov	r28, r6
  7f2f42:	80 ff d4 10 	jarl	7f4016 <___smakebuf_r>, lp
  7f2f46:	3d 5f 0c 00 	ld.h	12[r29], r11
  7f2f4a:	cb 56 01 00 	andi	1, r11, r10
  7f2f4e:	60 52       	cmp	0, r10
  7f2f50:	d2 15       	be	7f2f7a <___swsetup_r+0xd4>
  7f2f52:	3d 57 15 00 	ld.w	20[r29], r10
  7f2f56:	7d 07 09 00 	st.w	r0, 8[r29]
  7f2f5a:	80 51       	subr	r0, r10
  7f2f5c:	7d 57 19 00 	st.w	r10, 24[r29]
  7f2f60:	3d 57 11 00 	ld.w	16[r29], r10
  7f2f64:	60 52       	cmp	0, r10
  7f2f66:	da 15       	bne	7f2f90 <___swsetup_r+0xea>
  7f2f68:	cb 66 80 00 	andi	128, r11, r12
  7f2f6c:	60 62       	cmp	0, r12
  7f2f6e:	c2 bd       	be	7f2ee6 <___swsetup_r+0x40>
  7f2f70:	8b 5e 40 00 	ori	64, r11, r11
  7f2f74:	7d 5f 0c 00 	st.h	r11, 12[r29]
  7f2f78:	e5 b5       	br	7f2ee4 <___swsetup_r+0x3e>
  7f2f7a:	cb 56 02 00 	andi	2, r11, r10
  7f2f7e:	60 52       	cmp	0, r10
  7f2f80:	ea 05       	bne	7f2f8c <___swsetup_r+0xe6>
  7f2f82:	3d 57 15 00 	ld.w	20[r29], r10
  7f2f86:	7d 57 09 00 	st.w	r10, 8[r29]
  7f2f8a:	b5 ed       	br	7f2f60 <___swsetup_r+0xba>
  7f2f8c:	00 52       	mov	0, r10
  7f2f8e:	c5 fd       	br	7f2f86 <___swsetup_r+0xe0>
  7f2f90:	00 52       	mov	0, r10
  7f2f92:	a5 ad       	br	7f2ee6 <___swsetup_r+0x40>

007f2f94 <_memchr>:
  7f2f94:	06 50       	mov	r6, r10
  7f2f96:	87 00       	zxb	r7
  7f2f98:	c6 41       	add	r6, r8
  7f2f9a:	e8 51       	cmp	r8, r10
  7f2f9c:	ba 05       	bne	7f2fa2 <_memchr+0xe>
  7f2f9e:	00 52       	mov	0, r10
  7f2fa0:	7f 00       	jmp	[lp]
  7f2fa2:	8a 5f 01 00 	ld.bu	0[r10], r11
  7f2fa6:	e7 59       	cmp	r7, r11
  7f2fa8:	c2 fd       	be	7f2fa0 <_memchr+0xc>
  7f2faa:	41 52       	add	1, r10
  7f2fac:	f5 f5       	br	7f2f9a <_memchr+0x6>

007f2fae <_memcpy>:
  7f2fae:	06 50       	mov	r6, r10
  7f2fb0:	c6 41       	add	r6, r8
  7f2fb2:	06 58       	mov	r6, r11
  7f2fb4:	e8 59       	cmp	r8, r11
  7f2fb6:	aa 05       	bne	7f2fba <_memcpy+0xc>
  7f2fb8:	7f 00       	jmp	[lp]
  7f2fba:	41 5a       	add	1, r11
  7f2fbc:	07 67 00 00 	ld.b	0[r7], r12
  7f2fc0:	41 3a       	add	1, r7
  7f2fc2:	4b 67 ff ff 	st.b	r12, -1[r11]
  7f2fc6:	f5 f5       	br	7f2fb4 <_memcpy+0x6>

007f2fc8 <_memmove>:
  7f2fc8:	e7 31       	cmp	r7, r6
  7f2fca:	06 50       	mov	r6, r10
  7f2fcc:	d3 05       	bnh	7f2fd6 <_memmove+0xe>
  7f2fce:	07 58       	mov	r7, r11
  7f2fd0:	c8 59       	add	r8, r11
  7f2fd2:	eb 31       	cmp	r11, r6
  7f2fd4:	e1 0d       	bl	7f2ff0 <_memmove+0x28>
  7f2fd6:	ca 41       	add	r10, r8
  7f2fd8:	0a 58       	mov	r10, r11
  7f2fda:	e8 59       	cmp	r8, r11
  7f2fdc:	ea 0d       	bne	7f2ff8 <_memmove+0x30>
  7f2fde:	7f 00       	jmp	[lp]
  7f2fe0:	07 58       	mov	r7, r11
  7f2fe2:	c8 59       	add	r8, r11
  7f2fe4:	0b 67 00 00 	ld.b	0[r11], r12
  7f2fe8:	0a 58       	mov	r10, r11
  7f2fea:	c8 59       	add	r8, r11
  7f2fec:	4b 67 00 00 	st.b	r12, 0[r11]
  7f2ff0:	5f 42       	add	-1, r8
  7f2ff2:	7f 42       	cmp	-1, r8
  7f2ff4:	ea f5       	bne	7f2fe0 <_memmove+0x18>
  7f2ff6:	7f 00       	jmp	[lp]
  7f2ff8:	41 5a       	add	1, r11
  7f2ffa:	07 67 00 00 	ld.b	0[r7], r12
  7f2ffe:	41 3a       	add	1, r7
  7f3000:	4b 67 ff ff 	st.b	r12, -1[r11]
  7f3004:	b5 ed       	br	7f2fda <_memmove+0x12>

007f3006 <_memset>:
  7f3006:	06 50       	mov	r6, r10
  7f3008:	c6 41       	add	r6, r8
  7f300a:	06 58       	mov	r6, r11
  7f300c:	e8 59       	cmp	r8, r11
  7f300e:	aa 05       	bne	7f3012 <_memset+0xc>
  7f3010:	7f 00       	jmp	[lp]
  7f3012:	41 5a       	add	1, r11
  7f3014:	4b 3f ff ff 	st.b	r7, -1[r11]
  7f3018:	a5 fd       	br	7f300c <_memset+0x6>

007f301a <_strcpy>:
  7f301a:	06 50       	mov	r6, r10
  7f301c:	06 58       	mov	r6, r11
  7f301e:	41 3a       	add	1, r7
  7f3020:	41 5a       	add	1, r11
  7f3022:	07 67 ff ff 	ld.b	-1[r7], r12
  7f3026:	60 62       	cmp	0, r12
  7f3028:	4b 67 ff ff 	st.b	r12, -1[r11]
  7f302c:	9a fd       	bne	7f301e <_strcpy+0x4>
  7f302e:	7f 00       	jmp	[lp]

007f3030 <_strlen>:
  7f3030:	06 50       	mov	r6, r10
  7f3032:	06 58       	mov	r6, r11
  7f3034:	0b 67 00 00 	ld.b	0[r11], r12
  7f3038:	60 62       	cmp	0, r12
  7f303a:	ba 05       	bne	7f3040 <_strlen+0x10>
  7f303c:	8b 51       	subr	r11, r10
  7f303e:	7f 00       	jmp	[lp]
  7f3040:	41 5a       	add	1, r11
  7f3042:	95 fd       	br	7f3034 <_strlen+0x4>

007f3044 <__close_r>:
  7f3044:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f3048:	06 e8       	mov	r6, r29
  7f304a:	3c 06 00 27 	mov	0xfe102700, r28
  7f304e:	10 fe 
  7f3050:	07 30       	mov	r7, r6
  7f3052:	7c 07 01 00 	st.w	r0, 0[r28]
  7f3056:	bf ff 72 d2 	jarl	7f02c8 <__close>, lp
  7f305a:	7f 52       	cmp	-1, r10
  7f305c:	fa 05       	bne	7f306a <__close_r+0x26>
  7f305e:	3c 5f 01 00 	ld.w	0[r28], r11
  7f3062:	60 5a       	cmp	0, r11
  7f3064:	b2 05       	be	7f306a <__close_r+0x26>
  7f3066:	7d 5f 01 00 	st.w	r11, 0[r29]
  7f306a:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp

007f306e <__reclaim_reent>:
  7f306e:	80 07 e1 70 	prepare	{r25 - r29, lp}, 0
  7f3072:	06 e8       	mov	r6, r29
  7f3074:	24 57 01 f8 	ld.w	-2048[gp], r10
  7f3078:	e6 51       	cmp	r6, r10
  7f307a:	e2 3d       	be	7f30f6 <__reclaim_reent+0x88>
  7f307c:	26 57 45 00 	ld.w	68[r6], r10
  7f3080:	60 52       	cmp	0, r10
  7f3082:	e2 15       	be	7f30ae <__reclaim_reent+0x40>
  7f3084:	00 e2       	mov	0, r28
  7f3086:	3a 06 70 32 	mov	0x7f3270, r26
  7f308a:	7f 00 
  7f308c:	20 de 80 00 	movea	128, r0, r27
  7f3090:	3d 57 45 00 	ld.w	68[r29], r10
  7f3094:	dc 51       	add	r28, r10
  7f3096:	2a 3f 01 00 	ld.w	0[r10], r7
  7f309a:	60 3a       	cmp	0, r7
  7f309c:	fa 2d       	bne	7f30fa <__reclaim_reent+0x8c>
  7f309e:	44 e2       	add	4, r28
  7f30a0:	fb e1       	cmp	r27, r28
  7f30a2:	fa f5       	bne	7f3090 <__reclaim_reent+0x22>
  7f30a4:	3d 3f 45 00 	ld.w	68[r29], r7
  7f30a8:	1d 30       	mov	r29, r6
  7f30aa:	80 ff c6 01 	jarl	7f3270 <__free_r>, lp
  7f30ae:	3d 3f 39 00 	ld.w	56[r29], r7
  7f30b2:	60 3a       	cmp	0, r7
  7f30b4:	c2 05       	be	7f30bc <__reclaim_reent+0x4e>
  7f30b6:	1d 30       	mov	r29, r6
  7f30b8:	80 ff b8 01 	jarl	7f3270 <__free_r>, lp
  7f30bc:	3d e7 41 00 	ld.w	64[r29], r28
  7f30c0:	60 e2       	cmp	0, r28
  7f30c2:	c2 0d       	be	7f30da <__reclaim_reent+0x6c>
  7f30c4:	3b 06 70 32 	mov	0x7f3270, r27
  7f30c8:	7f 00 
  7f30ca:	1c 38       	mov	r28, r7
  7f30cc:	1d 30       	mov	r29, r6
  7f30ce:	3c e7 01 00 	ld.w	0[r28], r28
  7f30d2:	fb c7 60 f9 	jarl	[r27], lp
  7f30d6:	60 e2       	cmp	0, r28
  7f30d8:	9a fd       	bne	7f30ca <__reclaim_reent+0x5c>
  7f30da:	3d 3f 4d 00 	ld.w	76[r29], r7
  7f30de:	60 3a       	cmp	0, r7
  7f30e0:	c2 05       	be	7f30e8 <__reclaim_reent+0x7a>
  7f30e2:	1d 30       	mov	r29, r6
  7f30e4:	80 ff 8c 01 	jarl	7f3270 <__free_r>, lp
  7f30e8:	3d 57 35 00 	ld.w	52[r29], r10
  7f30ec:	60 52       	cmp	0, r10
  7f30ee:	c2 05       	be	7f30f6 <__reclaim_reent+0x88>
  7f30f0:	1d 30       	mov	r29, r6
  7f30f2:	ea c7 60 f9 	jarl	[r10], lp
  7f30f6:	40 06 ff 70 	dispose	0, {r25 - r29, lp}, lp
  7f30fa:	27 cf 01 00 	ld.w	0[r7], r25
  7f30fe:	1d 30       	mov	r29, r6
  7f3100:	fa c7 60 f9 	jarl	[r26], lp
  7f3104:	19 38       	mov	r25, r7
  7f3106:	a5 cd       	br	7f309a <__reclaim_reent+0x2c>

007f3108 <__lseek_r>:
  7f3108:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f310c:	06 e8       	mov	r6, r29
  7f310e:	3c 06 00 27 	mov	0xfe102700, r28
  7f3112:	10 fe 
  7f3114:	07 30       	mov	r7, r6
  7f3116:	08 38       	mov	r8, r7
  7f3118:	09 40       	mov	r9, r8
  7f311a:	7c 07 01 00 	st.w	r0, 0[r28]
  7f311e:	bf ff 92 d1 	jarl	7f02b0 <__lseek>, lp
  7f3122:	7f 52       	cmp	-1, r10
  7f3124:	fa 05       	bne	7f3132 <__lseek_r+0x2a>
  7f3126:	3c 5f 01 00 	ld.w	0[r28], r11
  7f312a:	60 5a       	cmp	0, r11
  7f312c:	b2 05       	be	7f3132 <__lseek_r+0x2a>
  7f312e:	7d 5f 01 00 	st.w	r11, 0[r29]
  7f3132:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp

007f3136 <__read_r>:
  7f3136:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f313a:	06 e8       	mov	r6, r29
  7f313c:	3c 06 00 27 	mov	0xfe102700, r28
  7f3140:	10 fe 
  7f3142:	07 30       	mov	r7, r6
  7f3144:	08 38       	mov	r8, r7
  7f3146:	09 40       	mov	r9, r8
  7f3148:	7c 07 01 00 	st.w	r0, 0[r28]
  7f314c:	bf ff f6 d0 	jarl	7f0242 <__read>, lp
  7f3150:	7f 52       	cmp	-1, r10
  7f3152:	fa 05       	bne	7f3160 <__read_r+0x2a>
  7f3154:	3c 5f 01 00 	ld.w	0[r28], r11
  7f3158:	60 5a       	cmp	0, r11
  7f315a:	b2 05       	be	7f3160 <__read_r+0x2a>
  7f315c:	7d 5f 01 00 	st.w	r11, 0[r29]
  7f3160:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp

007f3164 <__write_r>:
  7f3164:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f3168:	06 e8       	mov	r6, r29
  7f316a:	3c 06 00 27 	mov	0xfe102700, r28
  7f316e:	10 fe 
  7f3170:	07 30       	mov	r7, r6
  7f3172:	08 38       	mov	r8, r7
  7f3174:	09 40       	mov	r9, r8
  7f3176:	7c 07 01 00 	st.w	r0, 0[r28]
  7f317a:	bf ff f2 d0 	jarl	7f026c <__write>, lp
  7f317e:	7f 52       	cmp	-1, r10
  7f3180:	fa 05       	bne	7f318e <__write_r+0x2a>
  7f3182:	3c 5f 01 00 	ld.w	0[r28], r11
  7f3186:	60 5a       	cmp	0, r11
  7f3188:	b2 05       	be	7f318e <__write_r+0x2a>
  7f318a:	7d 5f 01 00 	st.w	r11, 0[r29]
  7f318e:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp

007f3192 <___errno>:
  7f3192:	24 57 01 f8 	ld.w	-2048[gp], r10
  7f3196:	7f 00       	jmp	[lp]

007f3198 <_abort>:
  7f3198:	06 32       	mov	6, r6
  7f319a:	80 07 21 00 	prepare	{lp}, 0
  7f319e:	80 ff 60 10 	jarl	7f41fe <_raise>, lp
  7f31a2:	01 32       	mov	1, r6
  7f31a4:	bf ff 5e d1 	jarl	7f0302 <__exit>, lp

007f31a8 <__malloc_trim_r>:
  7f31a8:	80 07 e1 f0 	prepare	{r24 - r29, lp}, 0
  7f31ac:	07 c8       	mov	r7, r25
  7f31ae:	06 d8       	mov	r6, r27
  7f31b0:	3a 06 6c 01 	mov	0xfe10016c, r26
  7f31b4:	10 fe 
  7f31b6:	80 ff c6 08 	jarl	7f3a7c <___malloc_lock>, lp
  7f31ba:	3a 57 09 00 	ld.w	8[r26], r10
  7f31be:	2a e7 05 00 	ld.w	4[r10], r28
  7f31c2:	1c 52       	mov	-4, r10
  7f31c4:	4a e1       	and	r10, r28
  7f31c6:	20 56 00 f0 	movea	-4096, r0, r10
  7f31ca:	1c ee ef 0f 	addi	4079, r28, r29
  7f31ce:	b9 e9       	sub	r25, r29
  7f31d0:	39 06 7e 3a 	mov	0x7f3a7e, r25
  7f31d4:	7f 00 
  7f31d6:	4a e9       	and	r10, r29
  7f31d8:	ca e9       	add	r10, r29
  7f31da:	20 56 ff 0f 	movea	4095, r0, r10
  7f31de:	ea e9       	cmp	r10, r29
  7f31e0:	ff 05       	bgt	7f31ee <__malloc_trim_r+0x46>
  7f31e2:	1b 30       	mov	r27, r6
  7f31e4:	f9 c7 60 f9 	jarl	[r25], lp
  7f31e8:	00 52       	mov	0, r10
  7f31ea:	40 06 ff f0 	dispose	0, {r24 - r29, lp}, lp
  7f31ee:	00 3a       	mov	0, r7
  7f31f0:	1b 30       	mov	r27, r6
  7f31f2:	38 06 d4 42 	mov	0x7f42d4, r24
  7f31f6:	7f 00 
  7f31f8:	f8 c7 60 f9 	jarl	[r24], lp
  7f31fc:	3a 5f 09 00 	ld.w	8[r26], r11
  7f3200:	dc 59       	add	r28, r11
  7f3202:	eb 51       	cmp	r11, r10
  7f3204:	fa ed       	bne	7f31e2 <__malloc_trim_r+0x3a>
  7f3206:	1d 38       	mov	r29, r7
  7f3208:	1b 30       	mov	r27, r6
  7f320a:	80 39       	subr	r0, r7
  7f320c:	f8 c7 60 f9 	jarl	[r24], lp
  7f3210:	7f 52       	cmp	-1, r10
  7f3212:	ba 1d       	bne	7f3248 <__malloc_trim_r+0xa0>
  7f3214:	00 3a       	mov	0, r7
  7f3216:	1b 30       	mov	r27, r6
  7f3218:	f8 c7 60 f9 	jarl	[r24], lp
  7f321c:	3a 67 09 00 	ld.w	8[r26], r12
  7f3220:	0a 58       	mov	r10, r11
  7f3222:	ac 59       	sub	r12, r11
  7f3224:	6f 5a       	cmp	15, r11
  7f3226:	e7 dd       	ble	7f31e2 <__malloc_trim_r+0x3a>
  7f3228:	2d 06 64 01 	mov	0xfe100164, r13
  7f322c:	10 fe 
  7f322e:	8b 5e 01 00 	ori	1, r11, r11
  7f3232:	2d 6f 01 00 	ld.w	0[r13], r13
  7f3236:	6c 5f 05 00 	st.w	r11, 4[r12]
  7f323a:	ad 51       	sub	r13, r10
  7f323c:	2d 06 90 25 	mov	0xfe102590, r13
  7f3240:	10 fe 
  7f3242:	6d 57 01 00 	st.w	r10, 0[r13]
  7f3246:	e5 cd       	br	7f31e2 <__malloc_trim_r+0x3a>
  7f3248:	3a 57 09 00 	ld.w	8[r26], r10
  7f324c:	bd e1       	sub	r29, r28
  7f324e:	2b 06 90 25 	mov	0xfe102590, r11
  7f3252:	10 fe 
  7f3254:	9c e6 01 00 	ori	1, r28, r28
  7f3258:	6a e7 05 00 	st.w	r28, 4[r10]
  7f325c:	2b 57 01 00 	ld.w	0[r11], r10
  7f3260:	1b 30       	mov	r27, r6
  7f3262:	bd 51       	sub	r29, r10
  7f3264:	6b 57 01 00 	st.w	r10, 0[r11]
  7f3268:	f9 c7 60 f9 	jarl	[r25], lp
  7f326c:	01 52       	mov	1, r10
  7f326e:	e5 bd       	br	7f31ea <__malloc_trim_r+0x42>

007f3270 <__free_r>:
  7f3270:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f3274:	06 e8       	mov	r6, r29
  7f3276:	60 3a       	cmp	0, r7
  7f3278:	07 e0       	mov	r7, r28
  7f327a:	f2 3d       	be	7f32f8 <__free_r+0x88>
  7f327c:	80 ff 00 08 	jarl	7f3a7c <___malloc_lock>, lp
  7f3280:	3c 7f fd ff 	ld.w	-4[r28], r15
  7f3284:	1c 56 f8 ff 	addi	-8, r28, r10
  7f3288:	1e 62       	mov	-2, r12
  7f328a:	0a 68       	mov	r10, r13
  7f328c:	4f 61       	and	r15, r12
  7f328e:	1c 72       	mov	-4, r14
  7f3290:	cc 69       	add	r12, r13
  7f3292:	cf 7e 01 00 	andi	1, r15, r15
  7f3296:	2d 5f 05 00 	ld.w	4[r13], r11
  7f329a:	4e 59       	and	r14, r11
  7f329c:	2e 06 6c 01 	mov	0xfe10016c, r14
  7f32a0:	10 fe 
  7f32a2:	2e 87 09 00 	ld.w	8[r14], r16
  7f32a6:	ed 81       	cmp	r13, r16
  7f32a8:	aa 2d       	bne	7f32fc <__free_r+0x8c>
  7f32aa:	cc 59       	add	r12, r11
  7f32ac:	60 7a       	cmp	0, r15
  7f32ae:	da 0d       	bne	7f32c8 <__free_r+0x58>
  7f32b0:	3c 67 f9 ff 	ld.w	-8[r28], r12
  7f32b4:	ac 51       	sub	r12, r10
  7f32b6:	cc 59       	add	r12, r11
  7f32b8:	2a 6f 09 00 	ld.w	8[r10], r13
  7f32bc:	2a 67 0d 00 	ld.w	12[r10], r12
  7f32c0:	6d 67 0d 00 	st.w	r12, 12[r13]
  7f32c4:	6c 6f 09 00 	st.w	r13, 8[r12]
  7f32c8:	8b 66 01 00 	ori	1, r11, r12
  7f32cc:	6a 67 05 00 	st.w	r12, 4[r10]
  7f32d0:	6e 57 09 00 	st.w	r10, 8[r14]
  7f32d4:	2a 06 68 01 	mov	0xfe100168, r10
  7f32d8:	10 fe 
  7f32da:	2a 57 01 00 	ld.w	0[r10], r10
  7f32de:	eb 51       	cmp	r11, r10
  7f32e0:	9b 0d       	bh	7f32f2 <__free_r+0x82>
  7f32e2:	2a 06 c0 25 	mov	0xfe1025c0, r10
  7f32e6:	10 fe 
  7f32e8:	1d 30       	mov	r29, r6
  7f32ea:	2a 3f 01 00 	ld.w	0[r10], r7
  7f32ee:	bf ff ba fe 	jarl	7f31a8 <__malloc_trim_r>, lp
  7f32f2:	1d 30       	mov	r29, r6
  7f32f4:	80 ff 8a 07 	jarl	7f3a7e <___malloc_unlock>, lp
  7f32f8:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp
  7f32fc:	60 7a       	cmp	0, r15
  7f32fe:	6d 5f 05 00 	st.w	r11, 4[r13]
  7f3302:	aa 15       	bne	7f3326 <__free_r+0xb6>
  7f3304:	3c 7f f9 ff 	ld.w	-8[r28], r15
  7f3308:	30 06 74 01 	mov	0xfe100174, r16
  7f330c:	10 fe 
  7f330e:	af 51       	sub	r15, r10
  7f3310:	cf 61       	add	r15, r12
  7f3312:	2a 7f 09 00 	ld.w	8[r10], r15
  7f3316:	f0 79       	cmp	r16, r15
  7f3318:	92 55       	be	7f33ba <__free_r+0x14a>
  7f331a:	2a 87 0d 00 	ld.w	12[r10], r16
  7f331e:	6f 87 0d 00 	st.w	r16, 12[r15]
  7f3322:	70 7f 09 00 	st.w	r15, 8[r16]
  7f3326:	00 7a       	mov	0, r15
  7f3328:	0d 80       	mov	r13, r16
  7f332a:	cb 81       	add	r11, r16
  7f332c:	30 87 05 00 	ld.w	4[r16], r16
  7f3330:	d0 86 01 00 	andi	1, r16, r16
  7f3334:	60 82       	cmp	0, r16
  7f3336:	ca 15       	bne	7f335e <__free_r+0xee>
  7f3338:	cb 61       	add	r11, r12
  7f333a:	2d 5f 09 00 	ld.w	8[r13], r11
  7f333e:	60 7a       	cmp	0, r15
  7f3340:	fa 3d       	bne	7f33be <__free_r+0x14e>
  7f3342:	30 06 74 01 	mov	0xfe100174, r16
  7f3346:	10 fe 
  7f3348:	f0 59       	cmp	r16, r11
  7f334a:	aa 3d       	bne	7f33be <__free_r+0x14e>
  7f334c:	6e 57 15 00 	st.w	r10, 20[r14]
  7f3350:	6e 57 11 00 	st.w	r10, 16[r14]
  7f3354:	01 7a       	mov	1, r15
  7f3356:	6a 5f 0d 00 	st.w	r11, 12[r10]
  7f335a:	6a 5f 09 00 	st.w	r11, 8[r10]
  7f335e:	8c 5e 01 00 	ori	1, r12, r11
  7f3362:	6a 5f 05 00 	st.w	r11, 4[r10]
  7f3366:	0a 58       	mov	r10, r11
  7f3368:	cc 59       	add	r12, r11
  7f336a:	60 7a       	cmp	0, r15
  7f336c:	6b 67 01 00 	st.w	r12, 0[r11]
  7f3370:	9a c5       	bne	7f32f2 <__free_r+0x82>
  7f3372:	20 5e ff 01 	movea	511, r0, r11
  7f3376:	eb 61       	cmp	r11, r12
  7f3378:	0c 58       	mov	r12, r11
  7f337a:	9b 2d       	bh	7f33cc <__free_r+0x15c>
  7f337c:	85 62       	shr	5, r12
  7f337e:	83 5a       	shr	3, r11
  7f3380:	0c 68       	mov	r12, r13
  7f3382:	01 62       	mov	1, r12
  7f3384:	ed 67 c0 00 	shl	r13, r12
  7f3388:	2e 6f 05 00 	ld.w	4[r14], r13
  7f338c:	41 5a       	add	1, r11
  7f338e:	0d 61       	or	r13, r12
  7f3390:	eb 00       	sxh	r11
  7f3392:	6e 67 05 00 	st.w	r12, 4[r14]
  7f3396:	c3 5a       	shl	3, r11
  7f3398:	2c 06 6c 01 	mov	0xfe10016c, r12
  7f339c:	10 fe 
  7f339e:	cc 59       	add	r12, r11
  7f33a0:	2b 67 01 00 	ld.w	0[r11], r12
  7f33a4:	0b 6e f8 ff 	addi	-8, r11, r13
  7f33a8:	6a 6f 0d 00 	st.w	r13, 12[r10]
  7f33ac:	6a 67 09 00 	st.w	r12, 8[r10]
  7f33b0:	6b 57 01 00 	st.w	r10, 0[r11]
  7f33b4:	6c 57 0d 00 	st.w	r10, 12[r12]
  7f33b8:	d5 9d       	br	7f32f2 <__free_r+0x82>
  7f33ba:	01 7a       	mov	1, r15
  7f33bc:	e5 b5       	br	7f3328 <__free_r+0xb8>
  7f33be:	2d 6f 0d 00 	ld.w	12[r13], r13
  7f33c2:	6b 6f 0d 00 	st.w	r13, 12[r11]
  7f33c6:	6d 5f 09 00 	st.w	r11, 8[r13]
  7f33ca:	a5 cd       	br	7f335e <__free_r+0xee>
  7f33cc:	89 5a       	shr	9, r11
  7f33ce:	64 5a       	cmp	4, r11
  7f33d0:	eb 25       	bh	7f341c <__free_r+0x1ac>
  7f33d2:	0c 58       	mov	r12, r11
  7f33d4:	86 5a       	shr	6, r11
  7f33d6:	0b 5e 38 00 	addi	56, r11, r11
  7f33da:	0b 6e 01 00 	addi	1, r11, r13
  7f33de:	2f 06 6c 01 	mov	0xfe10016c, r15
  7f33e2:	10 fe 
  7f33e4:	ed 00       	sxh	r13
  7f33e6:	c3 6a       	shl	3, r13
  7f33e8:	cf 69       	add	r15, r13
  7f33ea:	0d 7e f8 ff 	addi	-8, r13, r15
  7f33ee:	2d 6f 01 00 	ld.w	0[r13], r13
  7f33f2:	ed 79       	cmp	r13, r15
  7f33f4:	da 3d       	bne	7f346e <__free_r+0x1fe>
  7f33f6:	a2 5a       	sar	2, r11
  7f33f8:	01 62       	mov	1, r12
  7f33fa:	eb 67 c0 00 	shl	r11, r12
  7f33fe:	2e 5f 05 00 	ld.w	4[r14], r11
  7f3402:	0c 59       	or	r12, r11
  7f3404:	6e 5f 05 00 	st.w	r11, 4[r14]
  7f3408:	6a 7f 0d 00 	st.w	r15, 12[r10]
  7f340c:	6a 6f 09 00 	st.w	r13, 8[r10]
  7f3410:	6f 57 09 00 	st.w	r10, 8[r15]
  7f3414:	6d 57 0d 00 	st.w	r10, 12[r13]
  7f3418:	bf 07 da fe 	jr	7f32f2 <__free_r+0x82>
  7f341c:	20 6e 14 00 	movea	20, r0, r13
  7f3420:	ed 59       	cmp	r13, r11
  7f3422:	cb 05       	bh	7f342a <__free_r+0x1ba>
  7f3424:	0b 5e 5b 00 	addi	91, r11, r11
  7f3428:	95 dd       	br	7f33da <__free_r+0x16a>
  7f342a:	20 6e 54 00 	movea	84, r0, r13
  7f342e:	ed 59       	cmp	r13, r11
  7f3430:	eb 05       	bh	7f343c <__free_r+0x1cc>
  7f3432:	0c 58       	mov	r12, r11
  7f3434:	8c 5a       	shr	12, r11
  7f3436:	0b 5e 6e 00 	addi	110, r11, r11
  7f343a:	85 d5       	br	7f33da <__free_r+0x16a>
  7f343c:	20 6e 54 01 	movea	340, r0, r13
  7f3440:	ed 59       	cmp	r13, r11
  7f3442:	eb 05       	bh	7f344e <__free_r+0x1de>
  7f3444:	0c 58       	mov	r12, r11
  7f3446:	8f 5a       	shr	15, r11
  7f3448:	0b 5e 77 00 	addi	119, r11, r11
  7f344c:	f5 c5       	br	7f33da <__free_r+0x16a>
  7f344e:	20 6e 54 05 	movea	1364, r0, r13
  7f3452:	ed 59       	cmp	r13, r11
  7f3454:	eb 05       	bh	7f3460 <__free_r+0x1f0>
  7f3456:	0c 58       	mov	r12, r11
  7f3458:	92 5a       	shr	18, r11
  7f345a:	0b 5e 7c 00 	addi	124, r11, r11
  7f345e:	e5 bd       	br	7f33da <__free_r+0x16a>
  7f3460:	20 5e 7e 00 	movea	126, r0, r11
  7f3464:	b5 bd       	br	7f33da <__free_r+0x16a>
  7f3466:	2d 6f 09 00 	ld.w	8[r13], r13
  7f346a:	ed 79       	cmp	r13, r15
  7f346c:	f2 05       	be	7f347a <__free_r+0x20a>
  7f346e:	2d 5f 05 00 	ld.w	4[r13], r11
  7f3472:	1c 72       	mov	-4, r14
  7f3474:	4e 59       	and	r14, r11
  7f3476:	ec 59       	cmp	r12, r11
  7f3478:	fb f5       	bh	7f3466 <__free_r+0x1f6>
  7f347a:	2d 7f 0d 00 	ld.w	12[r13], r15
  7f347e:	d5 c5       	br	7f3408 <__free_r+0x198>

007f3480 <__malloc_r>:
  7f3480:	03 1e d0 ff 	addi	-48, sp, sp
  7f3484:	07 56 0b 00 	addi	11, r7, r10
  7f3488:	20 5e 16 00 	movea	22, r0, r11
  7f348c:	63 ff 2d 00 	st.w	lp, 44[sp]
  7f3490:	63 17 29 00 	st.w	r2, 40[sp]
  7f3494:	63 a7 25 00 	st.w	r20, 36[sp]
  7f3498:	63 af 21 00 	st.w	r21, 32[sp]
  7f349c:	63 b7 1d 00 	st.w	r22, 28[sp]
  7f34a0:	63 bf 19 00 	st.w	r23, 24[sp]
  7f34a4:	63 c7 15 00 	st.w	r24, 20[sp]
  7f34a8:	63 cf 11 00 	st.w	r25, 16[sp]
  7f34ac:	63 d7 0d 00 	st.w	r26, 12[sp]
  7f34b0:	63 df 09 00 	st.w	r27, 8[sp]
  7f34b4:	63 e7 05 00 	st.w	r28, 4[sp]
  7f34b8:	63 ef 01 00 	st.w	r29, 0[sp]
  7f34bc:	5c 1a       	add	-4, sp
  7f34be:	eb 51       	cmp	r11, r10
  7f34c0:	c3 25       	bnh	7f3508 <__malloc_r+0x88>
  7f34c2:	18 e2       	mov	-8, r28
  7f34c4:	4a e1       	and	r10, r28
  7f34c6:	60 52       	cmp	0, r10
  7f34c8:	ae 25       	bge	7f350c <__malloc_r+0x8c>
  7f34ca:	0c 52       	mov	12, r10
  7f34cc:	66 57 01 00 	st.w	r10, 0[r6]
  7f34d0:	00 52       	mov	0, r10
  7f34d2:	23 ff 31 00 	ld.w	48[sp], lp
  7f34d6:	23 17 2d 00 	ld.w	44[sp], r2
  7f34da:	23 a7 29 00 	ld.w	40[sp], r20
  7f34de:	23 af 25 00 	ld.w	36[sp], r21
  7f34e2:	23 b7 21 00 	ld.w	32[sp], r22
  7f34e6:	23 bf 1d 00 	ld.w	28[sp], r23
  7f34ea:	23 c7 19 00 	ld.w	24[sp], r24
  7f34ee:	23 cf 15 00 	ld.w	20[sp], r25
  7f34f2:	23 d7 11 00 	ld.w	16[sp], r26
  7f34f6:	23 df 0d 00 	ld.w	12[sp], r27
  7f34fa:	23 e7 09 00 	ld.w	8[sp], r28
  7f34fe:	23 ef 05 00 	ld.w	4[sp], r29
  7f3502:	03 1e 34 00 	addi	52, sp, sp
  7f3506:	7f 00       	jmp	[lp]
  7f3508:	20 e6 10 00 	movea	16, r0, r28
  7f350c:	fc 39       	cmp	r28, r7
  7f350e:	eb dd       	bh	7f34ca <__malloc_r+0x4a>
  7f3510:	63 37 01 00 	st.w	r6, 0[sp]
  7f3514:	80 ff 68 05 	jarl	7f3a7c <___malloc_lock>, lp
  7f3518:	20 56 f7 01 	movea	503, r0, r10
  7f351c:	23 37 01 00 	ld.w	0[sp], r6
  7f3520:	ea e1       	cmp	r10, r28
  7f3522:	1c 50       	mov	r28, r10
  7f3524:	fb 55       	bh	7f35d2 <__malloc_r+0x152>
  7f3526:	83 52       	shr	3, r10
  7f3528:	2c 06 6c 01 	mov	0xfe10016c, r12
  7f352c:	10 fe 
  7f352e:	0a 5e 01 00 	addi	1, r10, r11
  7f3532:	eb 00       	sxh	r11
  7f3534:	c3 5a       	shl	3, r11
  7f3536:	cc 59       	add	r12, r11
  7f3538:	2b ef 05 00 	ld.w	4[r11], r29
  7f353c:	0b 66 f8 ff 	addi	-8, r11, r12
  7f3540:	ec e9       	cmp	r12, r29
  7f3542:	da 05       	bne	7f354c <__malloc_r+0xcc>
  7f3544:	2b ef 0d 00 	ld.w	12[r11], r29
  7f3548:	fd 59       	cmp	r29, r11
  7f354a:	92 1d       	be	7f357c <__malloc_r+0xfc>
  7f354c:	3d 57 05 00 	ld.w	4[r29], r10
  7f3550:	1c 5a       	mov	-4, r11
  7f3552:	3d 67 09 00 	ld.w	8[r29], r12
  7f3556:	4b 51       	and	r11, r10
  7f3558:	3d 5f 0d 00 	ld.w	12[r29], r11
  7f355c:	6c 5f 0d 00 	st.w	r11, 12[r12]
  7f3560:	6b 67 09 00 	st.w	r12, 8[r11]
  7f3564:	dd 51       	add	r29, r10
  7f3566:	2a 5f 05 00 	ld.w	4[r10], r11
  7f356a:	8b 5e 01 00 	ori	1, r11, r11
  7f356e:	6a 5f 05 00 	st.w	r11, 4[r10]
  7f3572:	80 ff 0c 05 	jarl	7f3a7e <___malloc_unlock>, lp
  7f3576:	1d 56 08 00 	addi	8, r29, r10
  7f357a:	c5 ad       	br	7f34d2 <__malloc_r+0x52>
  7f357c:	42 52       	add	2, r10
  7f357e:	3a 06 6c 01 	mov	0xfe10016c, r26
  7f3582:	10 fe 
  7f3584:	2e 06 74 01 	mov	0xfe100174, r14
  7f3588:	10 fe 
  7f358a:	3a ef 11 00 	ld.w	16[r26], r29
  7f358e:	1a d8       	mov	r26, r27
  7f3590:	ee e9       	cmp	r14, r29
  7f3592:	e2 07 57 01 	be	7f36e8 <__malloc_r+0x268>
  7f3596:	3d 67 05 00 	ld.w	4[r29], r12
  7f359a:	1c 5a       	mov	-4, r11
  7f359c:	4b 61       	and	r11, r12
  7f359e:	0c 58       	mov	r12, r11
  7f35a0:	bc 59       	sub	r28, r11
  7f35a2:	6f 5a       	cmp	15, r11
  7f35a4:	f7 6d       	ble	7f3682 <__malloc_r+0x202>
  7f35a6:	1d 50       	mov	r29, r10
  7f35a8:	8b 6e 01 00 	ori	1, r11, r13
  7f35ac:	dc 51       	add	r28, r10
  7f35ae:	9c e6 01 00 	ori	1, r28, r28
  7f35b2:	7d e7 05 00 	st.w	r28, 4[r29]
  7f35b6:	dd 61       	add	r29, r12
  7f35b8:	7a 57 15 00 	st.w	r10, 20[r26]
  7f35bc:	7a 57 11 00 	st.w	r10, 16[r26]
  7f35c0:	6a 77 0d 00 	st.w	r14, 12[r10]
  7f35c4:	6a 77 09 00 	st.w	r14, 8[r10]
  7f35c8:	6a 6f 05 00 	st.w	r13, 4[r10]
  7f35cc:	6c 5f 01 00 	st.w	r11, 0[r12]
  7f35d0:	95 d5       	br	7f3572 <__malloc_r+0xf2>
  7f35d2:	89 52       	shr	9, r10
  7f35d4:	a2 3d       	be	7f3648 <__malloc_r+0x1c8>
  7f35d6:	64 52       	cmp	4, r10
  7f35d8:	eb 15       	bh	7f3604 <__malloc_r+0x184>
  7f35da:	1c 50       	mov	r28, r10
  7f35dc:	86 52       	shr	6, r10
  7f35de:	0a 56 38 00 	addi	56, r10, r10
  7f35e2:	0a 6e 01 00 	addi	1, r10, r13
  7f35e6:	2c 06 6c 01 	mov	0xfe10016c, r12
  7f35ea:	10 fe 
  7f35ec:	0d 58       	mov	r13, r11
  7f35ee:	eb 00       	sxh	r11
  7f35f0:	c3 5a       	shl	3, r11
  7f35f2:	cc 59       	add	r12, r11
  7f35f4:	2b ef 05 00 	ld.w	4[r11], r29
  7f35f8:	0b 7e f8 ff 	addi	-8, r11, r15
  7f35fc:	ef e9       	cmp	r15, r29
  7f35fe:	ba 2d       	bne	7f3654 <__malloc_r+0x1d4>
  7f3600:	0d 50       	mov	r13, r10
  7f3602:	e5 bd       	br	7f357e <__malloc_r+0xfe>
  7f3604:	20 5e 14 00 	movea	20, r0, r11
  7f3608:	eb 51       	cmp	r11, r10
  7f360a:	cb 05       	bh	7f3612 <__malloc_r+0x192>
  7f360c:	0a 56 5b 00 	addi	91, r10, r10
  7f3610:	95 ed       	br	7f35e2 <__malloc_r+0x162>
  7f3612:	20 5e 54 00 	movea	84, r0, r11
  7f3616:	eb 51       	cmp	r11, r10
  7f3618:	eb 05       	bh	7f3624 <__malloc_r+0x1a4>
  7f361a:	1c 50       	mov	r28, r10
  7f361c:	8c 52       	shr	12, r10
  7f361e:	0a 56 6e 00 	addi	110, r10, r10
  7f3622:	85 e5       	br	7f35e2 <__malloc_r+0x162>
  7f3624:	20 5e 54 01 	movea	340, r0, r11
  7f3628:	eb 51       	cmp	r11, r10
  7f362a:	eb 05       	bh	7f3636 <__malloc_r+0x1b6>
  7f362c:	1c 50       	mov	r28, r10
  7f362e:	8f 52       	shr	15, r10
  7f3630:	0a 56 77 00 	addi	119, r10, r10
  7f3634:	f5 d5       	br	7f35e2 <__malloc_r+0x162>
  7f3636:	20 5e 54 05 	movea	1364, r0, r11
  7f363a:	eb 51       	cmp	r11, r10
  7f363c:	9b 0d       	bh	7f364e <__malloc_r+0x1ce>
  7f363e:	1c 50       	mov	r28, r10
  7f3640:	92 52       	shr	18, r10
  7f3642:	0a 56 7c 00 	addi	124, r10, r10
  7f3646:	e5 cd       	br	7f35e2 <__malloc_r+0x162>
  7f3648:	20 56 3f 00 	movea	63, r0, r10
  7f364c:	b5 cd       	br	7f35e2 <__malloc_r+0x162>
  7f364e:	20 56 7e 00 	movea	126, r0, r10
  7f3652:	85 cd       	br	7f35e2 <__malloc_r+0x162>
  7f3654:	3d 5f 05 00 	ld.w	4[r29], r11
  7f3658:	1c 62       	mov	-4, r12
  7f365a:	4c 59       	and	r12, r11
  7f365c:	0b 70       	mov	r11, r14
  7f365e:	bc 71       	sub	r28, r14
  7f3660:	6f 72       	cmp	15, r14
  7f3662:	ef 8d       	bgt	7f357e <__malloc_r+0xfe>
  7f3664:	60 72       	cmp	0, r14
  7f3666:	3d 67 0d 00 	ld.w	12[r29], r12
  7f366a:	a6 0d       	blt	7f367e <__malloc_r+0x1fe>
  7f366c:	3d 57 09 00 	ld.w	8[r29], r10
  7f3670:	6a 67 0d 00 	st.w	r12, 12[r10]
  7f3674:	6c 57 09 00 	st.w	r10, 8[r12]
  7f3678:	0b 50       	mov	r11, r10
  7f367a:	bf 07 ea fe 	jr	7f3564 <__malloc_r+0xe4>
  7f367e:	0c e8       	mov	r12, r29
  7f3680:	e5 bd       	br	7f35fc <__malloc_r+0x17c>
  7f3682:	60 5a       	cmp	0, r11
  7f3684:	7a 77 15 00 	st.w	r14, 20[r26]
  7f3688:	7a 77 11 00 	st.w	r14, 16[r26]
  7f368c:	a6 0d       	blt	7f36a0 <__malloc_r+0x220>
  7f368e:	dd 61       	add	r29, r12
  7f3690:	2c 57 05 00 	ld.w	4[r12], r10
  7f3694:	8a 56 01 00 	ori	1, r10, r10
  7f3698:	6c 57 05 00 	st.w	r10, 4[r12]
  7f369c:	bf 07 d6 fe 	jr	7f3572 <__malloc_r+0xf2>
  7f36a0:	20 5e ff 01 	movea	511, r0, r11
  7f36a4:	3a 87 05 00 	ld.w	4[r26], r16
  7f36a8:	eb 61       	cmp	r11, r12
  7f36aa:	0c 58       	mov	r12, r11
  7f36ac:	eb 07 7f 01 	bh	7f382a <__malloc_r+0x3aa>
  7f36b0:	85 62       	shr	5, r12
  7f36b2:	83 5a       	shr	3, r11
  7f36b4:	0c 68       	mov	r12, r13
  7f36b6:	01 62       	mov	1, r12
  7f36b8:	ed 67 c0 00 	shl	r13, r12
  7f36bc:	41 5a       	add	1, r11
  7f36be:	10 61       	or	r16, r12
  7f36c0:	eb 00       	sxh	r11
  7f36c2:	7a 67 05 00 	st.w	r12, 4[r26]
  7f36c6:	c3 5a       	shl	3, r11
  7f36c8:	2c 06 6c 01 	mov	0xfe10016c, r12
  7f36cc:	10 fe 
  7f36ce:	cc 59       	add	r12, r11
  7f36d0:	2b 67 01 00 	ld.w	0[r11], r12
  7f36d4:	0b 6e f8 ff 	addi	-8, r11, r13
  7f36d8:	7d 6f 0d 00 	st.w	r13, 12[r29]
  7f36dc:	7d 67 09 00 	st.w	r12, 8[r29]
  7f36e0:	6b ef 01 00 	st.w	r29, 0[r11]
  7f36e4:	6c ef 0d 00 	st.w	r29, 12[r12]
  7f36e8:	0a 60       	mov	r10, r12
  7f36ea:	01 5a       	mov	1, r11
  7f36ec:	a2 62       	sar	2, r12
  7f36ee:	ec 5f c0 00 	shl	r12, r11
  7f36f2:	3a 67 05 00 	ld.w	4[r26], r12
  7f36f6:	eb 61       	cmp	r11, r12
  7f36f8:	b1 35       	bl	7f375e <__malloc_r+0x2de>
  7f36fa:	0c 68       	mov	r12, r13
  7f36fc:	4b 69       	and	r11, r13
  7f36fe:	60 6a       	cmp	0, r13
  7f3700:	9a 0d       	bne	7f3712 <__malloc_r+0x292>
  7f3702:	1c 6a       	mov	-4, r13
  7f3704:	4d 51       	and	r13, r10
  7f3706:	cb 59       	add	r11, r11
  7f3708:	0c 68       	mov	r12, r13
  7f370a:	44 52       	add	4, r10
  7f370c:	4b 69       	and	r11, r13
  7f370e:	60 6a       	cmp	0, r13
  7f3710:	b2 fd       	be	7f3706 <__malloc_r+0x286>
  7f3712:	0a 68       	mov	r10, r13
  7f3714:	2c 06 6c 01 	mov	0xfe10016c, r12
  7f3718:	10 fe 
  7f371a:	c3 6a       	shl	3, r13
  7f371c:	0a 80       	mov	r10, r16
  7f371e:	cc 69       	add	r12, r13
  7f3720:	0d 88       	mov	r13, r17
  7f3722:	31 ef 0d 00 	ld.w	12[r17], r29
  7f3726:	f1 e9       	cmp	r17, r29
  7f3728:	ea 07 b5 01 	bne	7f38dc <__malloc_r+0x45c>
  7f372c:	41 82       	add	1, r16
  7f372e:	48 8a       	add	8, r17
  7f3730:	d0 66 03 00 	andi	3, r16, r12
  7f3734:	60 62       	cmp	0, r12
  7f3736:	ea f5       	bne	7f3722 <__malloc_r+0x2a2>
  7f3738:	ca 66 03 00 	andi	3, r10, r12
  7f373c:	60 62       	cmp	0, r12
  7f373e:	ea 07 15 02 	bne	7f3952 <__malloc_r+0x4d2>
  7f3742:	3a 57 05 00 	ld.w	4[r26], r10
  7f3746:	2b 60       	not	r11, r12
  7f3748:	4c 51       	and	r12, r10
  7f374a:	7a 57 05 00 	st.w	r10, 4[r26]
  7f374e:	3a 67 05 00 	ld.w	4[r26], r12
  7f3752:	cb 59       	add	r11, r11
  7f3754:	eb 61       	cmp	r11, r12
  7f3756:	c1 05       	bl	7f375e <__malloc_r+0x2de>
  7f3758:	60 5a       	cmp	0, r11
  7f375a:	ea 07 1b 02 	bne	7f3974 <__malloc_r+0x4f4>
  7f375e:	3a ef 09 00 	ld.w	8[r26], r29
  7f3762:	1c 52       	mov	-4, r10
  7f3764:	38 06 7e 3a 	mov	0x7f3a7e, r24
  7f3768:	7f 00 
  7f376a:	3d b7 05 00 	ld.w	4[r29], r22
  7f376e:	4a b1       	and	r10, r22
  7f3770:	fc b1       	cmp	r28, r22
  7f3772:	e1 05       	bl	7f377e <__malloc_r+0x2fe>
  7f3774:	16 50       	mov	r22, r10
  7f3776:	bc 51       	sub	r28, r10
  7f3778:	6f 52       	cmp	15, r10
  7f377a:	ef 07 e5 02 	bgt	7f3a5e <__malloc_r+0x5de>
  7f377e:	2a 06 c0 25 	mov	0xfe1025c0, r10
  7f3782:	10 fe 
  7f3784:	22 06 64 01 	mov	0xfe100164, r2
  7f3788:	10 fe 
  7f378a:	2a cf 01 00 	ld.w	0[r10], r25
  7f378e:	1d a8       	mov	r29, r21
  7f3790:	22 57 01 00 	ld.w	0[r2], r10
  7f3794:	d6 a9       	add	r22, r21
  7f3796:	dc c9       	add	r28, r25
  7f3798:	7f 52       	cmp	-1, r10
  7f379a:	ea 07 df 01 	bne	7f3978 <__malloc_r+0x4f8>
  7f379e:	19 ce 10 00 	addi	16, r25, r25
  7f37a2:	19 38       	mov	r25, r7
  7f37a4:	2b 06 d4 42 	mov	0x7f42d4, r11
  7f37a8:	7f 00 
  7f37aa:	63 37 01 00 	st.w	r6, 0[sp]
  7f37ae:	eb c7 60 f9 	jarl	[r11], lp
  7f37b2:	7f 52       	cmp	-1, r10
  7f37b4:	23 37 01 00 	ld.w	0[sp], r6
  7f37b8:	0a b8       	mov	r10, r23
  7f37ba:	e2 07 37 02 	be	7f39f0 <__malloc_r+0x570>
  7f37be:	ea a9       	cmp	r10, r21
  7f37c0:	2b 06 d4 42 	mov	0x7f42d4, r11
  7f37c4:	7f 00 
  7f37c6:	c3 05       	bnh	7f37ce <__malloc_r+0x34e>
  7f37c8:	fb e9       	cmp	r27, r29
  7f37ca:	ea 07 27 02 	bne	7f39f0 <__malloc_r+0x570>
  7f37ce:	34 06 90 25 	mov	0xfe102590, r20
  7f37d2:	10 fe 
  7f37d4:	34 57 01 00 	ld.w	0[r20], r10
  7f37d8:	d9 51       	add	r25, r10
  7f37da:	f7 a9       	cmp	r23, r21
  7f37dc:	74 57 01 00 	st.w	r10, 0[r20]
  7f37e0:	ea 07 a7 01 	bne	7f3986 <__malloc_r+0x506>
  7f37e4:	d5 66 ff 0f 	andi	4095, r21, r12
  7f37e8:	60 62       	cmp	0, r12
  7f37ea:	ea 07 9d 01 	bne	7f3986 <__malloc_r+0x506>
  7f37ee:	3a 57 09 00 	ld.w	8[r26], r10
  7f37f2:	d6 c9       	add	r22, r25
  7f37f4:	99 ce 01 00 	ori	1, r25, r25
  7f37f8:	6a cf 05 00 	st.w	r25, 4[r10]
  7f37fc:	2b 06 bc 25 	mov	0xfe1025bc, r11
  7f3800:	10 fe 
  7f3802:	34 57 01 00 	ld.w	0[r20], r10
  7f3806:	2b 67 01 00 	ld.w	0[r11], r12
  7f380a:	ec 51       	cmp	r12, r10
  7f380c:	b3 05       	bnh	7f3812 <__malloc_r+0x392>
  7f380e:	6b 57 01 00 	st.w	r10, 0[r11]
  7f3812:	2b 06 b8 25 	mov	0xfe1025b8, r11
  7f3816:	10 fe 
  7f3818:	2b 67 01 00 	ld.w	0[r11], r12
  7f381c:	ec 51       	cmp	r12, r10
  7f381e:	e3 07 d3 01 	bnh	7f39f0 <__malloc_r+0x570>
  7f3822:	6b 57 01 00 	st.w	r10, 0[r11]
  7f3826:	80 07 ca 01 	jr	7f39f0 <__malloc_r+0x570>
  7f382a:	89 5a       	shr	9, r11
  7f382c:	64 5a       	cmp	4, r11
  7f382e:	db 25       	bh	7f3878 <__malloc_r+0x3f8>
  7f3830:	0c 58       	mov	r12, r11
  7f3832:	86 5a       	shr	6, r11
  7f3834:	0b 5e 38 00 	addi	56, r11, r11
  7f3838:	0b 6e 01 00 	addi	1, r11, r13
  7f383c:	2f 06 6c 01 	mov	0xfe10016c, r15
  7f3840:	10 fe 
  7f3842:	ed 00       	sxh	r13
  7f3844:	c3 6a       	shl	3, r13
  7f3846:	cf 69       	add	r15, r13
  7f3848:	0d 7e f8 ff 	addi	-8, r13, r15
  7f384c:	2d 6f 01 00 	ld.w	0[r13], r13
  7f3850:	ed 79       	cmp	r13, r15
  7f3852:	ca 3d       	bne	7f38ca <__malloc_r+0x44a>
  7f3854:	a2 5a       	sar	2, r11
  7f3856:	01 62       	mov	1, r12
  7f3858:	eb 67 c0 00 	shl	r11, r12
  7f385c:	0c 58       	mov	r12, r11
  7f385e:	10 59       	or	r16, r11
  7f3860:	7a 5f 05 00 	st.w	r11, 4[r26]
  7f3864:	7d 7f 0d 00 	st.w	r15, 12[r29]
  7f3868:	7d 6f 09 00 	st.w	r13, 8[r29]
  7f386c:	6f ef 09 00 	st.w	r29, 8[r15]
  7f3870:	6d ef 0d 00 	st.w	r29, 12[r13]
  7f3874:	bf 07 74 fe 	jr	7f36e8 <__malloc_r+0x268>
  7f3878:	20 6e 14 00 	movea	20, r0, r13
  7f387c:	ed 59       	cmp	r13, r11
  7f387e:	cb 05       	bh	7f3886 <__malloc_r+0x406>
  7f3880:	0b 5e 5b 00 	addi	91, r11, r11
  7f3884:	a5 dd       	br	7f3838 <__malloc_r+0x3b8>
  7f3886:	20 6e 54 00 	movea	84, r0, r13
  7f388a:	ed 59       	cmp	r13, r11
  7f388c:	eb 05       	bh	7f3898 <__malloc_r+0x418>
  7f388e:	0c 58       	mov	r12, r11
  7f3890:	8c 5a       	shr	12, r11
  7f3892:	0b 5e 6e 00 	addi	110, r11, r11
  7f3896:	95 d5       	br	7f3838 <__malloc_r+0x3b8>
  7f3898:	20 6e 54 01 	movea	340, r0, r13
  7f389c:	ed 59       	cmp	r13, r11
  7f389e:	eb 05       	bh	7f38aa <__malloc_r+0x42a>
  7f38a0:	0c 58       	mov	r12, r11
  7f38a2:	8f 5a       	shr	15, r11
  7f38a4:	0b 5e 77 00 	addi	119, r11, r11
  7f38a8:	85 cd       	br	7f3838 <__malloc_r+0x3b8>
  7f38aa:	20 6e 54 05 	movea	1364, r0, r13
  7f38ae:	ed 59       	cmp	r13, r11
  7f38b0:	eb 05       	bh	7f38bc <__malloc_r+0x43c>
  7f38b2:	0c 58       	mov	r12, r11
  7f38b4:	92 5a       	shr	18, r11
  7f38b6:	0b 5e 7c 00 	addi	124, r11, r11
  7f38ba:	f5 bd       	br	7f3838 <__malloc_r+0x3b8>
  7f38bc:	20 5e 7e 00 	movea	126, r0, r11
  7f38c0:	c5 bd       	br	7f3838 <__malloc_r+0x3b8>
  7f38c2:	2d 6f 09 00 	ld.w	8[r13], r13
  7f38c6:	ed 79       	cmp	r13, r15
  7f38c8:	f2 05       	be	7f38d6 <__malloc_r+0x456>
  7f38ca:	2d 5f 05 00 	ld.w	4[r13], r11
  7f38ce:	1c 82       	mov	-4, r16
  7f38d0:	50 59       	and	r16, r11
  7f38d2:	ec 59       	cmp	r12, r11
  7f38d4:	fb f5       	bh	7f38c2 <__malloc_r+0x442>
  7f38d6:	2d 7f 0d 00 	ld.w	12[r13], r15
  7f38da:	d5 c5       	br	7f3864 <__malloc_r+0x3e4>
  7f38dc:	3d 67 05 00 	ld.w	4[r29], r12
  7f38e0:	1c 7a       	mov	-4, r15
  7f38e2:	4f 61       	and	r15, r12
  7f38e4:	3d 7f 0d 00 	ld.w	12[r29], r15
  7f38e8:	0c 90       	mov	r12, r18
  7f38ea:	bc 91       	sub	r28, r18
  7f38ec:	6f 92       	cmp	15, r18
  7f38ee:	e7 1d       	ble	7f392a <__malloc_r+0x4aa>
  7f38f0:	1d 50       	mov	r29, r10
  7f38f2:	3d 5f 09 00 	ld.w	8[r29], r11
  7f38f6:	dc 51       	add	r28, r10
  7f38f8:	9c e6 01 00 	ori	1, r28, r28
  7f38fc:	7d e7 05 00 	st.w	r28, 4[r29]
  7f3900:	dd 61       	add	r29, r12
  7f3902:	6b 7f 0d 00 	st.w	r15, 12[r11]
  7f3906:	6f 5f 09 00 	st.w	r11, 8[r15]
  7f390a:	92 5e 01 00 	ori	1, r18, r11
  7f390e:	7a 57 15 00 	st.w	r10, 20[r26]
  7f3912:	7a 57 11 00 	st.w	r10, 16[r26]
  7f3916:	6a 77 0d 00 	st.w	r14, 12[r10]
  7f391a:	6a 77 09 00 	st.w	r14, 8[r10]
  7f391e:	6a 5f 05 00 	st.w	r11, 4[r10]
  7f3922:	6c 97 01 00 	st.w	r18, 0[r12]
  7f3926:	bf 07 4c fc 	jr	7f3572 <__malloc_r+0xf2>
  7f392a:	60 92       	cmp	0, r18
  7f392c:	86 15       	blt	7f394c <__malloc_r+0x4cc>
  7f392e:	dd 61       	add	r29, r12
  7f3930:	2c 57 05 00 	ld.w	4[r12], r10
  7f3934:	8a 56 01 00 	ori	1, r10, r10
  7f3938:	6c 57 05 00 	st.w	r10, 4[r12]
  7f393c:	3d 57 09 00 	ld.w	8[r29], r10
  7f3940:	6a 7f 0d 00 	st.w	r15, 12[r10]
  7f3944:	6f 57 09 00 	st.w	r10, 8[r15]
  7f3948:	bf 07 2a fc 	jr	7f3572 <__malloc_r+0xf2>
  7f394c:	0f e8       	mov	r15, r29
  7f394e:	bf 07 d8 fd 	jr	7f3726 <__malloc_r+0x2a6>
  7f3952:	2d 67 01 00 	ld.w	0[r13], r12
  7f3956:	58 6a       	add	-8, r13
  7f3958:	5f 52       	add	-1, r10
  7f395a:	ed 61       	cmp	r13, r12
  7f395c:	f2 07 dd fd 	be	7f3738 <__malloc_r+0x2b8>
  7f3960:	bf 07 ee fd 	jr	7f374e <__malloc_r+0x2ce>
  7f3964:	44 52       	add	4, r10
  7f3966:	cb 59       	add	r11, r11
  7f3968:	0c 68       	mov	r12, r13
  7f396a:	4b 69       	and	r11, r13
  7f396c:	60 6a       	cmp	0, r13
  7f396e:	b2 fd       	be	7f3964 <__malloc_r+0x4e4>
  7f3970:	bf 07 a2 fd 	jr	7f3712 <__malloc_r+0x292>
  7f3974:	10 50       	mov	r16, r10
  7f3976:	95 fd       	br	7f3968 <__malloc_r+0x4e8>
  7f3978:	19 ce 0f 10 	addi	4111, r25, r25
  7f397c:	20 56 00 f0 	movea	-4096, r0, r10
  7f3980:	4a c9       	and	r10, r25
  7f3982:	bf 07 20 fe 	jr	7f37a2 <__malloc_r+0x322>
  7f3986:	22 67 01 00 	ld.w	0[r2], r12
  7f398a:	7f 62       	cmp	-1, r12
  7f398c:	aa 45       	bne	7f3a10 <__malloc_r+0x590>
  7f398e:	62 bf 01 00 	st.w	r23, 0[r2]
  7f3992:	d7 16 07 00 	andi	7, r23, r2
  7f3996:	60 12       	cmp	0, r2
  7f3998:	92 45       	be	7f3a1a <__malloc_r+0x59a>
  7f399a:	08 aa       	mov	8, r21
  7f399c:	a2 a9       	sub	r2, r21
  7f399e:	d5 b9       	add	r21, r23
  7f39a0:	d7 c9       	add	r23, r25
  7f39a2:	63 37 01 00 	st.w	r6, 0[sp]
  7f39a6:	b9 a9       	sub	r25, r21
  7f39a8:	d5 ae ff 0f 	andi	4095, r21, r21
  7f39ac:	15 38       	mov	r21, r7
  7f39ae:	eb c7 60 f9 	jarl	[r11], lp
  7f39b2:	7f 52       	cmp	-1, r10
  7f39b4:	23 37 01 00 	ld.w	0[sp], r6
  7f39b8:	fa 05       	bne	7f39c6 <__malloc_r+0x546>
  7f39ba:	60 12       	cmp	0, r2
  7f39bc:	92 35       	be	7f3a1e <__malloc_r+0x59e>
  7f39be:	02 56 f8 ff 	addi	-8, r2, r10
  7f39c2:	d9 51       	add	r25, r10
  7f39c4:	00 aa       	mov	0, r21
  7f39c6:	34 5f 01 00 	ld.w	0[r20], r11
  7f39ca:	b7 51       	sub	r23, r10
  7f39cc:	d5 51       	add	r21, r10
  7f39ce:	7a bf 09 00 	st.w	r23, 8[r26]
  7f39d2:	d5 59       	add	r21, r11
  7f39d4:	8a 56 01 00 	ori	1, r10, r10
  7f39d8:	fb e9       	cmp	r27, r29
  7f39da:	74 5f 01 00 	st.w	r11, 0[r20]
  7f39de:	77 57 05 00 	st.w	r10, 4[r23]
  7f39e2:	f2 07 1b fe 	be	7f37fc <__malloc_r+0x37c>
  7f39e6:	6f b2       	cmp	15, r22
  7f39e8:	db 1d       	bh	7f3a22 <__malloc_r+0x5a2>
  7f39ea:	01 52       	mov	1, r10
  7f39ec:	77 57 05 00 	st.w	r10, 4[r23]
  7f39f0:	3a ef 09 00 	ld.w	8[r26], r29
  7f39f4:	1c 52       	mov	-4, r10
  7f39f6:	3d 5f 05 00 	ld.w	4[r29], r11
  7f39fa:	4a 59       	and	r10, r11
  7f39fc:	0b 50       	mov	r11, r10
  7f39fe:	bc 51       	sub	r28, r10
  7f3a00:	fc 59       	cmp	r28, r11
  7f3a02:	b1 05       	bl	7f3a08 <__malloc_r+0x588>
  7f3a04:	6f 52       	cmp	15, r10
  7f3a06:	cf 2d       	bgt	7f3a5e <__malloc_r+0x5de>
  7f3a08:	f8 c7 60 f9 	jarl	[r24], lp
  7f3a0c:	bf 07 c4 fa 	jr	7f34d0 <__malloc_r+0x50>
  7f3a10:	97 a9       	subr	r23, r21
  7f3a12:	ca a9       	add	r10, r21
  7f3a14:	74 af 01 00 	st.w	r21, 0[r20]
  7f3a18:	d5 bd       	br	7f3992 <__malloc_r+0x512>
  7f3a1a:	00 aa       	mov	0, r21
  7f3a1c:	a5 c5       	br	7f39a0 <__malloc_r+0x520>
  7f3a1e:	19 50       	mov	r25, r10
  7f3a20:	a5 d5       	br	7f39c4 <__malloc_r+0x544>
  7f3a22:	54 b2       	add	-12, r22
  7f3a24:	18 52       	mov	-8, r10
  7f3a26:	4a b1       	and	r10, r22
  7f3a28:	3d 57 05 00 	ld.w	4[r29], r10
  7f3a2c:	05 5a       	mov	5, r11
  7f3a2e:	ca 56 01 00 	andi	1, r10, r10
  7f3a32:	16 51       	or	r22, r10
  7f3a34:	7d 57 05 00 	st.w	r10, 4[r29]
  7f3a38:	1d 50       	mov	r29, r10
  7f3a3a:	d6 51       	add	r22, r10
  7f3a3c:	6f b2       	cmp	15, r22
  7f3a3e:	6a 5f 05 00 	st.w	r11, 4[r10]
  7f3a42:	6a 5f 09 00 	st.w	r11, 8[r10]
  7f3a46:	f3 07 b7 fd 	bnh	7f37fc <__malloc_r+0x37c>
  7f3a4a:	1d 3e 08 00 	addi	8, r29, r7
  7f3a4e:	63 37 01 00 	st.w	r6, 0[sp]
  7f3a52:	bf ff 1e f8 	jarl	7f3270 <__free_r>, lp
  7f3a56:	23 37 01 00 	ld.w	0[sp], r6
  7f3a5a:	bf 07 a2 fd 	jr	7f37fc <__malloc_r+0x37c>
  7f3a5e:	9c 5e 01 00 	ori	1, r28, r11
  7f3a62:	dd e1       	add	r29, r28
  7f3a64:	7d 5f 05 00 	st.w	r11, 4[r29]
  7f3a68:	8a 56 01 00 	ori	1, r10, r10
  7f3a6c:	7a e7 09 00 	st.w	r28, 8[r26]
  7f3a70:	7c 57 05 00 	st.w	r10, 4[r28]
  7f3a74:	f8 c7 60 f9 	jarl	[r24], lp
  7f3a78:	bf 07 fe fa 	jr	7f3576 <__malloc_r+0xf6>

007f3a7c <___malloc_lock>:
  7f3a7c:	7f 00       	jmp	[lp]

007f3a7e <___malloc_unlock>:
  7f3a7e:	7f 00       	jmp	[lp]

007f3a80 <__realloc_r>:
  7f3a80:	80 07 e1 ff 	prepare	{r20 - r29, lp}, 0
  7f3a84:	07 e8       	mov	r7, r29
  7f3a86:	5c 1a       	add	-4, sp
  7f3a88:	06 c8       	mov	r6, r25
  7f3a8a:	60 ea       	cmp	0, r29
  7f3a8c:	08 38       	mov	r8, r7
  7f3a8e:	8a 0d       	bne	7f3a9e <__realloc_r+0x1e>
  7f3a90:	bf ff f0 f9 	jarl	7f3480 <__malloc_r>, lp
  7f3a94:	0a d0       	mov	r10, r26
  7f3a96:	44 1a       	add	4, sp
  7f3a98:	1a 50       	mov	r26, r10
  7f3a9a:	40 06 ff ff 	dispose	0, {r20 - r29, lp}, lp
  7f3a9e:	63 47 01 00 	st.w	r8, 0[sp]
  7f3aa2:	bf ff da ff 	jarl	7f3a7c <___malloc_lock>, lp
  7f3aa6:	3d 57 fd ff 	ld.w	-4[r29], r10
  7f3aaa:	23 3f 01 00 	ld.w	0[sp], r7
  7f3aae:	1c da       	mov	-4, r27
  7f3ab0:	1d ae f8 ff 	addi	-8, r29, r21
  7f3ab4:	4a d9       	and	r10, r27
  7f3ab6:	07 5e 0b 00 	addi	11, r7, r11
  7f3aba:	20 66 16 00 	movea	22, r0, r12
  7f3abe:	ec 59       	cmp	r12, r11
  7f3ac0:	a3 0d       	bnh	7f3ad4 <__realloc_r+0x54>
  7f3ac2:	18 ba       	mov	-8, r23
  7f3ac4:	4b b9       	and	r11, r23
  7f3ac6:	60 5a       	cmp	0, r11
  7f3ac8:	8e 0d       	bge	7f3ad8 <__realloc_r+0x58>
  7f3aca:	0c 52       	mov	12, r10
  7f3acc:	79 57 01 00 	st.w	r10, 0[r25]
  7f3ad0:	00 d2       	mov	0, r26
  7f3ad2:	a5 e5       	br	7f3a96 <__realloc_r+0x16>
  7f3ad4:	20 be 10 00 	movea	16, r0, r23
  7f3ad8:	f7 39       	cmp	r23, r7
  7f3ada:	8b fd       	bh	7f3aca <__realloc_r+0x4a>
  7f3adc:	f7 d9       	cmp	r23, r27
  7f3ade:	38 06 7e 3a 	mov	0x7f3a7e, r24
  7f3ae2:	7f 00 
  7f3ae4:	ee 07 09 04 	bge	7f3eec <__realloc_r+0x46c>
  7f3ae8:	34 06 6c 01 	mov	0xfe10016c, r20
  7f3aec:	10 fe 
  7f3aee:	15 58       	mov	r21, r11
  7f3af0:	34 6f 09 00 	ld.w	8[r20], r13
  7f3af4:	db 59       	add	r27, r11
  7f3af6:	2b 67 05 00 	ld.w	4[r11], r12
  7f3afa:	eb 69       	cmp	r11, r13
  7f3afc:	a2 0d       	be	7f3b10 <__realloc_r+0x90>
  7f3afe:	1e 72       	mov	-2, r14
  7f3b00:	4c 71       	and	r12, r14
  7f3b02:	cb 71       	add	r11, r14
  7f3b04:	2e 77 05 00 	ld.w	4[r14], r14
  7f3b08:	ce 76 01 00 	andi	1, r14, r14
  7f3b0c:	60 72       	cmp	0, r14
  7f3b0e:	9a 4d       	bne	7f3ba0 <__realloc_r+0x120>
  7f3b10:	1c 72       	mov	-4, r14
  7f3b12:	1b b0       	mov	r27, r22
  7f3b14:	4e 61       	and	r14, r12
  7f3b16:	cc b1       	add	r12, r22
  7f3b18:	eb 69       	cmp	r11, r13
  7f3b1a:	aa 1d       	bne	7f3b4e <__realloc_r+0xce>
  7f3b1c:	17 76 10 00 	addi	16, r23, r14
  7f3b20:	f6 71       	cmp	r22, r14
  7f3b22:	9f 45       	bgt	7f3ba4 <__realloc_r+0x124>
  7f3b24:	16 50       	mov	r22, r10
  7f3b26:	d7 a9       	add	r23, r21
  7f3b28:	b7 51       	sub	r23, r10
  7f3b2a:	74 af 09 00 	st.w	r21, 8[r20]
  7f3b2e:	8a 56 01 00 	ori	1, r10, r10
  7f3b32:	75 57 05 00 	st.w	r10, 4[r21]
  7f3b36:	3d 57 fd ff 	ld.w	-4[r29], r10
  7f3b3a:	ca 56 01 00 	andi	1, r10, r10
  7f3b3e:	17 51       	or	r23, r10
  7f3b40:	7d 57 fd ff 	st.w	r10, -4[r29]
  7f3b44:	19 30       	mov	r25, r6
  7f3b46:	1d d0       	mov	r29, r26
  7f3b48:	f8 c7 60 f9 	jarl	[r24], lp
  7f3b4c:	d5 a5       	br	7f3a96 <__realloc_r+0x16>
  7f3b4e:	f6 b9       	cmp	r22, r23
  7f3b50:	af 2d       	bgt	7f3ba4 <__realloc_r+0x124>
  7f3b52:	2b 57 0d 00 	ld.w	12[r11], r10
  7f3b56:	2b 5f 09 00 	ld.w	8[r11], r11
  7f3b5a:	6b 57 0d 00 	st.w	r10, 12[r11]
  7f3b5e:	6a 5f 09 00 	st.w	r11, 8[r10]
  7f3b62:	35 57 05 00 	ld.w	4[r21], r10
  7f3b66:	16 60       	mov	r22, r12
  7f3b68:	15 58       	mov	r21, r11
  7f3b6a:	b7 61       	sub	r23, r12
  7f3b6c:	ca 56 01 00 	andi	1, r10, r10
  7f3b70:	d6 59       	add	r22, r11
  7f3b72:	6f 62       	cmp	15, r12
  7f3b74:	e3 07 7f 03 	bnh	7f3ef2 <__realloc_r+0x472>
  7f3b78:	17 51       	or	r23, r10
  7f3b7a:	15 38       	mov	r21, r7
  7f3b7c:	75 57 05 00 	st.w	r10, 4[r21]
  7f3b80:	d7 39       	add	r23, r7
  7f3b82:	8c 66 01 00 	ori	1, r12, r12
  7f3b86:	48 3a       	add	8, r7
  7f3b88:	67 67 fd ff 	st.w	r12, -4[r7]
  7f3b8c:	2b 57 05 00 	ld.w	4[r11], r10
  7f3b90:	19 30       	mov	r25, r6
  7f3b92:	8a 56 01 00 	ori	1, r10, r10
  7f3b96:	6b 57 05 00 	st.w	r10, 4[r11]
  7f3b9a:	bf ff d6 f6 	jarl	7f3270 <__free_r>, lp
  7f3b9e:	b5 d5       	br	7f3b44 <__realloc_r+0xc4>
  7f3ba0:	00 62       	mov	0, r12
  7f3ba2:	00 5a       	mov	0, r11
  7f3ba4:	ca 56 01 00 	andi	1, r10, r10
  7f3ba8:	60 52       	cmp	0, r10
  7f3baa:	ea 07 6b 02 	bne	7f3e14 <__realloc_r+0x394>
  7f3bae:	3d e7 f9 ff 	ld.w	-8[r29], r28
  7f3bb2:	1c 52       	mov	-4, r10
  7f3bb4:	95 e1       	subr	r21, r28
  7f3bb6:	3c d7 05 00 	ld.w	4[r28], r26
  7f3bba:	4a d1       	and	r10, r26
  7f3bbc:	db d1       	add	r27, r26
  7f3bbe:	60 5a       	cmp	0, r11
  7f3bc0:	e2 07 a7 01 	be	7f3d66 <__realloc_r+0x2e6>
  7f3bc4:	da 61       	add	r26, r12
  7f3bc6:	eb 69       	cmp	r11, r13
  7f3bc8:	0c b0       	mov	r12, r22
  7f3bca:	ea 6d       	bne	7f3ca6 <__realloc_r+0x226>
  7f3bcc:	17 56 10 00 	addi	16, r23, r10
  7f3bd0:	ec 51       	cmp	r12, r10
  7f3bd2:	ef 07 95 01 	bgt	7f3d66 <__realloc_r+0x2e6>
  7f3bd6:	3c 57 0d 00 	ld.w	12[r28], r10
  7f3bda:	3c 5f 09 00 	ld.w	8[r28], r11
  7f3bde:	1c d6 08 00 	addi	8, r28, r26
  7f3be2:	1b 46 fc ff 	addi	-4, r27, r8
  7f3be6:	6b 57 0d 00 	st.w	r10, 12[r11]
  7f3bea:	6a 5f 09 00 	st.w	r11, 8[r10]
  7f3bee:	20 56 24 00 	movea	36, r0, r10
  7f3bf2:	ea 41       	cmp	r10, r8
  7f3bf4:	cb 55       	bh	7f3c9c <__realloc_r+0x21c>
  7f3bf6:	20 5e 13 00 	movea	19, r0, r11
  7f3bfa:	eb 41       	cmp	r11, r8
  7f3bfc:	e3 4d       	bnh	7f3c98 <__realloc_r+0x218>
  7f3bfe:	3d 5f 01 00 	ld.w	0[r29], r11
  7f3c02:	7c 5f 09 00 	st.w	r11, 8[r28]
  7f3c06:	3d 5f 05 00 	ld.w	4[r29], r11
  7f3c0a:	7c 5f 0d 00 	st.w	r11, 12[r28]
  7f3c0e:	20 5e 1b 00 	movea	27, r0, r11
  7f3c12:	eb 41       	cmp	r11, r8
  7f3c14:	eb 25       	bh	7f3c60 <__realloc_r+0x1e0>
  7f3c16:	48 ea       	add	8, r29
  7f3c18:	1c 5e 10 00 	addi	16, r28, r11
  7f3c1c:	3d 57 01 00 	ld.w	0[r29], r10
  7f3c20:	6b 57 01 00 	st.w	r10, 0[r11]
  7f3c24:	3d 57 05 00 	ld.w	4[r29], r10
  7f3c28:	6b 57 05 00 	st.w	r10, 4[r11]
  7f3c2c:	3d 57 09 00 	ld.w	8[r29], r10
  7f3c30:	6b 57 09 00 	st.w	r10, 8[r11]
  7f3c34:	1c 58       	mov	r28, r11
  7f3c36:	16 50       	mov	r22, r10
  7f3c38:	d7 59       	add	r23, r11
  7f3c3a:	b7 51       	sub	r23, r10
  7f3c3c:	8a 56 01 00 	ori	1, r10, r10
  7f3c40:	74 5f 09 00 	st.w	r11, 8[r20]
  7f3c44:	6b 57 05 00 	st.w	r10, 4[r11]
  7f3c48:	3c 57 05 00 	ld.w	4[r28], r10
  7f3c4c:	ca 56 01 00 	andi	1, r10, r10
  7f3c50:	17 51       	or	r23, r10
  7f3c52:	7c 57 05 00 	st.w	r10, 4[r28]
  7f3c56:	19 30       	mov	r25, r6
  7f3c58:	f8 c7 60 f9 	jarl	[r24], lp
  7f3c5c:	bf 07 3a fe 	jr	7f3a96 <__realloc_r+0x16>
  7f3c60:	3d 5f 09 00 	ld.w	8[r29], r11
  7f3c64:	ea 41       	cmp	r10, r8
  7f3c66:	7c 5f 11 00 	st.w	r11, 16[r28]
  7f3c6a:	3d 5f 0d 00 	ld.w	12[r29], r11
  7f3c6e:	7c 5f 15 00 	st.w	r11, 20[r28]
  7f3c72:	e2 05       	be	7f3c7e <__realloc_r+0x1fe>
  7f3c74:	1d ee 10 00 	addi	16, r29, r29
  7f3c78:	1c 5e 18 00 	addi	24, r28, r11
  7f3c7c:	85 d5       	br	7f3c1c <__realloc_r+0x19c>
  7f3c7e:	3d 57 11 00 	ld.w	16[r29], r10
  7f3c82:	1c 5e 20 00 	addi	32, r28, r11
  7f3c86:	1d ee 18 00 	addi	24, r29, r29
  7f3c8a:	7c 57 19 00 	st.w	r10, 24[r28]
  7f3c8e:	3d 57 fd ff 	ld.w	-4[r29], r10
  7f3c92:	7c 57 1d 00 	st.w	r10, 28[r28]
  7f3c96:	b5 c5       	br	7f3c1c <__realloc_r+0x19c>
  7f3c98:	1a 58       	mov	r26, r11
  7f3c9a:	95 c5       	br	7f3c1c <__realloc_r+0x19c>
  7f3c9c:	1d 38       	mov	r29, r7
  7f3c9e:	1a 30       	mov	r26, r6
  7f3ca0:	bf ff 28 f3 	jarl	7f2fc8 <_memmove>, lp
  7f3ca4:	85 cd       	br	7f3c34 <__realloc_r+0x1b4>
  7f3ca6:	ec b9       	cmp	r12, r23
  7f3ca8:	ff 5d       	bgt	7f3d66 <__realloc_r+0x2e6>
  7f3caa:	2b 57 0d 00 	ld.w	12[r11], r10
  7f3cae:	2b 5f 09 00 	ld.w	8[r11], r11
  7f3cb2:	1c d6 08 00 	addi	8, r28, r26
  7f3cb6:	1b 46 fc ff 	addi	-4, r27, r8
  7f3cba:	6b 57 0d 00 	st.w	r10, 12[r11]
  7f3cbe:	6a 5f 09 00 	st.w	r11, 8[r10]
  7f3cc2:	3c 57 0d 00 	ld.w	12[r28], r10
  7f3cc6:	3c 5f 09 00 	ld.w	8[r28], r11
  7f3cca:	6b 57 0d 00 	st.w	r10, 12[r11]
  7f3cce:	6a 5f 09 00 	st.w	r11, 8[r10]
  7f3cd2:	20 56 24 00 	movea	36, r0, r10
  7f3cd6:	ea 41       	cmp	r10, r8
  7f3cd8:	ab 45       	bh	7f3d5c <__realloc_r+0x2dc>
  7f3cda:	20 5e 13 00 	movea	19, r0, r11
  7f3cde:	eb 41       	cmp	r11, r8
  7f3ce0:	c3 3d       	bnh	7f3d58 <__realloc_r+0x2d8>
  7f3ce2:	3d 5f 01 00 	ld.w	0[r29], r11
  7f3ce6:	7c 5f 09 00 	st.w	r11, 8[r28]
  7f3cea:	3d 5f 05 00 	ld.w	4[r29], r11
  7f3cee:	7c 5f 0d 00 	st.w	r11, 12[r28]
  7f3cf2:	20 5e 1b 00 	movea	27, r0, r11
  7f3cf6:	eb 41       	cmp	r11, r8
  7f3cf8:	cb 15       	bh	7f3d20 <__realloc_r+0x2a0>
  7f3cfa:	48 ea       	add	8, r29
  7f3cfc:	1c 5e 10 00 	addi	16, r28, r11
  7f3d00:	3d 57 01 00 	ld.w	0[r29], r10
  7f3d04:	6b 57 01 00 	st.w	r10, 0[r11]
  7f3d08:	3d 57 05 00 	ld.w	4[r29], r10
  7f3d0c:	6b 57 05 00 	st.w	r10, 4[r11]
  7f3d10:	3d 57 09 00 	ld.w	8[r29], r10
  7f3d14:	6b 57 09 00 	st.w	r10, 8[r11]
  7f3d18:	1a e8       	mov	r26, r29
  7f3d1a:	1c a8       	mov	r28, r21
  7f3d1c:	bf 07 46 fe 	jr	7f3b62 <__realloc_r+0xe2>
  7f3d20:	3d 5f 09 00 	ld.w	8[r29], r11
  7f3d24:	ea 41       	cmp	r10, r8
  7f3d26:	7c 5f 11 00 	st.w	r11, 16[r28]
  7f3d2a:	3d 5f 0d 00 	ld.w	12[r29], r11
  7f3d2e:	7c 5f 15 00 	st.w	r11, 20[r28]
  7f3d32:	e2 05       	be	7f3d3e <__realloc_r+0x2be>
  7f3d34:	1d ee 10 00 	addi	16, r29, r29
  7f3d38:	1c 5e 18 00 	addi	24, r28, r11
  7f3d3c:	a5 e5       	br	7f3d00 <__realloc_r+0x280>
  7f3d3e:	3d 57 11 00 	ld.w	16[r29], r10
  7f3d42:	1c 5e 20 00 	addi	32, r28, r11
  7f3d46:	1d ee 18 00 	addi	24, r29, r29
  7f3d4a:	7c 57 19 00 	st.w	r10, 24[r28]
  7f3d4e:	3d 57 fd ff 	ld.w	-4[r29], r10
  7f3d52:	7c 57 1d 00 	st.w	r10, 28[r28]
  7f3d56:	d5 d5       	br	7f3d00 <__realloc_r+0x280>
  7f3d58:	1a 58       	mov	r26, r11
  7f3d5a:	b5 d5       	br	7f3d00 <__realloc_r+0x280>
  7f3d5c:	1d 38       	mov	r29, r7
  7f3d5e:	1a 30       	mov	r26, r6
  7f3d60:	bf ff 68 f2 	jarl	7f2fc8 <_memmove>, lp
  7f3d64:	a5 dd       	br	7f3d18 <__realloc_r+0x298>
  7f3d66:	fa b9       	cmp	r26, r23
  7f3d68:	ef 55       	bgt	7f3e14 <__realloc_r+0x394>
  7f3d6a:	3c 57 0d 00 	ld.w	12[r28], r10
  7f3d6e:	3c 5f 09 00 	ld.w	8[r28], r11
  7f3d72:	1c b6 08 00 	addi	8, r28, r22
  7f3d76:	1b 46 fc ff 	addi	-4, r27, r8
  7f3d7a:	6b 57 0d 00 	st.w	r10, 12[r11]
  7f3d7e:	6a 5f 09 00 	st.w	r11, 8[r10]
  7f3d82:	20 56 24 00 	movea	36, r0, r10
  7f3d86:	ea 41       	cmp	r10, r8
  7f3d88:	9b 45       	bh	7f3e0a <__realloc_r+0x38a>
  7f3d8a:	20 5e 13 00 	movea	19, r0, r11
  7f3d8e:	eb 41       	cmp	r11, r8
  7f3d90:	b3 3d       	bnh	7f3e06 <__realloc_r+0x386>
  7f3d92:	3d 5f 01 00 	ld.w	0[r29], r11
  7f3d96:	7c 5f 09 00 	st.w	r11, 8[r28]
  7f3d9a:	3d 5f 05 00 	ld.w	4[r29], r11
  7f3d9e:	7c 5f 0d 00 	st.w	r11, 12[r28]
  7f3da2:	20 5e 1b 00 	movea	27, r0, r11
  7f3da6:	eb 41       	cmp	r11, r8
  7f3da8:	bb 15       	bh	7f3dce <__realloc_r+0x34e>
  7f3daa:	48 ea       	add	8, r29
  7f3dac:	1c 5e 10 00 	addi	16, r28, r11
  7f3db0:	3d 57 01 00 	ld.w	0[r29], r10
  7f3db4:	6b 57 01 00 	st.w	r10, 0[r11]
  7f3db8:	3d 57 05 00 	ld.w	4[r29], r10
  7f3dbc:	6b 57 05 00 	st.w	r10, 4[r11]
  7f3dc0:	3d 57 09 00 	ld.w	8[r29], r10
  7f3dc4:	6b 57 09 00 	st.w	r10, 8[r11]
  7f3dc8:	16 e8       	mov	r22, r29
  7f3dca:	1a b0       	mov	r26, r22
  7f3dcc:	f5 a5       	br	7f3d1a <__realloc_r+0x29a>
  7f3dce:	3d 5f 09 00 	ld.w	8[r29], r11
  7f3dd2:	ea 41       	cmp	r10, r8
  7f3dd4:	7c 5f 11 00 	st.w	r11, 16[r28]
  7f3dd8:	3d 5f 0d 00 	ld.w	12[r29], r11
  7f3ddc:	7c 5f 15 00 	st.w	r11, 20[r28]
  7f3de0:	e2 05       	be	7f3dec <__realloc_r+0x36c>
  7f3de2:	1d ee 10 00 	addi	16, r29, r29
  7f3de6:	1c 5e 18 00 	addi	24, r28, r11
  7f3dea:	b5 e5       	br	7f3db0 <__realloc_r+0x330>
  7f3dec:	3d 57 11 00 	ld.w	16[r29], r10
  7f3df0:	1c 5e 20 00 	addi	32, r28, r11
  7f3df4:	1d ee 18 00 	addi	24, r29, r29
  7f3df8:	7c 57 19 00 	st.w	r10, 24[r28]
  7f3dfc:	3d 57 fd ff 	ld.w	-4[r29], r10
  7f3e00:	7c 57 1d 00 	st.w	r10, 28[r28]
  7f3e04:	e5 d5       	br	7f3db0 <__realloc_r+0x330>
  7f3e06:	16 58       	mov	r22, r11
  7f3e08:	c5 d5       	br	7f3db0 <__realloc_r+0x330>
  7f3e0a:	1d 38       	mov	r29, r7
  7f3e0c:	16 30       	mov	r22, r6
  7f3e0e:	bf ff ba f1 	jarl	7f2fc8 <_memmove>, lp
  7f3e12:	b5 dd       	br	7f3dc8 <__realloc_r+0x348>
  7f3e14:	19 30       	mov	r25, r6
  7f3e16:	bf ff 6a f6 	jarl	7f3480 <__malloc_r>, lp
  7f3e1a:	60 52       	cmp	0, r10
  7f3e1c:	0a d0       	mov	r10, r26
  7f3e1e:	ea 05       	bne	7f3e2a <__realloc_r+0x3aa>
  7f3e20:	19 30       	mov	r25, r6
  7f3e22:	f8 c7 60 f9 	jarl	[r24], lp
  7f3e26:	bf 07 aa fc 	jr	7f3ad0 <__realloc_r+0x50>
  7f3e2a:	3d 5f fd ff 	ld.w	-4[r29], r11
  7f3e2e:	1e 52       	mov	-2, r10
  7f3e30:	4a 59       	and	r10, r11
  7f3e32:	1a 56 f8 ff 	addi	-8, r26, r10
  7f3e36:	d5 59       	add	r21, r11
  7f3e38:	ea 59       	cmp	r10, r11
  7f3e3a:	9a 0d       	bne	7f3e4c <__realloc_r+0x3cc>
  7f3e3c:	3a 57 fd ff 	ld.w	-4[r26], r10
  7f3e40:	1c 5a       	mov	-4, r11
  7f3e42:	4b 51       	and	r11, r10
  7f3e44:	db 51       	add	r27, r10
  7f3e46:	0a b0       	mov	r10, r22
  7f3e48:	bf 07 1a fd 	jr	7f3b62 <__realloc_r+0xe2>
  7f3e4c:	1b 46 fc ff 	addi	-4, r27, r8
  7f3e50:	20 56 24 00 	movea	36, r0, r10
  7f3e54:	ea 41       	cmp	r10, r8
  7f3e56:	eb 45       	bh	7f3ee2 <__realloc_r+0x462>
  7f3e58:	20 5e 13 00 	movea	19, r0, r11
  7f3e5c:	eb 41       	cmp	r11, r8
  7f3e5e:	f3 3d       	bnh	7f3edc <__realloc_r+0x45c>
  7f3e60:	3d 5f 01 00 	ld.w	0[r29], r11
  7f3e64:	7a 5f 01 00 	st.w	r11, 0[r26]
  7f3e68:	3d 5f 05 00 	ld.w	4[r29], r11
  7f3e6c:	7a 5f 05 00 	st.w	r11, 4[r26]
  7f3e70:	20 5e 1b 00 	movea	27, r0, r11
  7f3e74:	eb 41       	cmp	r11, r8
  7f3e76:	fb 15       	bh	7f3ea4 <__realloc_r+0x424>
  7f3e78:	1d 5e 08 00 	addi	8, r29, r11
  7f3e7c:	1a 56 08 00 	addi	8, r26, r10
  7f3e80:	2b 67 01 00 	ld.w	0[r11], r12
  7f3e84:	6a 67 01 00 	st.w	r12, 0[r10]
  7f3e88:	2b 67 05 00 	ld.w	4[r11], r12
  7f3e8c:	6a 67 05 00 	st.w	r12, 4[r10]
  7f3e90:	2b 5f 09 00 	ld.w	8[r11], r11
  7f3e94:	6a 5f 09 00 	st.w	r11, 8[r10]
  7f3e98:	1d 38       	mov	r29, r7
  7f3e9a:	19 30       	mov	r25, r6
  7f3e9c:	bf ff d4 f3 	jarl	7f3270 <__free_r>, lp
  7f3ea0:	bf 07 b6 fd 	jr	7f3c56 <__realloc_r+0x1d6>
  7f3ea4:	3d 5f 09 00 	ld.w	8[r29], r11
  7f3ea8:	ea 41       	cmp	r10, r8
  7f3eaa:	7a 5f 09 00 	st.w	r11, 8[r26]
  7f3eae:	3d 5f 0d 00 	ld.w	12[r29], r11
  7f3eb2:	7a 5f 0d 00 	st.w	r11, 12[r26]
  7f3eb6:	e2 05       	be	7f3ec2 <__realloc_r+0x442>
  7f3eb8:	1d 5e 10 00 	addi	16, r29, r11
  7f3ebc:	1a 56 10 00 	addi	16, r26, r10
  7f3ec0:	85 e5       	br	7f3e80 <__realloc_r+0x400>
  7f3ec2:	3d 57 11 00 	ld.w	16[r29], r10
  7f3ec6:	1d 5e 18 00 	addi	24, r29, r11
  7f3eca:	7a 57 11 00 	st.w	r10, 16[r26]
  7f3ece:	3d 67 15 00 	ld.w	20[r29], r12
  7f3ed2:	1a 56 18 00 	addi	24, r26, r10
  7f3ed6:	7a 67 15 00 	st.w	r12, 20[r26]
  7f3eda:	b5 d5       	br	7f3e80 <__realloc_r+0x400>
  7f3edc:	1a 50       	mov	r26, r10
  7f3ede:	1d 58       	mov	r29, r11
  7f3ee0:	85 d5       	br	7f3e80 <__realloc_r+0x400>
  7f3ee2:	1d 38       	mov	r29, r7
  7f3ee4:	1a 30       	mov	r26, r6
  7f3ee6:	bf ff e2 f0 	jarl	7f2fc8 <_memmove>, lp
  7f3eea:	f5 d5       	br	7f3e98 <__realloc_r+0x418>
  7f3eec:	1b b0       	mov	r27, r22
  7f3eee:	bf 07 74 fc 	jr	7f3b62 <__realloc_r+0xe2>
  7f3ef2:	16 51       	or	r22, r10
  7f3ef4:	75 57 05 00 	st.w	r10, 4[r21]
  7f3ef8:	2b 57 05 00 	ld.w	4[r11], r10
  7f3efc:	8a 56 01 00 	ori	1, r10, r10
  7f3f00:	6b 57 05 00 	st.w	r10, 4[r11]
  7f3f04:	bf 07 40 fc 	jr	7f3b44 <__realloc_r+0xc4>

007f3f08 <__fclose_r>:
  7f3f08:	80 07 e1 10 	prepare	{r27 - r29, lp}, 0
  7f3f0c:	06 e0       	mov	r6, r28
  7f3f0e:	60 3a       	cmp	0, r7
  7f3f10:	07 e8       	mov	r7, r29
  7f3f12:	da 05       	bne	7f3f1c <__fclose_r+0x14>
  7f3f14:	00 da       	mov	0, r27
  7f3f16:	1b 50       	mov	r27, r10
  7f3f18:	40 06 ff 10 	dispose	0, {r27 - r29, lp}, lp
  7f3f1c:	60 32       	cmp	0, r6
  7f3f1e:	f2 05       	be	7f3f2c <__fclose_r+0x24>
  7f3f20:	26 57 35 00 	ld.w	52[r6], r10
  7f3f24:	60 52       	cmp	0, r10
  7f3f26:	ba 05       	bne	7f3f2c <__fclose_r+0x24>
  7f3f28:	bf ff 44 ea 	jarl	7f296c <___sinit>, lp
  7f3f2c:	3d 57 0c 00 	ld.h	12[r29], r10
  7f3f30:	60 52       	cmp	0, r10
  7f3f32:	92 f5       	be	7f3f14 <__fclose_r+0xc>
  7f3f34:	1d 38       	mov	r29, r7
  7f3f36:	1c 30       	mov	r28, r6
  7f3f38:	bf ff 7a e6 	jarl	7f25b2 <___sflush_r>, lp
  7f3f3c:	0a d8       	mov	r10, r27
  7f3f3e:	3d 57 2d 00 	ld.w	44[r29], r10
  7f3f42:	60 52       	cmp	0, r10
  7f3f44:	92 0d       	be	7f3f56 <__fclose_r+0x4e>
  7f3f46:	3d 3f 1d 00 	ld.w	28[r29], r7
  7f3f4a:	1c 30       	mov	r28, r6
  7f3f4c:	ea c7 60 f9 	jarl	[r10], lp
  7f3f50:	60 52       	cmp	0, r10
  7f3f52:	ae 05       	bge	7f3f56 <__fclose_r+0x4e>
  7f3f54:	1f da       	mov	-1, r27
  7f3f56:	1d 57 0c 00 	ld.b	12[r29], r10
  7f3f5a:	60 52       	cmp	0, r10
  7f3f5c:	ee 05       	bge	7f3f68 <__fclose_r+0x60>
  7f3f5e:	3d 3f 11 00 	ld.w	16[r29], r7
  7f3f62:	1c 30       	mov	r28, r6
  7f3f64:	bf ff 0c f3 	jarl	7f3270 <__free_r>, lp
  7f3f68:	3d 3f 31 00 	ld.w	48[r29], r7
  7f3f6c:	60 3a       	cmp	0, r7
  7f3f6e:	a2 0d       	be	7f3f82 <__fclose_r+0x7a>
  7f3f70:	1d 56 40 00 	addi	64, r29, r10
  7f3f74:	ea 39       	cmp	r10, r7
  7f3f76:	c2 05       	be	7f3f7e <__fclose_r+0x76>
  7f3f78:	1c 30       	mov	r28, r6
  7f3f7a:	bf ff f6 f2 	jarl	7f3270 <__free_r>, lp
  7f3f7e:	7d 07 31 00 	st.w	r0, 48[r29]
  7f3f82:	3d 3f 45 00 	ld.w	68[r29], r7
  7f3f86:	60 3a       	cmp	0, r7
  7f3f88:	e2 05       	be	7f3f94 <__fclose_r+0x8c>
  7f3f8a:	1c 30       	mov	r28, r6
  7f3f8c:	bf ff e4 f2 	jarl	7f3270 <__free_r>, lp
  7f3f90:	7d 07 45 00 	st.w	r0, 68[r29]
  7f3f94:	bf ff 04 ea 	jarl	7f2998 <___sfp_lock_acquire>, lp
  7f3f98:	7d 07 0c 00 	st.h	r0, 12[r29]
  7f3f9c:	bf ff fe e9 	jarl	7f299a <___sfp_lock_release>, lp
  7f3fa0:	b5 bd       	br	7f3f16 <__fclose_r+0xe>

007f3fa2 <_fclose>:
  7f3fa2:	06 38       	mov	r6, r7
  7f3fa4:	24 37 01 f8 	ld.w	-2048[gp], r6
  7f3fa8:	80 07 21 00 	prepare	{lp}, 0
  7f3fac:	bf ff 5c ff 	jarl	7f3f08 <__fclose_r>, lp
  7f3fb0:	40 06 3f 00 	dispose	0, {lp}, lp

007f3fb4 <___swhatbuf_r>:
  7f3fb4:	80 07 e1 10 	prepare	{r27 - r29, lp}, 0
  7f3fb8:	07 e8       	mov	r7, r29
  7f3fba:	03 1e b8 ff 	addi	-72, sp, sp
  7f3fbe:	27 3f 0e 00 	ld.h	14[r7], r7
  7f3fc2:	60 3a       	cmp	0, r7
  7f3fc4:	08 e0       	mov	r8, r28
  7f3fc6:	09 d8       	mov	r9, r27
  7f3fc8:	ae 0d       	bge	7f3fdc <___swhatbuf_r+0x28>
  7f3fca:	1d 57 0c 00 	ld.b	12[r29], r10
  7f3fce:	00 5a       	mov	0, r11
  7f3fd0:	60 52       	cmp	0, r10
  7f3fd2:	f6 1d       	blt	7f4010 <___swhatbuf_r+0x5c>
  7f3fd4:	20 66 00 04 	movea	1024, r0, r12
  7f3fd8:	00 52       	mov	0, r10
  7f3fda:	b5 15       	br	7f4000 <___swhatbuf_r+0x4c>
  7f3fdc:	03 40       	mov	sp, r8
  7f3fde:	80 ff 68 02 	jarl	7f4246 <__fstat_r>, lp
  7f3fe2:	60 52       	cmp	0, r10
  7f3fe4:	b6 f5       	blt	7f3fca <___swhatbuf_r+0x16>
  7f3fe6:	23 5f 05 00 	ld.w	4[sp], r11
  7f3fea:	20 56 00 20 	movea	8192, r0, r10
  7f3fee:	20 66 00 04 	movea	1024, r0, r12
  7f3ff2:	cb 5e 00 f0 	andi	61440, r11, r11
  7f3ff6:	ea 59       	cmp	r10, r11
  7f3ff8:	20 56 00 08 	movea	2048, r0, r10
  7f3ffc:	e2 5f 00 00 	setf	z, r11
  7f4000:	7b 5f 01 00 	st.w	r11, 0[r27]
  7f4004:	03 1e 48 00 	addi	72, sp, sp
  7f4008:	7c 67 01 00 	st.w	r12, 0[r28]
  7f400c:	40 06 ff 10 	dispose	0, {r27 - r29, lp}, lp
  7f4010:	20 66 40 00 	movea	64, r0, r12
  7f4014:	a5 e5       	br	7f3fd8 <___swhatbuf_r+0x24>

007f4016 <___smakebuf_r>:
  7f4016:	80 07 e1 30 	prepare	{r26 - r29, lp}, 0
  7f401a:	06 d8       	mov	r6, r27
  7f401c:	27 57 0c 00 	ld.h	12[r7], r10
  7f4020:	58 1a       	add	-8, sp
  7f4022:	ca 56 02 00 	andi	2, r10, r10
  7f4026:	07 e8       	mov	r7, r29
  7f4028:	60 52       	cmp	0, r10
  7f402a:	d2 0d       	be	7f4044 <___smakebuf_r+0x2e>
  7f402c:	1d 56 43 00 	addi	67, r29, r10
  7f4030:	7d 57 01 00 	st.w	r10, 0[r29]
  7f4034:	7d 57 11 00 	st.w	r10, 16[r29]
  7f4038:	01 52       	mov	1, r10
  7f403a:	7d 57 15 00 	st.w	r10, 20[r29]
  7f403e:	48 1a       	add	8, sp
  7f4040:	40 06 ff 30 	dispose	0, {r26 - r29, lp}, lp
  7f4044:	03 4e 04 00 	addi	4, sp, r9
  7f4048:	03 40       	mov	sp, r8
  7f404a:	bf ff 6a ff 	jarl	7f3fb4 <___swhatbuf_r>, lp
  7f404e:	23 d7 01 00 	ld.w	0[sp], r26
  7f4052:	1b 30       	mov	r27, r6
  7f4054:	0a e0       	mov	r10, r28
  7f4056:	1a 38       	mov	r26, r7
  7f4058:	bf ff 28 f4 	jarl	7f3480 <__malloc_r>, lp
  7f405c:	60 52       	cmp	0, r10
  7f405e:	3d 5f 0c 00 	ld.h	12[r29], r11
  7f4062:	ca 0d       	bne	7f407a <___smakebuf_r+0x64>
  7f4064:	cb 56 00 02 	andi	512, r11, r10
  7f4068:	60 52       	cmp	0, r10
  7f406a:	aa ed       	bne	7f403e <___smakebuf_r+0x28>
  7f406c:	1c 52       	mov	-4, r10
  7f406e:	4a 59       	and	r10, r11
  7f4070:	8b 5e 02 00 	ori	2, r11, r11
  7f4074:	7d 5f 0c 00 	st.h	r11, 12[r29]
  7f4078:	a5 dd       	br	7f402c <___smakebuf_r+0x16>
  7f407a:	7d 57 01 00 	st.w	r10, 0[r29]
  7f407e:	7d 57 11 00 	st.w	r10, 16[r29]
  7f4082:	23 57 05 00 	ld.w	4[sp], r10
  7f4086:	8b 5e 80 00 	ori	128, r11, r11
  7f408a:	7d 5f 0c 00 	st.h	r11, 12[r29]
  7f408e:	7d d7 15 00 	st.w	r26, 20[r29]
  7f4092:	60 52       	cmp	0, r10
  7f4094:	82 15       	be	7f40b4 <___smakebuf_r+0x9e>
  7f4096:	3d 3f 0e 00 	ld.h	14[r29], r7
  7f409a:	1b 30       	mov	r27, r6
  7f409c:	80 ff d6 01 	jarl	7f4272 <__isatty_r>, lp
  7f40a0:	60 52       	cmp	0, r10
  7f40a2:	92 0d       	be	7f40b4 <___smakebuf_r+0x9e>
  7f40a4:	3d 57 0c 00 	ld.h	12[r29], r10
  7f40a8:	1c 5a       	mov	-4, r11
  7f40aa:	4b 51       	and	r11, r10
  7f40ac:	8a 56 01 00 	ori	1, r10, r10
  7f40b0:	7d 57 0c 00 	st.h	r10, 12[r29]
  7f40b4:	3d 57 0c 00 	ld.h	12[r29], r10
  7f40b8:	0a e1       	or	r10, r28
  7f40ba:	7d e7 0c 00 	st.h	r28, 12[r29]
  7f40be:	85 c5       	br	7f403e <___smakebuf_r+0x28>

007f40c0 <__init_signal_r>:
  7f40c0:	80 07 61 00 	prepare	{r29, lp}, 0
  7f40c4:	06 e8       	mov	r6, r29
  7f40c6:	26 57 39 01 	ld.w	312[r6], r10
  7f40ca:	60 52       	cmp	0, r10
  7f40cc:	8a 15       	bne	7f40ec <__init_signal_r+0x2c>
  7f40ce:	20 3e 80 00 	movea	128, r0, r7
  7f40d2:	bf ff ae f3 	jarl	7f3480 <__malloc_r>, lp
  7f40d6:	60 52       	cmp	0, r10
  7f40d8:	7d 57 39 01 	st.w	r10, 312[r29]
  7f40dc:	b2 0d       	be	7f40f2 <__init_signal_r+0x32>
  7f40de:	0a 5e 80 00 	addi	128, r10, r11
  7f40e2:	6a 07 01 00 	st.w	r0, 0[r10]
  7f40e6:	44 52       	add	4, r10
  7f40e8:	eb 51       	cmp	r11, r10
  7f40ea:	ca fd       	bne	7f40e2 <__init_signal_r+0x22>
  7f40ec:	00 52       	mov	0, r10
  7f40ee:	40 06 7f 00 	dispose	0, {r29, lp}, lp
  7f40f2:	1f 52       	mov	-1, r10
  7f40f4:	d5 fd       	br	7f40ee <__init_signal_r+0x2e>

007f40f6 <__signal_r>:
  7f40f6:	80 07 e1 10 	prepare	{r27 - r29, lp}, 0
  7f40fa:	06 e0       	mov	r6, r28
  7f40fc:	20 56 1f 00 	movea	31, r0, r10
  7f4100:	07 e8       	mov	r7, r29
  7f4102:	ea 39       	cmp	r10, r7
  7f4104:	08 d8       	mov	r8, r27
  7f4106:	f3 05       	bnh	7f4114 <__signal_r+0x1e>
  7f4108:	20 56 16 00 	movea	22, r0, r10
  7f410c:	66 57 01 00 	st.w	r10, 0[r6]
  7f4110:	1f 52       	mov	-1, r10
  7f4112:	d5 0d       	br	7f412c <__signal_r+0x36>
  7f4114:	26 57 39 01 	ld.w	312[r6], r10
  7f4118:	60 52       	cmp	0, r10
  7f411a:	b2 0d       	be	7f4130 <__signal_r+0x3a>
  7f411c:	3c 5f 39 01 	ld.w	312[r28], r11
  7f4120:	c2 ea       	shl	2, r29
  7f4122:	dd 59       	add	r29, r11
  7f4124:	2b 57 01 00 	ld.w	0[r11], r10
  7f4128:	6b df 01 00 	st.w	r27, 0[r11]
  7f412c:	40 06 ff 10 	dispose	0, {r27 - r29, lp}, lp
  7f4130:	bf ff 90 ff 	jarl	7f40c0 <__init_signal_r>, lp
  7f4134:	60 52       	cmp	0, r10
  7f4136:	b2 f5       	be	7f411c <__signal_r+0x26>
  7f4138:	c5 ed       	br	7f4110 <__signal_r+0x1a>

007f413a <__raise_r>:
  7f413a:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f413e:	06 e8       	mov	r6, r29
  7f4140:	20 56 1f 00 	movea	31, r0, r10
  7f4144:	07 e0       	mov	r7, r28
  7f4146:	ea 39       	cmp	r10, r7
  7f4148:	83 0d       	bnh	7f4158 <__raise_r+0x1e>
  7f414a:	20 56 16 00 	movea	22, r0, r10
  7f414e:	66 57 01 00 	st.w	r10, 0[r6]
  7f4152:	1f 52       	mov	-1, r10
  7f4154:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp
  7f4158:	26 57 39 01 	ld.w	312[r6], r10
  7f415c:	60 52       	cmp	0, r10
  7f415e:	82 0d       	be	7f416e <__raise_r+0x34>
  7f4160:	07 58       	mov	r7, r11
  7f4162:	c2 5a       	shl	2, r11
  7f4164:	cb 51       	add	r11, r10
  7f4166:	2a 5f 01 00 	ld.w	0[r10], r11
  7f416a:	60 5a       	cmp	0, r11
  7f416c:	aa 0d       	bne	7f4180 <__raise_r+0x46>
  7f416e:	1d 30       	mov	r29, r6
  7f4170:	80 ff 58 01 	jarl	7f42c8 <__getpid_r>, lp
  7f4174:	1c 40       	mov	r28, r8
  7f4176:	0a 38       	mov	r10, r7
  7f4178:	1d 30       	mov	r29, r6
  7f417a:	80 ff 22 01 	jarl	7f429c <__kill_r>, lp
  7f417e:	b5 ed       	br	7f4154 <__raise_r+0x1a>
  7f4180:	61 5a       	cmp	1, r11
  7f4182:	e2 0d       	be	7f419e <__raise_r+0x64>
  7f4184:	7f 5a       	cmp	-1, r11
  7f4186:	fa 05       	bne	7f4194 <__raise_r+0x5a>
  7f4188:	20 56 16 00 	movea	22, r0, r10
  7f418c:	66 57 01 00 	st.w	r10, 0[r6]
  7f4190:	01 52       	mov	1, r10
  7f4192:	95 e5       	br	7f4154 <__raise_r+0x1a>
  7f4194:	07 30       	mov	r7, r6
  7f4196:	6a 07 01 00 	st.w	r0, 0[r10]
  7f419a:	eb c7 60 f9 	jarl	[r11], lp
  7f419e:	00 52       	mov	0, r10
  7f41a0:	a5 dd       	br	7f4154 <__raise_r+0x1a>

007f41a2 <___sigtramp_r>:
  7f41a2:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f41a6:	06 e0       	mov	r6, r28
  7f41a8:	20 56 1f 00 	movea	31, r0, r10
  7f41ac:	07 e8       	mov	r7, r29
  7f41ae:	ea 39       	cmp	r10, r7
  7f41b0:	c3 05       	bnh	7f41b8 <___sigtramp_r+0x16>
  7f41b2:	1f 52       	mov	-1, r10
  7f41b4:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp
  7f41b8:	26 57 39 01 	ld.w	312[r6], r10
  7f41bc:	60 52       	cmp	0, r10
  7f41be:	c2 0d       	be	7f41d6 <___sigtramp_r+0x34>
  7f41c0:	3c 5f 39 01 	ld.w	312[r28], r11
  7f41c4:	1d 50       	mov	r29, r10
  7f41c6:	c2 52       	shl	2, r10
  7f41c8:	ca 59       	add	r10, r11
  7f41ca:	2b 57 01 00 	ld.w	0[r11], r10
  7f41ce:	60 52       	cmp	0, r10
  7f41d0:	8a 0d       	bne	7f41e0 <___sigtramp_r+0x3e>
  7f41d2:	01 52       	mov	1, r10
  7f41d4:	85 f5       	br	7f41b4 <___sigtramp_r+0x12>
  7f41d6:	bf ff ea fe 	jarl	7f40c0 <__init_signal_r>, lp
  7f41da:	60 52       	cmp	0, r10
  7f41dc:	a2 f5       	be	7f41c0 <___sigtramp_r+0x1e>
  7f41de:	a5 ed       	br	7f41b2 <___sigtramp_r+0x10>
  7f41e0:	7f 52       	cmp	-1, r10
  7f41e2:	a2 0d       	be	7f41f6 <___sigtramp_r+0x54>
  7f41e4:	61 52       	cmp	1, r10
  7f41e6:	a2 0d       	be	7f41fa <___sigtramp_r+0x58>
  7f41e8:	1d 30       	mov	r29, r6
  7f41ea:	6b 07 01 00 	st.w	r0, 0[r11]
  7f41ee:	ea c7 60 f9 	jarl	[r10], lp
  7f41f2:	00 52       	mov	0, r10
  7f41f4:	85 e5       	br	7f41b4 <___sigtramp_r+0x12>
  7f41f6:	02 52       	mov	2, r10
  7f41f8:	e5 dd       	br	7f41b4 <___sigtramp_r+0x12>
  7f41fa:	03 52       	mov	3, r10
  7f41fc:	c5 dd       	br	7f41b4 <___sigtramp_r+0x12>

007f41fe <_raise>:
  7f41fe:	06 38       	mov	r6, r7
  7f4200:	24 37 01 f8 	ld.w	-2048[gp], r6
  7f4204:	80 07 21 00 	prepare	{lp}, 0
  7f4208:	bf ff 32 ff 	jarl	7f413a <__raise_r>, lp
  7f420c:	40 06 3f 00 	dispose	0, {lp}, lp

007f4210 <_signal>:
  7f4210:	07 40       	mov	r7, r8
  7f4212:	06 38       	mov	r6, r7
  7f4214:	24 37 01 f8 	ld.w	-2048[gp], r6
  7f4218:	80 07 21 00 	prepare	{lp}, 0
  7f421c:	bf ff da fe 	jarl	7f40f6 <__signal_r>, lp
  7f4220:	40 06 3f 00 	dispose	0, {lp}, lp

007f4224 <__init_signal>:
  7f4224:	24 37 01 f8 	ld.w	-2048[gp], r6
  7f4228:	80 07 21 00 	prepare	{lp}, 0
  7f422c:	bf ff 94 fe 	jarl	7f40c0 <__init_signal_r>, lp
  7f4230:	40 06 3f 00 	dispose	0, {lp}, lp

007f4234 <___sigtramp>:
  7f4234:	06 38       	mov	r6, r7
  7f4236:	24 37 01 f8 	ld.w	-2048[gp], r6
  7f423a:	80 07 21 00 	prepare	{lp}, 0
  7f423e:	bf ff 64 ff 	jarl	7f41a2 <___sigtramp_r>, lp
  7f4242:	40 06 3f 00 	dispose	0, {lp}, lp

007f4246 <__fstat_r>:
  7f4246:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f424a:	06 e8       	mov	r6, r29
  7f424c:	3c 06 00 27 	mov	0xfe102700, r28
  7f4250:	10 fe 
  7f4252:	07 30       	mov	r7, r6
  7f4254:	08 38       	mov	r8, r7
  7f4256:	7c 07 01 00 	st.w	r0, 0[r28]
  7f425a:	bf ff 72 c0 	jarl	7f02cc <__fstat>, lp
  7f425e:	7f 52       	cmp	-1, r10
  7f4260:	fa 05       	bne	7f426e <__fstat_r+0x28>
  7f4262:	3c 5f 01 00 	ld.w	0[r28], r11
  7f4266:	60 5a       	cmp	0, r11
  7f4268:	b2 05       	be	7f426e <__fstat_r+0x28>
  7f426a:	7d 5f 01 00 	st.w	r11, 0[r29]
  7f426e:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp

007f4272 <__isatty_r>:
  7f4272:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f4276:	06 e8       	mov	r6, r29
  7f4278:	3c 06 00 27 	mov	0xfe102700, r28
  7f427c:	10 fe 
  7f427e:	07 30       	mov	r7, r6
  7f4280:	7c 07 01 00 	st.w	r0, 0[r28]
  7f4284:	bf ff 54 c0 	jarl	7f02d8 <__isatty>, lp
  7f4288:	7f 52       	cmp	-1, r10
  7f428a:	fa 05       	bne	7f4298 <__isatty_r+0x26>
  7f428c:	3c 5f 01 00 	ld.w	0[r28], r11
  7f4290:	60 5a       	cmp	0, r11
  7f4292:	b2 05       	be	7f4298 <__isatty_r+0x26>
  7f4294:	7d 5f 01 00 	st.w	r11, 0[r29]
  7f4298:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp

007f429c <__kill_r>:
  7f429c:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f42a0:	06 e8       	mov	r6, r29
  7f42a2:	3c 06 00 27 	mov	0xfe102700, r28
  7f42a6:	10 fe 
  7f42a8:	07 30       	mov	r7, r6
  7f42aa:	08 38       	mov	r8, r7
  7f42ac:	7c 07 01 00 	st.w	r0, 0[r28]
  7f42b0:	bf ff 5e c0 	jarl	7f030e <__kill>, lp
  7f42b4:	7f 52       	cmp	-1, r10
  7f42b6:	fa 05       	bne	7f42c4 <__kill_r+0x28>
  7f42b8:	3c 5f 01 00 	ld.w	0[r28], r11
  7f42bc:	60 5a       	cmp	0, r11
  7f42be:	b2 05       	be	7f42c4 <__kill_r+0x28>
  7f42c0:	7d 5f 01 00 	st.w	r11, 0[r29]
  7f42c4:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp

007f42c8 <__getpid_r>:
  7f42c8:	80 07 21 00 	prepare	{lp}, 0
  7f42cc:	bf ff 3e c0 	jarl	7f030a <__getpid>, lp
  7f42d0:	40 06 3f 00 	dispose	0, {lp}, lp

007f42d4 <__sbrk_r>:
  7f42d4:	80 07 e1 00 	prepare	{r28 - r29, lp}, 0
  7f42d8:	06 e8       	mov	r6, r29
  7f42da:	3c 06 00 27 	mov	0xfe102700, r28
  7f42de:	10 fe 
  7f42e0:	07 30       	mov	r7, r6
  7f42e2:	7c 07 01 00 	st.w	r0, 0[r28]
  7f42e6:	bf ff 0a c0 	jarl	7f02f0 <__sbrk>, lp
  7f42ea:	7f 52       	cmp	-1, r10
  7f42ec:	fa 05       	bne	7f42fa <__sbrk_r+0x26>
  7f42ee:	3c 5f 01 00 	ld.w	0[r28], r11
  7f42f2:	60 5a       	cmp	0, r11
  7f42f4:	b2 05       	be	7f42fa <__sbrk_r+0x26>
  7f42f6:	7d 5f 01 00 	st.w	r11, 0[r29]
  7f42fa:	40 06 ff 00 	dispose	0, {r28 - r29, lp}, lp
