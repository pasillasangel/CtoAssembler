main:
        pushq   %rbp
        movq    %rsp, %rbp
        movl    $5, -4(%rbp)
        movl    $5, -8(%rbp)
        movl    $0, -12(%rbp)
        movl    $0, -16(%rbp)
        movl    -4(%rbp), %edx
        movl    -8(%rbp), %eax
        addl    %edx, %eax
        movl    %eax, -12(%rbp)
        cmpl    $0, -12(%rbp)
        jne     .L2
        movl    $0, -16(%rbp)
        jmp     .L3
.L2:
        cmpl    $0, -12(%rbp)
        jle     .L4
        movl    $1, -16(%rbp)
        jmp     .L3
.L4:
        cmpl    $0, -12(%rbp)
        jns     .L3
        movl    $-1, -16(%rbp)
.L3:
        movl    $0, %eax
        popq    %rbp
        ret
