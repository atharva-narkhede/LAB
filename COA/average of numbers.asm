org 100h
.data
a db 1,2,3,4,5
avg db ?
.code
mov ax,@data
mov ds,ax
mov cx,5
mov si,0
mov bl,5
loop1:
ADD al,a[si]
inc si
loop loop1
mov ah,0
div bl
mov avg,al
Hlt
