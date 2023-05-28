org 100h
.data
a db 5,2,8,7,6
evn db "Even numbers: $"
odd db " Odd numbers: $"
.code
mov ax, @data
mov dx,ax
mov cl,5
mov si,0
mov bh,0
mov bl,0
l1:
mov al,a[si]
ror al,1
jnc even
inc bl
jmp next
even:
inc bh
next:
inc si
dec cl
jnz l1
mov dx, offset evn
mov ah, 9h
int 21h
mov dl,bh
add dl, 48
mov ah, 2h
int 21h
mov dx, offset odd
mov ah, 9h
int 21h
mov dl,bl
add dl, 48
mov ah, 2h
int 21h
hlt
