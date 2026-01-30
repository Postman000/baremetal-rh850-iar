#include <core.h>
#include <plat.h>

MEMORY
{
  /* Keep consistent with bao-demos/config.c */

  /* ------------------------------------------------------------------------ */
  /*                            Code flash                                    */
  /* ------------------------------------------------------------------------ */

  CFUAA      : ORIGIN = CODE_BASE,  LENGTH = CODE_SIZE

  /* ------------------------------------------------------------------------ */
  /*                            Local RAM                                     */
  /* ------------------------------------------------------------------------ */

  LR_SELF    : ORIGIN = RAM_BASE,  LENGTH = RAM_SIZE
}

ENTRY(_start)

SECTIONS {

    .intvect : ALIGN(512)
    {
        KEEP(*(.intvect))
        KEEP(*(.vectors))
    } > CFUAA
  
    .inttable : ALIGN(512)
    {
        PROVIDE(__inttable_start = .);
        KEEP(*(.inttable))
        KEEP(*(.inttable.*))
        PROVIDE(__inttable_end = .);
    } > CFUAA

    .text :  {
        *(.text*)
    } > CFUAA

    .const :  {
        *(.const*)
        *(.rodata*)
    } > CFUAA

    .data : {
        __data_start = .;
        *(.data .data.*)
        PROVIDE(__global_pointer$ = . + 0x800);
        __gp = . + 0x800;
        *(.sdata .sdata.* .sdata2.*)
        __data_end = .;
    } > CFUAA

    .bss (NOLOAD) :  {
        __copy_start = .;
        __bss_start = .;
        *(.bss* .sbss*)
        *(COMMON)
        __bss_end = .;
    } AT > LR_SELF

    .stackheap (NOLOAD) : ALIGN(16) {
        KEEP(*(.stackheap))
    } AT > LR_SELF
}
