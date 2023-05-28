org 100h

.code

mov dl, 5 

mov dh, 0h

mov cx, dx

dec cx

mov ax, 1 

l1:

mul dl

dec dl

loop l1

hlt
