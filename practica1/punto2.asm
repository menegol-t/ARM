.data
.text
.global main
main:                   @2) Efectue una resta que encienda el flag N (negativo)
        mov r0, #1
        mov r1, #2
        subs r0, r1     @subS sustrae 1 a 2. La S guarda el resultado en los flags. Como el resultado es -1, se prende el flag N de resultados negativos.
        mov r7, #1
        swi 0