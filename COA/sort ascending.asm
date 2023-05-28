org 100h
.data
a db 9,8,7,6,5,4,3,2,1
.code
mov ax,@data
mov ds,ax
mov cx,9
mov si,0
bubblesort:
cmp cx,si
jz next
mov al,a[si]
mov bl,a[si+1]
cmp al,bl
ja exchange                                                             
add si,1
jmp bubblesort
exchange:
mov a[si],bl
mov a[si+1],al
add si,1
jmp bubblesort
next:
mov si,00
sub cx,1
cmp cx,0
jnz bubblesort
mov cx,9
mov si,0
loop1:
mov dl,a[si]
add dl,48
mov ah,2h
int 21h
inc si
loop loop1
