#define TOTAL_STACK_SIZE 0x1000
#define TOTAL_HEAP_SIZE 0x1000

.section ".stackheap", "aw"

.balign	4
.global _stack_base
_stack_base:
    .space	TOTAL_STACK_SIZE

.balign	4
.global __heap_base
__heap_base:
    .space	TOTAL_HEAP_SIZE
