MEMORY
{
  FLASH : ORIGIN = 0x7F0000, LENGTH = 0x10000
  RAM : ORIGIN = 0xFE100000, LENGTH = 0x80000
}
ENTRY(_start)
SECTIONS {
    .start : {
        *(.start*)
    } > FLASH
    .text : {
        *(.text*)
    } > FLASH
    .const : {
        *(.const*)
        *(.rodata*)
    } > FLASH
    .data : ALIGN(8) {
        __data_start = .;
        *(.data .data.*)
        PROVIDE(__global_pointer$ = . + 0x800);
        __gp = . + 0x800;
        *(.sdata .sdata.* .sdata2.*)
        __data_end = .;
    } > RAM AT > FLASH
    __data_load_start = LOADADDR(.data);
    __data_load_end = LOADADDR(.data) + SIZEOF(.data);
    .bss (NOLOAD) : {
        __bss_start = .;
        *(.bss* .sbss*)
        *(COMMON)
        __bss_end = .;
    } > RAM
    .stackheap (NOLOAD) : ALIGN(16) {
        PROVIDE(_stack_base = .);
        . = . + 0x2000;
        PROVIDE(_heap_base = .);
        PROVIDE(__heap_base = .);
    } > RAM
}
