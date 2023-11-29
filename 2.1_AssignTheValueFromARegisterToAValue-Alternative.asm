.model small


.data
    var1 db 1


.code
_start:

    mov ax, @data    ; Load the data segment address into AX
    mov ds, ax       ; Set DS to the data segment


    mov al, 0Bh
    mov var1, al   

