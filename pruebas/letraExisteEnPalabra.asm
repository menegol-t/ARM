.data
        letraUsuario:         .hword    00              @Es halfword (16 bits) porque el usuario va a ingresar 2 caracteres, la letra que quiere en ascii y el enter. Cada caracter ascii ocupa 8 bits.

        palabraParaAdivinar:  .ascii    "pixeles"       @Para chequearlo letra por letra tengo que recorrer cada 0 bits.

        longitudPalabra:      .byte     7               @La longitud de pixeles es el num 7, que cabe en un byte.

        perder1Punto:         .ascii    "Pierdes 1 punto, te quedan "
        perder1PuntoTxtLen = . -perder1Punto

        acierto:              .ascii    "Letra correcta! Puntos restantes: "

        ganaste:              .ascii    "Ganaste!\n"

        perdiste:             .ascii    "Perdiste.\n"

        puntos:               .ascii    "7\n"

        ingresaUnaLetra:      .ascii    "Ingresa una letra: "
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
        printR1LengthR2:                        @Funcion que imprime por pantalla lo que reciba en R1, con el length indicado en R2
                .fnstart
                        mov r7, #4
                        mov r0, #1
                        swi 0
                        bx lr
                .fnend

.global main

main:

cicloDeJuego:
        mov r2, #19
        ldr r1, =ingresaUnaLetra
        bl printR1LengthR2                      @Solicitamos al usuario por pantalla que ingrese una letra

        bl leerLetraUsuario                     @Aceptamos la letra del usuario y el enter

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
                ldrb r4, [r1]                           @Caso contrario, cargamos en R4 el siguiente byte (siguiente caracter) de la palabra a adivinar.

                subs r3, #1                             @Como ya decimos que la letra actual no coincide, a la palabra le queda una iteracion menos para verificar todas las letras.
                cmp r3, #0                              @Comparamos si el contador es == 0. Si esto llega a ser, ya chequeamos contra todas las letras de la palabra a adivinar.
                beq  letraNotFound                      @Si el contador == 0, salimos del ciclo, no encontramos la letra.

                bal letraSeEncuentraEnPalabra           @Si el contador != 0, quedan letras por verificar, reiniciamos el ciclo.

        letraNotFound:
                ldr r1, =puntos                         @Si la letra no fue encontrada, se carga la direccion de puntos
                ldrb r5, [r1]                           @R5: Contiene la cantidad de puntos restantes en formate ascii (!!), no formato numero. O sea si quedan 7 puntos, r5 contiene #37. Esto es para imprimirlo en pantalla.
                sub r5, #1                              @Se le resta un punto en caso de no haber encontrado la letra adecuada

                cmp r5, #0x30                           @Vemos si los puntos tienen el valor de ascii para '0', en cuyo caso, se acabaron los intentos de adivinanza.
                beq perdioElJuego

                strb r5, [r1]                           @Si todavia quedan puntos, se guarda la cantidad de puntos actualizada

                mov r2, #27
                ldr r1, =perder1Punto
                bl printR1LengthR2                      @Imprimo por pantalla texto indicando que se perdio 1 punto

                mov r2, #3                              @Imprimo el ascii con el numero de puntos restantes, es 3 caracters por el numero + \ + n
                ldr r1, =puntos
                bl printR1LengthR2                      @Imprimo por pantalla el numero de puntos que quedan, como ascii.

                bal cicloDeJuego

        letraEncontrada:
                                                        @Si la letra fue encontrada, a la palabra deberian removersele las letras ya encontradas, asi podemos iterar sobre el resto.
                mov r2, #34
                ldr r1, =acierto
                bl printR1LengthR2                      @Si el usuario acerto la letra, se imprime 'acertaste!' seguido de los puntos que quedan.

                mov r2, #3
                ldr r1, =puntos
                bl printR1LengthR2

                bal fin

perdioElJuego:                                          @Si el usuario pierde, se imprime un mensaje de que perdio.
        mov r2, #11
        ldr r1, =perdiste
        bl printR1LengthR2
fin:
        mov r7, #1
        swi 0