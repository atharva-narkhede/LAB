org 100h
.data
a db 5,7,3,4,9
msg db "Minimum element in array is $"   
msg1 db " and is present at index $"


.code    
mov ax,@data
mov ds,ax 


;bl will hold the the element to be commpared
;ax will be used to get the index
mov bl,a[0]   ;we can create a variable min in place of bl   
mov ax,0h

lea dx,msg
mov ah,9h
int 21h

mov cx,4
mov si,0
inc si
            
l1:

cmp bl,a[si]
jl l2                
mov bl,a[si] 
mov ax,si

l2:
inc si



loop l1
mov bh,al 

mov dl,bl
add dl,30h
mov ah,2h
int 21h  

lea dx,msg1
mov ah,9h
int 21h 
mov dl,bh
add dl,30h
mov ah,2h
int 21h 

hlt
