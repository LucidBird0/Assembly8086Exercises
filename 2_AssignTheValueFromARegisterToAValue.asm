.model small


.data
; Directive used for declaring data.

var1 db 1
; Simple declaration of a byte sized variable which takes the value 1 (in base 10).

.code
main proc 

    mov ax, @data    ; Load the data segment address into AX
    mov ds, ax       ; Set DS to the data segment
    ; explained in 1_BasicASM8086File.asm


    mov al, 0Bh   ; Move the value B hexadecimal (B in base 16) (11 in base 10) 
                  ; in the lower section of the "a" register.   
    ; Many asm8086 registers are divided in 2 sections
    ; the lower section and the higher section
    ; They represent the register (ah concatonated with al = ax). 
    ; 10101010 01010101
    mov bh, 10101010b   ; AA (hexadecimal), 170 (unsigned decimal)
    mov bl, 01010101b   ; 55 (hexadecimal), 85 (unsigned decimal) 
    ; the value of bx is 
    ; 1010101001010101 (binary), AA55 (hexadecimal), 43605 (unsigned decimal)
    ; Because the Assembly8086 works on a 16-bit CPU
    ; 8 bits are used for both the lower section and the higher section
                                                                             


    mov var1, al  ; Copies the value that is in al into the "var1" variable

    ; Where the code goes

    main endp
end