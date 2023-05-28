org 100h
.data
num1 db 10
num2 db 20
sum  db 0
.code
mov ax, @data
mov ds, ax
mov al, num1
add al, num2
mov sum, al
hlt

------------------------------

org 100h
.code
mov al, 10   
add al, 20   
hlt          
