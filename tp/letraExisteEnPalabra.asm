.data
        letraUsuario:         .hword    00              @Es halfword (16 bits) porque el usuario va a ingresar 2 caracteres, la letra que quiere en ascii y el enter. Cada caracter ascii ocupa 8 bits.

        palabraParaAdivinar:  .ascii    "pixeles"       @Para chequearlo letra por letra tengo que recorrer cada 0 bits.

        longitudPalabra:      .byte     7               @La longitud de pixeles es el num 7, que cabe en un byte.

        perder1Punto:         .ascii    "Pierdes 1 punto, te quedan "

        ganaste:              .ascii    "Ganaste! \n"

        perdiste:             .ascii    "Perdiste. \n"

        puntos:               .byte     0

.text
        leerLetraUsuario:
                .fnstart
                        mov r7, #3
                        mov r0, #0
                        mov r2, #2
                        ldr r1, =letraUsuario   @lo que ingrese el usuario (2 caracteres, letra y enter) se guarda en la direccion de memoria de letraUsuario
                        swi 0
                        bx lr
                .fnend
/*      printR1LengthR2:
                .fnstart
                        mov r7, #4
                        mov r0, #1
                        swi 0
*/
.global main

main:
        bl leerLetraUsuario

        ldr r1, =letraUsuario
        ldrb r2, [r1]                           @R2: Caracter elegido por usuario. Se ingreso 2 bytes, un caracter seguido de un enter, pero yo solo quiero leer el primer caracter, hago ldrB, para leer solo el primer byte.

        ldr r1, =longitudPalabra
        ldrb r3, [r1]                           @R3: La longitud de la palabra, que voy a utilizar para decir cuanto tiene que iterar el ciclo.

        ldr r1, =palabraParaAdivinar
        ldrb r4, [r1]                           @R4: Carga el primer byte (primer caracter) de la palabra a adivinar.

        letraSeEncuentraEnPalabra:
        sub r5, r2, r4                          @R5: Los bits que representan la letra del usuario y la primera letra de la palabra se restan. Si los bits son los mismos (las dos letras son la misma), r5 queda en 0.
        cmp r5, #0

        beq letraEncontrada                     @Si r5 == 0, salgo del ciclo con letra encontrada.

        add r1, #1
        ldrb r4, [r1]                   @Caso contrario, cargamos en R4 el siguiente byte (siguiente caracter) de la palabra a adivinar.

        subs r3, #1                             @Como ya decimos que la letra actual no coincide, a la palabra le queda una iteracion menos para verificar todas las letras.
        cmp r3, #0                              @Comparamos si el contador es == 0. Si esto llega a ser, ya chequeamos contra todas las letras de la palabra a adivinar.
        beq  letraNotFound                      @Si el contador == 0, salimos del ciclo, no encontramos la letra.

        bal letraSeEncuentraEnPalabra           @Si el contador != 0, quedan letras por verificar, reiniciamos el ciclo.

        letraNotFound:
        mov r5, #0                              @Si la letra no fue encontrada, r5 vale 0
        bal fin

        letraEncontrada:
        mov r5, #1                              @Si la letra fue encontrada, r5 vale 1.
        bal fin

fin:
        mov r7, #1
        swi 0