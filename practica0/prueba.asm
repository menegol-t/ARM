.data                           @ indica que comienza la declaración de variables

dato1:          .byte 1         @ tipo byte, se inicializa en 1
dato2:          .byte 'A'       @ tipo byte, carácter A
var4:           .word 0xB12A    @ tipo word de 32 bits, contenido en hexadecimal

.text

.global main                    @ visible en todo el programa (modificador de alcance)

main:
        mov r1, #4
        mov r0, #5
        add r1, r1,r0           @suma r1=r1+r0
        mov r7, #1
        swi 0                   @ si R7=1 swi sabe que debe salir a sistema operativo
