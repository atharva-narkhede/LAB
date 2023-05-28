org 100h
.data
a db 1,9,7,6 
.code
mov ax,@data
mov ds,ax
mov cx,4
mov si,0 
mov bh,a[si]
loop1: 
INC si    
cmp bh,a[si] 
Jg l1
mov bh,a[si]
l1: 
mov dl,bh
loop loop1
hlt  
