.data
        /*Informacion*/
        palabraOriginal:        .asciz "organizacion"
        palabraCensurada:       .asciz "             "
        input:                  .asciz "  "
        puntajestring:          .asciz "6"
        nombreJugador:          .asciz "         "
        coordenadax:            .asciz "   "                                    @Disparo
        coordenaday:            .asciz "   "                                    @
        coordenadascuerdax:     .ascii "44","45"
        coordenadascuerday:     .ascii "05","06","07","08","09"
        diccionarioPalabras:    .asciz "#manolo#organizacion#ensamblador#tomaco#programacion"
        topjugadores:           .asciz "#aaJ:1#aaPa:3#ssRa:5"


        /*ASCII ART*/
        pantallaInicio: .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                *** AHORCADO ***                              |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                      Bienvenido al juego del ahorcado                        |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                            pulse x para comenzar                             |\n"
                        .asciz "|                                     o                                        |\n"
                        .asciz "|                       cualquier otra tecla para salir                        |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz " "

        pantallaDespedida:      .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                *** AHORCADO ***                              |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                               Hasta luego!!                                  |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|              Gracias por jugar, esperamos hayas disfrutado.                  |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz " "


        pantallaTop:    .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                *** AHORCADO ***                              |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                       Bienvenido al juego del ahorcado                       |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                   Los puntajes de los ultimos 3 jugadores:                   |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                # Alan:4                                      |\n"
                        .asciz "|                                # Tomas:5                                     |\n"
                        .asciz "|                                # Mariano:0                                   |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                     Presiona la tecla x para continuar                       |\n"
                        .asciz "|                                     o                                        |\n"
                        .asciz "|                      cualquier otra tecla para salir                         |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz " "

        pantallaNombre: .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                *** AHORCADO ***                              |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                       Bienvenido al juego del ahorcado                       |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                   Debes ingresar tu nombre para comenzar!!                   |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz " "

        piedepantalla:  .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "   Palabra:                                  Intentos:                          \n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz " Ingrese una letra:"

        piefallaste:    .asciz "|+---------------------------------FALLASTE!----------------------------------+|\n"
                        .asciz " Tienes un intento extra, presiona (x) para intentarlo o otra tecla para salir  \n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz " Ingrese una letra:"

        piecordex:      .asciz "|+---------------------------------EXTRA!-------------------------------------+|\n"
                        .asciz "   Debes disparar a la soga para sobrevivir, ingresando las coordenadas (X/Y)   \n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "Coordenada X(dos cifras):"

pieFallasteDisparo:     .asciz "|+----------------------------FALLASTE DISPARO!-------------------------------+|\n"
                        .asciz "       Para volver a jugar presiona (x) o cualquier otra tecla para salir       \n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "Ingresa un caracter:"

