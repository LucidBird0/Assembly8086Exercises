.model small

.data
var1 db ?

.code
_start:      
;   The use of the "_start" label is also correct. 
;   It represents where the program code begins.
;   But in the future i'll use the other option.

    mov ax, @data
    mov ds, ax   

    ; The code goes here
