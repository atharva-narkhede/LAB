org 100h

mov ax, 8

mov bx, 4

gcd_loop:

    cmp ax, bx

    jz exit

    jg greater

    xchg ax, bx

greater:

    sub ax, bx

    jmp gcd_loop

exit:

    mov cx, ax

    Hlt