pieDisparoCorrecto:     .asciz "|+----------------------------DISPARO ACERTADO!-------------------------------+|\n"
                        .asciz "       Para seguir jugando presiona (x) o cualquier otra tecla para salir       \n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "Ingresa un caracter:"

        piecordey:      .asciz "|+---------------------------------EXTRA!-------------------------------------+|\n"
                        .asciz "   Debes disparar a la soga para sobrevivir, ingresando las coordenadas (X/Y)   \n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "Coordenada Y(dos cifras):"

        pantalla0:      .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                *** AHORCADO ***                              |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                              | .__________))______|                          |\n"
                        .asciz "|                              | | / /      ||                                 |\n"
                        .asciz "|                              | |/ /       ||                                 |\n"
                        .asciz "|                              | | /        ||                                 |\n"
                        .asciz "|                              | |/         ||                                 |\n"
                        .asciz "|                              | |          ||                                 |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"

        pantalla1:      .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                  *** AHORCADO ***                            |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                              | .__________))______|                          |\n"
                        .asciz "|                              | | / /      ||                                 |\n"
                        .asciz "|                              | |/ /       ||                                 |\n"
                        .asciz "|                              | | /        ||.-''.                            |\n"
                        .asciz "|                              | |/         |/  _ _\\                           |\n"
                        .asciz "|                              | |          ||  `/´|                           |\n"
                        .asciz "|                              | |          (\\._.'                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"

        pantalla2:      .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                  *** AHORCADO ***                            |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                              | .__________))______|                          |\n"
                        .asciz "|                              | | / /      ||                                 |\n"
                        .asciz "|                              | |/ /       ||                                 |\n"
                        .asciz "|                              | | /        ||.-''.                            |\n"
                        .asciz "|                              | |/         |/  _ _\\                           |\n"
                        .asciz "|                              | |          ||  `/´|                           |\n"
                        .asciz "|                              | |          (\\._.'                             |\n"
                        .asciz "|                              | |           `--'.                             |\n"
                        .asciz "|                              | |            . .                              |\n"
                        .asciz "|                              | |           |   |                             |\n"
                        .asciz "|                              | |           | . |                             |\n"
                        .asciz "|                              | |           |   |                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"

        pantalla3:      .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                  *** AHORCADO ***                            |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                              | .__________))______|                          |\n"
                        .asciz "|                              | | / /      ||                                 |\n"
                        .asciz "|                              | |/ /       ||                                 |\n"
                        .asciz "|                              | | /        ||.-''.                            |\n"
                        .asciz "|                              | |/         |/  _ _\\                           |\n"
                        .asciz "|                              | |          ||  `/´|                           |\n"
                        .asciz "|                              | |          (\\._.'                             |\n"
                        .asciz "|                              | |         .-`--'--.                           |\n"
                        .asciz "|                              | |        / Y . .                              |\n"
                        .asciz "|                              | |       / / |   |                             |\n"
                        .asciz "|                              | |      / /  | . |                             |\n"
                        .asciz "|                              | |     ' )   |   |                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"

        pantalla4:      .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                  *** AHORCADO ***                            |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                              | .__________))______|                          |\n"
                        .asciz "|                              | | / /      ||                                 |\n"
                        .asciz "|                              | |/ /       ||                                 |\n"
                        .asciz "|                              | | /        ||.-''.                            |\n"
                        .asciz "|                              | |/         |/  _ _\\                           |\n"
                        .asciz "|                              | |          ||  `/´|                           |\n"
                        .asciz "|                              | |          (\\._.'                             |\n"
                        .asciz "|                              | |         .-`--'--.                           |\n"
                        .asciz "|                              | |        / Y . . Y \\                          |\n"
                        .asciz "|                              | |       / / |   |\\ \\                          |\n"
                        .asciz "|                              | |      / /  | . | \\ \\                         |\n"
                        .asciz "|                              | |     ' )   |   |  ( '                        |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"
                        .asciz "|                              | |                                             |\n"

        pantalla5:      .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                  *** AHORCADO ***                            |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                              | .__________))______|                          |\n"
                        .asciz "|                              | | / /      ||                                 |\n"
                        .asciz "|                              | |/ /       ||                                 |\n"
                        .asciz "|                              | | /        ||.-''.                            |\n"
                        .asciz "|                              | |/         |/  _ _\\                           |\n"
                        .asciz "|                              | |          ||  `/´|                           |\n"
                        .asciz "|                              | |          (\\._.'                             |\n"
                        .asciz "|                              | |         .-`--'--.                           |\n"
                        .asciz "|                              | |        / Y . . Y \\                          |\n"
                        .asciz "|                              | |       / / |   |\\ \\                          |\n"
                        .asciz "|                              | |      / /  | . | \\ \\                         |\n"
                        .asciz "|                              | |     ' )   |   |  ( '                        |\n"
                        .asciz "|                              | |              ||                             |\n"
                        .asciz "|                              | |              ||                             |\n"
                        .asciz "|                              | |              ||                             |\n"
                        .asciz "|                              | |              ||                             |\n"
                        .asciz "|                              | |              |_\\                            |\n"

        pantalla6:      .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                  *** AHORCADO ***                            |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                              | .__________))______|                          |\n"
                        .asciz "|                              | | / /      ||                                 |\n"
                        .asciz "|                              | |/ /       ||                                 |\n"
                        .asciz "|                              | | /        ||.-''.                            |\n"
                        .asciz "|                              | |/         |/  _ _\\                           |\n"
                        .asciz "|                              | |          ||  `/´|                           |\n"
                        .asciz "|                              | |          (\\._.'                             |\n"
                        .asciz "|                              | |         .-`--'--.                           |\n"
                        .asciz "|                              | |        / Y . . Y \\                          |\n"
                        .asciz "|                              | |       / / |   |\\ \\                          |\n"
                        .asciz "|                              | |      / /  | . | \\ \\                         |\n"
                        .asciz "|                              | |     ' )   | _ |  ( '                        |\n"
                        .asciz "|                              | |           || ||                             |\n"
                        .asciz "|                              | |           || ||                             |\n"
                        .asciz "|                              | |           || ||                             |\n"
                        .asciz "|                              | |           || ||                             |\n"
                        .asciz "|                              | |          /_| |_\\                            |\n"

        pantallaSinHorca:       .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                  *** AHORCADO ***                            |\n"
                        .asciz "|+----------------------------------------------------------------------------+|\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                             .-''.                            |\n"
                        .asciz "|                                            /  _ _\\                           |\n"
                        .asciz "|                                            |  `/´|                           |\n"
                        .asciz "|                                           (\\._.'                             |\n"
                        .asciz "|                                          .-`--'--.                           |\n"
                        .asciz "|                                         / Y . . Y \\                          |\n"
                        .asciz "|                                        / / |   |\\ \\                          |\n"
                        .asciz "|                                       / /  | . | \\ \\                         |\n"
                        .asciz "|                                      ' )   | _ |  ( '                        |\n"
                        .asciz "|                                            || ||                             |\n"
                        .asciz "|                                            || ||                             |\n"
                        .asciz "|                                            || ||                             |\n"
                        .asciz "|                                            || ||                             |\n"
                        .asciz "|                                           /_| |_\\                            |\n"


