org 100h
.data
x db "Input: $"
y db " The Factorial is $"
.code
mov dx,offset x
mov ah,9h
int 21h
mov ah, 1h
int 21h
sub al,30h
mov bl, al
mov dl, al
mov dh, 0h
mov cx, dx
dec cx
l1:
dec dl
mul dl
loop l1
mov bl, al
mov dx,offset y
mov ah, 9h
int 21h
mov dh, 0h
mov dl, bl
add dl, 48
mov ah, 2h
int 21h
hlt
