org 100h

section .data
    num1 dd 12345678h   ; First number (in hexadecimal)
    num2 dd 87654321h   ; Second number (in hexadecimal)
    result dd ?         ; Variable to store the result

section .text
    mov eax, [num1]     ; Move the value of num1 into EAX register
    add eax, [num2]    ; Add the value of num2 to EAX register
    mov [result], eax  ; Store the result in the result variable

    mov ah, 4Ch         ; Function to terminate the program
    int 21h             ; Terminate the program

end
