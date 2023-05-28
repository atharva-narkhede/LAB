org 100h

section .data
    num1 db 45h
    num2 db 27h
    result db ?

section .text
    mov al, [num1]
    add al, [num2]
    mov [result], al

    mov dl, [result]
    add dl, 30h

    mov ah, 02h
    mov dl, [result]
    int 21h

    mov ah, 4Ch
    int 21h

end
