.data
        palabrasTxt:            .ascii          "palabras.txt"
        palabrasTxtEnMemoria:   .zero           56              @Reservo espacio para 7 palabras, cada una con 8 caracteres (7 letras + enter)
        errorAlAbrirArchivo:    .ascii          "Error al abrir el archivo"
.text
        leerPalabrasTxt:
                .fnstart
                        mov r7, #5
                        ldr r0, =palabrasTxt
                        mov r1, #0                      @Abre el archivo palabras.txt
                        mov r2, #438
                        swi 0

                        cmp r0, #0                      @Comprueba si hubo error abriendo el archivo, cuyo caso imprime el error y sale del programa
                        blt errorAbrirArchivo

                        mov r6, r0                      @Se copia el id del archivo a r6

                        mov r7, #3
                        ldr r1, =palabrasTxtEnMemoria   @Se lee el archivo y sus contenidos se escriben en memoria
                        mov r2, #56
                        swi 0

                        mov r0, r6                      @Cierra el archvo
                        mov r7, #6
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
        bl leerPalabrasTxt                      @Vuelca los contenidos del archivo en memoria
        mov r2, #56
        ldr r1, =palabrasTxtEnMemoria
        bl printR1LengthR2                      @Printea sus contenidos en pantalla
        bal fin

errorAbrirArchivo:
        mov r2, #25
        ldr r1, =errorAlAbrirArchivo
        bl printR1LengthR2
fin:
        mov r7, #1
        swi 0
