/**
 * SPDX-License-Identifier: Apache-2.0
 *
 * Copyright (c) Bao Project and Contributors. All rights reserved.
 */

#include <plat.h>
#include <core.h>

; Platform memory definitions for RH850-U2A16
#define CPU_MASTER  0x0
#define STACK_SIZE  0x200

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

/**
 * Not following any ABI for registers in this boot code.
 * The following registers are however reserved:
 * Register r10 is reserved to hold the CPU ID
 * Register r11 is reserved to hold the master CPU ID
 * Register r12 is reserved to hold the CPU struct size
 * Register r13 is reserved to hold the CPU struct pointer
 * Register r31 is reserved as link pointer when calling a routine
 *
 * The remaining code must use r20-r29 as scratchpad registers in the main
 * flow and r15-r19 as arguments and return values. r10-r14 are used to hold constants.
 */

_start:
    di  ; Disable interrupts
     MOV         __iar_static_base$$TP, TP
    MOV         __iar_static_base$$GP, GP

    ; get current CPU
    ; r5 = PEID
    stsr 0, r5, 2

    ; set PSW.EBV
    mov 0x3f08020, r2
    ldsr r2, 5, 0

    ; set EBASE (regID 3, selID 1)
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