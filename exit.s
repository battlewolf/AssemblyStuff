.section .data

.section .text
.globl _start #is not discarded after assembly. used by linker

#General purpose
#eax
#ebx
#ecx
#edx
#edi data_index
#esi stack_index

#Special purpose registers
#ebp basepointer
#esp stackpointer
#eip instructionpointer
#eflags flags


_start:
    movl $1, %eax
    movl $0, %ebx

    int $0x80
