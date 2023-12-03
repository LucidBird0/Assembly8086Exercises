.model small

.data

.code
main proc

    mov ah, 1 ; Enter read mode
    ; The value (char) will be stored in al
    int 21h ; Interupts the program (in video/console mode?)
    

    endp
end