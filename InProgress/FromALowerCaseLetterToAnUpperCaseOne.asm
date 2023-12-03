.model small

.data
var1 db ?


.code
main proc
    
    ; reading data
    mov ax, @data
    mov ds, ax
                  
    ; reading UserInput 
    ; and checking if it's above 97 or below 122
    notGood:
    mov ah, 1 ; setting the mode to reading
    int 21h

    cmp al, 97
    jl notGood:
    cmp al, 122
    jg notGood:    

    ; storing the value
    mov var1, al
    mov ah, 2 
                       
    ; transfering to the terminal a newline
    mov dl, 10
    int 21h
    
    ; transfering to the terminal a cret (carriage return)
    ; moves the cursor to the beginning 
    ; of the line without advancing to the next line
    mov dl, 13
    int 21h            
    
    ; substracting 32 from the initial value 
    ; from a lower-case letter to a upper-case letter
    sub var1, 32
    
       
    mov ah, 2 ; output mode
    mov dl, var1 ; transfering to the terminal the new value 
    int 21h   
 

    endp
end