.section .data
    len:
        .long 2
    arr:
        .long 112, 113, 45, 66, 78, 101, 123, 42, 99, 100



.section .text
.globl _start

#ecx stores the maximum
#edi points to the current position - index 
#ebx takes the value

_start:
    movl $0, %edi
    movl arr, %ecx

    ll1:
        incl %edi

        cmpl %edi, len
        je outer
        cmpl arr(, %edi, 4), %ecx
        jge ll1
        
        movl arr(, %edi, 4), %ecx

        jmp ll1


    outer:
        movl $1, %eax
        movl %ecx, %ebx
        int $0x80
