.model small



.data




.code

main proc
    
    mov cx, 10
    
    mov ah, 2
    
    for:
    mov dl, 176
    int 21h
    loop for




    endp
end