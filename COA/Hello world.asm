org 100h

mov dx, offset message

mov ah, 9h

int 21h

mov ah, 4ch

int 21h

message db 'Hello, World!', '$'
