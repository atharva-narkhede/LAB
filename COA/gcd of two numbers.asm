org 100h
.data
a db 8
b db 4
hcf db ?
.code
mov ax,@data
mov ds,ax
mov al,a
mov bl,b
mov ah,0
div bl
cmp ah,0
je exit
jne l1
l1:
mov ah,0 
mov al,a
dec bl
div bl
cmp ah,0
je exit
jne l1
exit:
mov hcf,bl
Hlt
