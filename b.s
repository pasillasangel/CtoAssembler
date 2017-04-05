main:
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-4], 5
        mov     DWORD PTR [rbp-8], 5
        mov     DWORD PTR [rbp-12], 0
        mov     DWORD PTR [rbp-16], 0
        mov     edx, DWORD PTR [rbp-4]
        mov     eax, DWORD PTR [rbp-8]
        add     eax, edx
        mov     DWORD PTR [rbp-12], eax
        cmp     DWORD PTR [rbp-12], 0
        jne     .L2
        mov     DWORD PTR [rbp-16], 0
        jmp     .L3
.L2:
        cmp     DWORD PTR [rbp-12], 0
        jle     .L4
        mov     DWORD PTR [rbp-16], 1
        jmp     .L3
.L4:
        cmp     DWORD PTR [rbp-12], 0
        jns     .L3
        mov     DWORD PTR [rbp-16], -1
.L3:
        mov     eax, 0
        pop     rbp
        ret
