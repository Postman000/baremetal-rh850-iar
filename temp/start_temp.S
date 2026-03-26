#define CPU_MASTER  0x0
#define STACK_SIZE  0x200

            ; 引入 IAR 内部的初始化表与函数 (完全照抄 Bao)
            SECTION     `Region$$Table`:DATA:REORDER:NOROOT(0)
            EXTERN      __iar_static_base$$GP
            EXTERN      __iar_static_base$$TP
            EXTERN      ___iar_data_init2
            EXTERN      _main

            PUBLIC      _bss_start
            PUBLIC      _bss_end
            PUBLIC      _stack_base
            PUBLIC      clear_mpu
            PUBLIC      _boot_clear

            SECTION     .start:CODE:ROOT(6)
            CODE
            PUBLIC      _start

_start:
    di

    ; 配置全局指针 (Bao 方案)
    MOV         __iar_static_base$$TP, TP
    MOV         __iar_static_base$$GP, GP

    ; 获取当前核心ID (PEID) 到 r5
    stsr        0, r5, 2

    ; 设置 PSW.EBV 等基础寄存器 (保留你的裸机逻辑)
    mov         0x3f08020, r2
    ldsr        r2, 5, 0
    mov         r0, r2
    ldsr        r2, 0, 5
    ldsr        r0, 8, 5
    ldsr        r0, 9, 5
    ldsr        r0, 12, 5
    ldsr        r0, 0, 1

    jarl        clear_mpu, lp

    ; ================= 主核判断 =================
    mov         CPU_MASTER, r10
    cmp         r5, r10
    bne         _wait_master

    ; ================= 主核独占：数据搬运 (Bao 方案) =================
    ; 借助 IAR 的 ___iar_data_init2 自动解析 Region$$Table 搬运 .data
    MOV         SFE(`Region$$Table`), R7
    MOV         SFB(`Region$$Table`), R6
    jarl        ___iar_data_init2, lp

    ; ================= 主核独占：BSS 清零 =================
    mov         _bss_start, r15
    mov         _bss_end, r16
    jarl        _boot_clear, lp

    ; ================= 主核独占：释放同步信号 =================
    mov         _baremetal_sync_flag, r20
    mov         0xBA0B007, r21
    st.w        r21, 0[r20]
    br          _setup_stack

    ; ================= 从核：死循环等待发令枪 =================
_wait_master:
    mov         _baremetal_sync_flag, r20
    ld.w        0[r20], r21
    mov         0xBA0B007, r22
    cmp         r21, r22
    bne         _wait_master

    ; ================= 所有核共同执行：配置堆栈 =================
_setup_stack:
    ; 动态分配各自栈空间 SP = _stack_base + (PEID + 1) * STACK_SIZE
    mov         _stack_base, r20
    mov         STACK_SIZE, r21
    mulh        r5, r21
    add         r21, r20
    mov         STACK_SIZE, r21
    add         r21, r20
    mov         r20, sp

    ; 跳转到 C 语言 main
    jr          _main


/**
 * Clear from [r15] to [r16]
 */
_boot_clear:
    cmp         r16, r15
    bge         _boot_clear_exit
    st.w        r0, 0[r15]
    addi        4, r15, r15
    br          _boot_clear
_boot_clear_exit:
    jmp         [lp]


/**
 * Clear MPU SRs
 */
clear_mpu:
    mov         r0, r20
    stsr        2, r21, 5
    andi        0x1F, r21, r21
    addi        1, r21, r21
clear_mpu_1:
    cmp         r20, r21
    be          clear_mpu_exit
    ldsr        r20, 16, 5
    ldsr        r0, 20, 5
    ldsr        r0, 21, 5
    ldsr        r0, 22, 5
    addi        1, r20, r20
    br          clear_mpu_1
clear_mpu_exit:
    jmp         [lp]


; =========================================================
; IAR 物理地标 (完全参考 Bao 方案)
; =========================================================
            SECTION .mark_bss_start:DATA:ROOT(6)
_bss_start:

            SECTION .mark_bss_end:DATA:ROOT(6)
_bss_end:

            SECTION .mark_stack_base:DATA:ROOT(6)
_stack_base:

            SECTION .bss:DATA:NOROOT(2)
            PUBLIC _baremetal_sync_flag
_baremetal_sync_flag:
            DS8 4

            END