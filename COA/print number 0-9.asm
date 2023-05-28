org 100h

.data

    a db 0,1,2,3,4,5,6,7,8,9

.code

    mov cx, 10

    mov si, 0

loop1:

    mov dl, a[si]

    add dl, '0'

    mov ah, 2h

    int 21h

    inc si

    loop loop1

    mov ah, 4Ch

    int 21h





