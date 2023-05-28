org 100h
.data
e db " Even Number $"
o db " Odd Number $"
.code
mov al,07h
mov bh,al
mov bl,02h
div bl
mov dl,bh
add dl,48
mov ah,2h
int 21h
cmp ah,00h
je even
odd:
mov dx,offset o
mov ah,9h
int 21h
mov ah,4ch
int 21h
even:
mov dx, offset e
mov ah,9h
int 21h
hlt
