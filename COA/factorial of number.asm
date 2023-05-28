org 100h

section .data
    n dw 5       ; Number for which factorial will be calculated
    result dw ?  ; Variable to store the factorial result

section .text
    mov ax, [n]        ; Move the value of n into AX register
    mov bx, ax         ; Copy the value of n into BX register (for decrementing)
    mov cx, 1          ; Initialize CX to 1 (counter for factorial multiplication)

    loop_start:
        mul cx         ; Multiply AX by CX (AX = AX * CX)
        loop loop_start ; Decrement CX and loop until CX becomes zero

    mov [result], ax   ; Store the factorial result in the result variable

    mov ah, 4Ch        ; Function to terminate the program
    int 21h            ; Terminate the program

end
