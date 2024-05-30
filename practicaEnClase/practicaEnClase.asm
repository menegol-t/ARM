.text
.global main
        main:
                mov r0, #8      @ponemos el nro 8 en el registro 0
                mov r1, #4      @ponemos el nro 4 en el r0
                mov r2, #0      @dejamos el 0 en el r2, que es donde guardaremos resultados

                cmp r0, r1      @hace r0-r1, para comparar si son iguales o no, esto altera flags como Z
                bgt mayor
/*Branche Grater Than, solo branchea la ejecucion y nos lleva a mayor si el resultado de la comparacion anterior afecto los flags de tal manera que el resultado fue positivo, es decir, r0>r1. Si no, continua bajando */

                add r2, r1      @En caso de que r0 no sea > r1, el branch no nos llea a mayor, si no que sigue ejecutndo y llegamos aca.

                bal fin         @un branch que siempre que lleguemos aca, nos lleva al final del codigo para no ejecutar el branch mayor.

                mayor:          @codigo que se ejecuta cuado el branch nos trae a mayor
                        add r2, r1, r0
                fin:            @notese que siempre llegamos a Fin, sea por el always branch, o porque se ejecuta mayor y despues se ejecuta fin.
                        mov r7, #1
                        swi 0