.text
        /*SUBRUTINAS*/
        cargarTop:
                .fnstart                                        @Previamente se deben obtener de memoria
                        mov r7,#1018                            @Offset de donde comenzar a escribir
                        mov r4,#1                               @iterador
                        mov r5,#0
                        ciclotop:
                                ldr r0,=topjugadores
                                ldrb r1,[r0,r4]
                                cmp r1,#0x00                    @Final de top
                                beq fintop

                                cmp r1,#'#'                     @Termina la palabra
                                beq sumootralinea               @offset +82

                                ldr r0,=pantallaTop
                                add r0,r7                       @Estoy parado donde quiero

                                /*Problema planteado y resuelto: siempre que se escribe antes previamente en la partida ya habia datos
                                y si estos eran de mayor longitud, al cargarse los nuevoss no llegan a tapar los viejos*/
                                /*Entonces lo que se hace es, antes de escribir, se limpian 20 caracteres donde queremos escribir*/
                                push {r0}
                                push {r1}
                                push {r4}
                                push {lr}
                                @bl limpiarbasuratop
                                pop {lr}
                                pop {r4}
                                pop {r1}
                                pop {r0}

                                strb r1,[r0,r5]
                                add r4,#1
                                add r5,#1
                                bal ciclotop
                        sumootralinea:
                                mov r5,#0                       @R5: itera en pantalla, se tiene que reiniciar
                                add r4,#1                       @R4: itera en top en memoria, entonces lo incremento
                                add r7,#82
                                bal ciclotop
                        fintop:
                                bx lr
                .fnend

        limpiarbasuratop:
                .fnstart
                                /*Tener en cuenta que esta subrutina es complementaria de cargarTop y utiliza datos de los registro ya utilizados*/
                                mov r4,#0                       @Temporalmente lo uso para saber cuantos espacios escribo
                                clearbasura:
                                        cmp r4,#20
                                        beq finbasura
                                        mov r1,#0x20
                                        strb r1,[r0,r4]
                                        add r4,#1
                                        bal clearbasura
                                finbasura:
                                        bx lr
                .fnend

        verificarDisparo:               /*Se retorna R8=1 si disparo correcto o R8=0 si disparo fallo*/
                .fnstart
                        push {r0}                       @Salvamos el valor de los registros por si se estaban usando
                        push {r1}
                        push {r2}
                        push {r3}
                        push {r4}

                        mov r8,#0                       @Si llega al final sin modificarse es false
                        mov r4,#0                       @R4: iterador para coordenadas y

                        ldr r0,=coordenadax
                        ldrh r1,[r0]                    @R1: Caracteres que el usuario ingreso, pensando en la coordenada x
                        ldr r0,=coordenaday
                        ldrh r3,[r0]                    @R3: coordenada y ingresada, son dos caracteres

                        /*Hay 2 posibles coordenadas de X donde se encuentra la cuerda, asi que chequeo lo que ingreso el usuario contra ambas*/
                        ldr r0,=coordenadascuerdax
                        ldrh r2,[r0,#0]

                        cmp r1,r2
                        beq verificary

                        ldrh r2,[r0,#2]
                        cmp r1,r2
                        beq verificary

                        bal finalverificacion           @Si ninguna coordenada es correcta, return.
                        /*Solo se va a verificar la coordenada y si se acerto en la coordenada x*/
                        verificary:                     @Hay 5 coordenadas de Y posibles, itero sobre ellas.
                                cmp r4,#10              @R4 era nuestro contador, si llegue a 10, ya verfique toda las cordenadas de Y posibles.
                                bgt finalverificacion

                                ldr r0,=coordenadascuerday
                                ldrh r2,[r0,r4]         @R4 empieza en 0, pero va aumentando de a 2 en 2, por cada hword (2 cifras de coordenada)

                                cmp r2,r3
                                beq coordeEncontrada

                                add r4,#2               @Si la cordenada Y (2 digitos) ingresado por el usuario no coincide con los 2 dijitos de la soga, anañdo al contador y reinicio.
                                bal verificary

                        coordeEncontrada:
                                mov r8,#1               @return true;
                        finalverificacion:
                                pop {r4}
                                pop {r3}
                                pop {r2}
                                pop {r1}
                                pop {r0}
                                bx lr                   @Devuelvo los registros como estaban antes de salir, por si acaso.
                .fnend

        modificarPalabraCensurada:                      /*Va 'des-censurando' la palabra censurada, si la letra en 'input' es igual a alguna letra de la palabra por adivinar.*/
                .fnstart
                        push {r0}
                        push {r1}
                        push {r2}
                        push {r6}

                        ldr r0,=input
                        ldrb r1,[r0]                    @R1: Caracter ingresado por el usuario
                        mov r6,#0                       @Offset por cada caracter de la palabra en memoria.
                        ciclosetpalabra:
                                ldr r0,=palabraOriginal
                                ldrb r2,[r0,r6]         @R2: Caracter de la palabra original

                                cmp r2,#0x00            @Chequeo no estar en el final de la palabra
                                beq finalset

                                cmp r2,r1               @Comparo caracter ingresado con el caracter de la palabra original
                                beq setpalabra

                                add r6,#1               @Si los caracateres no son iguales, sumo 1 al offset y reinicio el ciclo para seguir chequeando las otras letras.
                                bal ciclosetpalabra

                        setpalabra:
                                ldr r0,=palabraCensurada
                                strb r2,[r0,r6]         @Si el caracter esta contenido en la palabra, lo transcribo a la palabra censurada
                                                        @Sobreescribo el 'arroba' de la palabra censurada
                                add r6,#1
                                bal ciclosetpalabra
                        finalset:
                                pop {r6}
                                pop {r2}
                                pop {r1}
                                pop {r0}
                                bx lr
                .fnend

        descontarPuntajeMemoria:                        /*Resta 1 a puntajeString en memoria*/
                .fnstart
                        push {r0}
                        push {r1}

                        ldr r0,=puntajestring
                        ldrb r1,[r0]
                        sub r1,#1                       @Resto 1 a los puntos, teniendo en cuenta que esto es una cadena, pero al restarle estamos seleccionando el ascii anterior en la tabla
                        strb r1,[r0]                    @Guardo el nuevo puntaje

                        pop {r1}
                        pop {r0}
                        bx lr
                .fnend

        ingresarCaracter:                               /*Toma un input y lo guarda en input, usado para la letra que mete el usuario */
                .fnstart
                        push {r7}
                        push {r0}
                        push {r1}
                        push {r2}

                        mov r7,#3
                        mov r0,#0
                        mov r2,#2                       @Longitud 2, para que el usuario ingrese un caracter + el enter
                        ldr r1,=input                   @Guardamos lo ingresado en 'input'.
                        swi 0

                        pop {r2}
                        pop {r1}
                        pop {r0}
                        pop {r7}
                        bx lr
                .fnend

        ingresarCoordenadaX:                            /*Toma un input y lo guarda en coordenadaX*/
                .fnstart
                        push {r7}
                        push {r0}
                        push {r1}
                        push {r2}

                        mov r7,#3
                        mov r0,#0
                        mov r2,#3                               @Longitud 3, porque el usuario ingresa 2 cifras mas el enter que es la tercera
                        ldr r1,=coordenadax                     @Guardamos el input en 'coordenadaX'
                        swi 0

                        pop {r2}
                        pop {r1}
                        pop {r0}
                        pop {r7}
                        bx lr
                .fnend

        ingresarCoordenadaY:                            /*Toma un input y lo guarda en coordenadaY*/
                .fnstart
                        push {r7}
                        push {r0}
                        push {r1}
                        push {r2}

                        mov r7,#3
                        mov r0,#0
                        mov r2,#3                       @Longitud 2, porque el enter tambien cuenta como caracter
                        ldr r1,=coordenaday             @Lo guardamos en 'coordenadaY'
                        swi 0

                        pop {r2}
                        pop {r1}
                        pop {r0}
                        pop {r7}
                        bx lr
                .fnend

        ingresarNombre:                                 /*Toma un input y guarda el nombre en nombreJugador*/
                .fnstart
                        push {r7}
                        push {r0}
                        push {r1}
                        push {r2}

                        mov r7,#3
                        mov r0,#0
                        mov r2,#9                       @longitud maxima de nombre 8 caracteres + el enter
                        ldr r1,=nombreJugador           @Lo guardamos en nombreJugador
                        swi 0

                        pop {r2}
                        pop {r1}
                        pop {r0}
                        pop {r7}
                        bx lr
                .fnend

        verificarNombreValido:                          /* Solo verifica que lo que ingreso el usuario no sea completamente vacio*/
                .fnstart
                        @no se cual es el hexa del enter
                        bx lr
                .fnend

        verificarQueSeaX:                               /* Verifica que el input sea 'x'*/
                .fnstart
                        push {r0}
                        push {r1}

                        ldr r0,=input
                        ldrb r1,[r0]                    @R1: caracter ingresado por el usuario
                        cmp r1,#'x'
                        bne finjuego                    @Si no es x, se sale del juego

                        pop {r1}
                        pop {r0}
                        bx lr
                .fnend

        letraContenidaEnPalabra:                        /*Si la letra se encuentra en la palabra, R8 = true*/
                .fnstart
                        mov r4,#0                       @Contador
                        ldr r0,=input
                        ldrb r1,[r0]                    @R1: letra ingresada por el usuario
                        ldr r0,=palabraOriginal         @Direccion de memoria de la palabra original
                        recorrerpalabra:
                                ldrb r2,[r0,r4]         @R2: Letra por letra de la palabra original
                                cmp r2,#0x00            @Si llegamos al final de la palabra, salimos del ciclo
                                beq finrecorrido

                                cmp r2,r1               @Si la letra del usuario es igual que la de la palabra, la encontramos.
                                beq encontrada
                                add r4,#1               @Caso contrario se incrementa el offset, continuamos el ciclo con la siguiente letra
                                bal recorrerpalabra
                                encontrada:
                                        mov r8,#1       @R8: return true
                                        bx lr
                        finrecorrido:
                                bx lr
                .fnend

        censurarPalabra:                                /*Se genera una palabra censurada que solo muestra la primer letra, basada en al palabra original*/
                .fnstart
                        push {r0}
                        push {r1}
                        push {r4}

                        mov r4,#1                       @R4:es un contador

                        ldr r0,=palabraOriginal
                        ldrb r1,[r0]
                        ldr r0,=palabraCensurada
                        strb r1,[r0]                    @La primer letra de la palabra original la copio en la censurada
                        ciclocensura:
                                ldr r0,=palabraOriginal
                                ldrb r1,[r0,r4]         @R1: Cargo letra por letra la palabra original.

                                cmp r1,#0x00            @Si me encuentro al final de la palabra, salgo.
                                beq fincensura

                                mov r1,#'@'             @R1: El ascii del arroba en  r1 para usarlo para censurar
                                ldr r0,=palabraCensurada
                                strb r1,[r0,r4]         @Escribo el @ en la palabra censurada, especicamente, escribo el @ en la posicion que se corresponde con la letra actual de la palabra original.
                                add r4,#1               @Incremento contador el offset
                                bal ciclocensura
                        fincensura:
                                ldr r0,=palabraCensurada
                                pop {r4}
                                pop {r1}
                                pop {r0}
                                bx lr
                .fnend

        actualizarPalabraCensurada:                     /*Esta subrutina actualiza la palabra censurada en pantalla*/
                .fnstart
                        push {r0}
                        push {r4}
                        push {r1}
                        push {r5}
                        push {r2}

                        ldr r0,=piedepantalla
                        mov r4,#94                      @Donde quiero escribir, la posicion donde inicia la palabra censurada
                        ldr r1,=palabraCensurada
                        mov r5,#0                       @R5: Offset para leer la palabra censurada letra por letra.
                        ciclocarga:
                                ldrb r2,[r1,r5]         @R2: Letra por letra de la palabra censurada
                                cmp r2,#0x00            @Si llegue al final del string, salgo.
                                beq fincarga

                                strb r2,[r0,r4]         @Escribo la letra de la palabra censurada en el pide de la pantalla.
                                add r4,#1               @Me muevo un caracter a la derecha en el pie de la pantalla.
                                add r5,#1               @Avanzo el offset que me trae letra por letra de la palabra censurada.
                                bal ciclocarga
                        fincarga:
                                pop {r2}
                                pop {r5}
                                pop {r1}
                                pop {r4}
                                bx lr
                .fnend

        actualizarPuntaje:                              /*Esta subrutina actualiza el puntaje en pantalla, mas o menos misma logica que arriba*/
                .fnstart
                        push {r0}
                        push {r4}
                        push {r1}
                        push {r5}
                        push {r2}

                        ldr r0,=piedepantalla
                        mov r4,#136                     @La posicion donde se escribe el puntaje
                        ldr r1,=puntajestring
                        mov r5,#0
                        ciclopuntaje:
                                ldrb r2,[r1,r5]
                                cmp r2,#0x00
                                beq finpuntaje

                                strb r2,[r0,r4]
                                add r4,#1
                                add r5,#1
                                bal ciclopuntaje
                        finpuntaje:
                                pop {r2}
                                pop {r5}
                                pop {r1}
                                pop {r4}
                                bx lr
                .fnend

        imprimirPantallaGenerico:                       /*ATENCION: Toma como parametro en R2 la longitud y en R1 la direccion de memoria antes de llamar a esta subrutina*/
                .fnstart
                        push {r7}
                        push {r0}

                        mov r7,#4
                        mov r0,#1
                        swi 0

                        pop {r0}
                        pop {r7}
                        bx lr
                .fnend

        mostrarPantallaInicio:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1885
                        ldr r1,=pantallaInicio
                        bl imprimirPantallaGenerico
                        pop {lr}

                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarPantallaTop:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1885
                        ldr r1,=pantallaTop
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarPantallaNombre:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1885
                        ldr r1,=pantallaNombre
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarPrimerPantalla:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla0
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=piedepantalla
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarSegundaPantalla:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla1
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=piedepantalla
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarTercerPantalla:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla2
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=piedepantalla
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarCuartaPantalla:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla3
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=piedepantalla
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarQuintaPantalla:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla4
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=piedepantalla
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarSextaPantalla:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla5
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=piedepantalla
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarSeptimaPantalla:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla6
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=piefallaste
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarPantallaSegundaParte1:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla6
                        bl imprimirPantallaGenerico
                        mov r2,#272
                        ldr r1,=piecordex
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarPantallaSegundaParte2:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla6
                        bl imprimirPantallaGenerico
                        mov r2,#272
                        ldr r1,=piecordey
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarDisparoCorrecto:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantallaSinHorca
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=pieDisparoCorrecto
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarDisparoFallido:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantalla6
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=pieFallasteDisparo
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarDespedida:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1885
                        ldr r1,=pantallaDespedida
                        bl imprimirPantallaGenerico             @Al llamar esta subrutina, previamente se debe cargar r2 y r1 con la direccion de memoria y la longitud

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

.global main
        main:
                bl cargarTop
                /*bl seleccionarPalabra                         !!!!Almacenar en palabraOriginal!!!! falta desarrollar*/
                bl censurarPalabra                              @Se agarra la palabra original y se genera una copia censurada en palabraCensurada
                ldr r0,=palabraCensurada
                bl actualizarPalabraCensurada                   @Actualiza la pantalla con la palabra censurada
                bl actualizarPuntaje                            @Actualiza la pantalla con el puntaje
                /*AAATOP*/                                      @en desarrollo /*!*/
                bl mostrarPantallaInicio
                bl ingresarCaracter                             @Solicita al usuario una letra
                bl verificarQueSeaX                             @Verifico que lo que ingreso el usuario sea la letra x para continuar, sino finaliza el juego.
                bl mostrarPantallaTop                           @Muestra los ultimos 3 jugadores
                bl ingresarCaracter                             @Nuevamente se solicita al usuario que ingrese x para continuar
                bl verificarQueSeaX
                bl mostrarPantallaNombre                        @Muestro el ranking de los jugadores /**/
                bl ingresarNombre                               @Pido al usuario que ponga su nombre
                bl verificarNombreValido                        @Verificar que el usuario no ponga su nombre vacio. /*!*/
                mov r5,#0                                       @R5: Vamos a utilizar r5 como contador de intentos fallidos
                ciclojuego:
                        mov r8,#0                               @R8: 0 === False        R7: 1=== True
                                                                @Dependiendo el estado de R5, perdi ciertos puntos.
                        cmp r5,#0
                        beq intentoFallido0
                        cmp r5,#1
                        beq intentoFallido1
                        cmp r5,#2
                        beq intentoFallido2
                        cmp r5,#3
                        beq intentoFallido3
                        cmp r5,#4
                        beq intentoFallido4
                        cmp r5,#5
                        beq intentoFallido5
                        cmp r5,#6
                        beq intentoFallido6
                        vuelvoaljuego:
                                bl ingresarCaracter                     @Solicitamos un caracter al usuario, lo guardamos en input.

                                bl letraContenidaEnPalabra              @R8: Vamos a usar r8 como bandera de si la letra esta en la palabra o no
                                cmp r8,#1
                                beq letraencontrada                     @Si la letra fue encontrada

                                add r5,#1                               @R5: Si la letra no fue encontrada, sumamos a los intentos fallidos
                                bl descontarPuntajeMemoria              @El que usamos en R5 es solo para comparar, en memoria tenemos el que luego usamos para los puntos.
                                bl actualizarPuntaje                    @Actualizamos los puntos en la pantalla
                                bal ciclojuego
                        letraencontrada:
                                bl modificarPalabraCensurada            @Si al letra se encontro, des-censuramos la palabra en pantalla.
                                bl actualizarPalabraCensurada
                                bal ciclojuego
                        intentoFallido0:
                                bl mostrarPrimerPantalla
                                bal vuelvoaljuego
                        intentoFallido1:
                                bl mostrarSegundaPantalla
                                bal vuelvoaljuego
                        intentoFallido2:
                                bl mostrarTercerPantalla
                                bal vuelvoaljuego
                        intentoFallido3:
                                bl mostrarCuartaPantalla
                                bal vuelvoaljuego
                        intentoFallido4:
                                bl mostrarQuintaPantalla
                                bal vuelvoaljuego
                        intentoFallido5:
                                bl mostrarSextaPantalla
                                bal vuelvoaljuego
                        intentoFallido6:
                                bl mostrarSeptimaPantalla       @Si ya se llego al ultimo intento
                                bl ingresarCaracter             @Preguntamos al usuario si quiere seguir jugando
                                bl verificarQueSeaX
                                bal segundaParte                @Si quiere seguir jugando, vamos a los tiros
                segundaParte:
                        bl mostrarPantallaSegundaParte1
                        bl ingresarCoordenadaX                  @Solicitamos al usuario que nos de una cordenada X
                        bl mostrarPantallaSegundaParte2
                        bl ingresarCoordenadaY                  @Solciitamos al usuario que nos de una cordenada Y

                        mov r8,#0

                        bl verificarDisparo                     @Si el disparo acerto, R8==1, si no, R8==0
                        cmp r8,#1
                        beq disparocorrecto

                        bal disparofallido
                disparocorrecto:
                        bl mostrarDisparoCorrecto
                        bl ingresarCaracter
                        bl verificarQueSeaX
                        bal main                                @Si disparo bien y quiere seguir jugando
                disparofallido:
                        bl mostrarDisparoFallido
                        bl ingresarCaracter
                        bl verificarQueSeaX                     @Si disparo mal y quiere seguir jugando
                        bal main

        finjuego:
                bl mostrarDespedida
                mov r7,#1
                swi 0
