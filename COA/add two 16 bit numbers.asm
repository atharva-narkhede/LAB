org 100h
.data
num1 dw 1234h
num2 dw 5678h
sum  dw 0
.code
mov ax, @data
mov ds, ax
mov ax, num1
add ax, num2
mov sum, ax
hlt


----------------------------

org 100h
.code
mov ax, 1234h
add ax, 5678h
hlt
