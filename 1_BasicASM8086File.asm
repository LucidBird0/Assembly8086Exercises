.model small
; The choice of memory model depends 
; on the requirements of the program 
; and the target environment.

; types of models are:
; small, medium, compact, large, huge, tiny


.data              
; Directive used for declaring data.
var1 db ? ; The variable has no beginning value.
; Simple declaration of a byte sized variable which takes the value 1 (in base 10).



.code
; The directive which contains the code.
main proc
    mov ax, @data    ; Load the data segment address into AX
    mov ds, ax       ; Set DS to the data segment
    ; Without these 2 lines, the variables in the ".data" section
    ; will not be read.

                  
    ; The code goes here
    

    endp
end