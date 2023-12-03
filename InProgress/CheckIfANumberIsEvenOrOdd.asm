.model small


.data
var1 db ?        
EvenParityMsg db "You inserted an even number!$"
OddParityMsg db "You inserted an odd number!$"

.code
program proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    
    mov var1, al
    sub var1, 48 ; transforms from ascii character to decimal value
    
    cmp var1, 2 ; compares the number with 2, don't know yet if there's a better way 

    mov ah, 2
    mov dl, 10 ; new line
    int 21h
    mov dl, 13 ; cret
    int 21h

    jpe EvenParityLabel
    
    jpo OddParityLabel   
    
    jmp endfunc

    EvenParityLabel:  
    mov ah, 9
    lea dx, EvenParityMsg
    int 21h
    
    jmp endparity    
 

    OddParityLabel:
    mov ah, 9
    lea dx, OddParityMsg
    int 21h      

    jmp endparity
    
    endparity:

    endfunc:         
    mov ah, 4ch
    int 21h
    ret

    endp
end program