org 100h
.data
a db 9
b db 4
lcm db ?
.code
mov ax,@data
mov ds,ax
mov ah,0
mov al,a
mov bl,b
mov bh,al
div bl
cmp ah,0
je exit
jne l1
l1:
mov ah,0
mov al,bh
add al,a
mov bh,al
div bl
cmp ah,0
je exit
jne l1
exit:
mov lcm,bh
hlt
