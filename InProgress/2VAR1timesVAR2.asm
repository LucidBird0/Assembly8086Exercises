.model small


.data
var1 db 8
var2 db 8
var3 db ?


.code
main proc
    mov ax, @data
    mov ds, ax          
    
    mov al, var1
    mov bl, var2

    mul bl ; Multiply data in bl with al and stores it in al
    
    mov var3, al 



    endp
end