.data
        palabrasTxt:            .ascii          "palabras.txt"
        palabrasTxtEnMemoria:   .zero           56              @Reservo espacio para 7 palabras, cada una con 8 caracteres (7 letras + enter)
        errorAlAbrirArchivo:    .ascii          "Error al abrir el archivo"
.text
        leerPalabrasTxt:
                .fnstart
                        @push {lr}
                        mov r7, #5
                        ldr r0, =palabrasTxt
                        mov r1, #0
                        mov r2, #438
                        swi 0

                        cmp r0, #0
                        blt errorAbrirArchivo

                        mov r6, r0

                        mov r7, #3
                        ldr r1, =palabrasTxtEnMemoria
                        mov r2, #56
                        swi 0

                        bx lr
                .fnend
        printR1LengthR2:                        @Funcion que imprime por pantalla lo que reciba en R1, con el length indicado en R2
                .fnstart
                        mov r7, #4
                        mov r0, #1
                        swi 0
                        bx lr
                .fnend

.global main
main:
        bl leerPalabrasTxt
        mov r2, #56
        ldr r1, =palabrasTxtEnMemoria
        bl printR1LengthR2
        bal fin

errorAbrirArchivo:
        mov r2, #25
        ldr r1, =errorAlAbrirArchivo
        bl printR1LengthR2
fin:
        mov r7, #1
        swi 0
