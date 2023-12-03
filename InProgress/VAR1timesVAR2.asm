.model small



.data
var1 db 8
var2 db 2
var3 db ?

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; bl will store the loop number
    ; bh will store bl - var1, to check if it's 0
    
    mov al, 0
    mov bl, 0
    cloop: ; ContinueLOOP
        add al, var1
        add bl, 1
        
        mov bh, bl
        sub bh, var2
        jnz cloop 
        ; jump to cloop if the zero flag is not 0. 
        ; That means, if ZF (zero flag) is 0, jump. 
        ; If ZF = 0, means no operation resulted in a 0 value.      
        
        mov var3, al
        ; var3 will store var1 * var2       


    final:
    endp       
end
