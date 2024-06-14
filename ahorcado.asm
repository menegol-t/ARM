.data
        /*Informacion*/
        /* num aleatorio */
        seed:                   .word 1
        const1:                 .word 1103515245
        const2:                 .word 12345
        numero:                 .word 0
        poneleQueRandom:        .byte 0
        numeroQueSeriaRandom:   .byte 0         @ La funcion myrand me deja aca un numero entre 0 y F
        /* */
        palabraOriginal:        .asciz "             "
        palabraCensurada:       .asciz "             "
        input:                  .asciz "  "
        puntajestring:          .asciz "6"
        nombreJugador:          .asciz "         "

        coordenadax:            .asciz "   "                                    @Disparo
        coordenaday:            .asciz "   "                                    @
        coordenadascuerdax:     .ascii "44","45"
        coordenadascuerday:     .ascii "05","06","07","08","09"

        palabrasTxt:            .asciz "palabras.txt"
        topTxt:                 .asciz "ranking.txt"
        errorAlAbrirArchivo:    .ascii "Error al abrir el archivo"

/*      diccionarioPalabras:    .asciz "manolo\norganizacion\nensamblador\ntomaco\nprogramacion\nalfonso\nmariano\ncacas\n"*/
        diccionarioPalabras:    .zero 300       @Aca guardo la lista de palabras del txt
 /*     topjugadores:           .asciz "#juanito:0#pedrito:13#manolito:3"*/
        topjugadores:           .zero 300

        /*Escribir ranking nuevo */
        /* Ranking */
        rankingTxt:             .ascii "ranking.txt"
        diccionarioDeNombres:   .zero 40         @ Me guardo 40 bits de espacio para los caracteres del ranking, asumo que el ranking es solo de 3 nombres.
        nuevoRanking:           .zero 40        @ Aquí voy a escribir el ranking actualizado


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

        felicitaciones: .asciz "|+-------------------FELICITACIONES ADIVINASTE LA PALABRA---------------------+|\n"
                        .asciz "   Bien hecho, quieres seguir jugando? presiona (x), o otra tecla para salir    \n"
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
        actualizarRanking:      /*Agarra lo que hay en ranking.txt, elimina la primera palabra (o sea, borra todo hasta el primer enter).
                                A partir de ahi, copia la segunda y la tercera palabra en el nuevoRanking, y por ultimo añade el nuevo nombre  al final de nuevoRanking. */
        .fnstart
                push {r6}
                ldr r0, =diccionarioDeNombres
                ldr r4, =nuevoRanking
                mov r1, #0                      @ Contador de letras, lo utilizo para el offset
                mov r3, #0                      @ Contador de palabras
                mov r5, #0                      @ Offset de letras en el nuevoRankin
                mov r6, #0                      @ Contador para recorrer el nuevoNombre
                descartarPrimerNombre:
                ldrb r2, [r0, r1]               @ R2: Cada letra del diccionario de nombres
                cmp r2, #0x0a                   @ Si ya llegué al enter, ya descarté la primera palabra del txt
                beq primeraAfuera
                add r1, #1                      @ Si no llegué al primer enter, sigo iterando letra por letra
                bal descartarPrimerNombre

                primeraAfuera:
                add r1, #1                      @ Apenas llegues al ultimo caracter de la primera palabra, avanza un caracter y comenza a guardar la segunda palabra en el nuevoRanking

                copiarPalabras:
                ldrb r2, [r0, r1]
                cmp r2, #0x0a                   @ Si llego al enter, finalicé de copiar la segunda o tercer palabra al nuevo ranking
                beq siguientePalabra

                strb r2, [r4, r5]               @ R2: Copiar las letras que quedan en el diccionario de nombres a nuevoRanking.
                add r1, #1
                add r5, #1
                bal copiarPalabras

                siguientePalabra:
                cmp r3, #1                      @ Si R3 vale 0 o 1, estoy parado en el enter de la primera o segunda palabra. Si vale 2, es porque ya guardé la segunda y la tercera en el nuevo ranking
                beq concatenarUltimoJugador     @ Si ya concatené la segunda y la tercera palabras originales del diccionario al nuevo ranking, continúo concatenando la última palabra nueva.

                strb r2, [r4, r5]               @ R2: Si no, cargo el enter en el nuevo ranking, y vuelvo a seguir cargando letra por letra del diccionario de nombres al nuevo ranking
                add r1, #1
                add r3, #1
                add r5, #1

                bal copiarPalabras

                concatenarUltimoJugador:
                strb r2, [r4, r5]               @ R2: Añade un enter antes de comenzar a poner el nuevo nombre en el nuevoRanking
                add r5, #1
                ldr r0, =nombreJugador            @ R0: Nombre a añadir al final del ranking
                concatenarNuevoNombre:
                ldrb r2, [r0, r6]               @ Empiezo a cargar las letras del nuevoNombre en el nuevoRanking
                cmp r2, #00                     @ Si la letra actual es 00, llegué al final del nuevo nombre, salgo, nuevoRanking quedó actualizado
                beq cortarFuncion

                strb r2, [r4, r5]               @ R2: Cargo las letras del NuevoNombre en el NuevoRanking
                add r5, #1
                add r6, #1
                bal concatenarNuevoNombre

                cortarFuncion:
                pop {r6}
                bx lr
        .fnend


        actualizarRankingTxt:           /* Abre rankingTxt y reemplaa su contenido por el de nuevoRanking, que elimina el nombre mas viejo y añade el nombre del ultimo jugador. */
        .fnstart
                mov r7, #5
                ldr r0, =rankingTxt             @ Abre el archivo ranking.txt
                mov r1, #2                      @ Modo lectura y escritura
                mov r2, #438
                swi 0

                cmp r0, #0
                blt errorAbrirArchivo           @ Si hay un error al abrirlo, cerramos todo
                mov r6, r0

                mov r7, #3
                ldr r1, =diccionarioDeNombres   @ Pongo el texto del archivo en diccionarioDeNombres en memoria
                mov r2, #40                     @ Estimo como máximo leer 40 caracteres, o menos
                swi 0

                mov r7, #19                     @ Muevo el cursor del archivo
                mov r0, r6
                mov r1, #0
                mov r2, #0                      @ Dejo el cursor al inicio del archivo
                swi 0

                push {lr}
                bl actualizarRanking            @ usando lo leido en rankingTxt, elimina el nombre del jugador mas viejo, y añade el del ultimo jugador.
                pop {lr}

                mov r0, r6
                mov r7, #4                      @ Modo escritura
                ldr r1, =nuevoRanking           @ Sobreescribo el archivo con el nuevo ranking actualizado
                mov r2, #40                     @ Cant de caracteres a escribir
                swi 0

                mov r0, r6
                mov r7, #6                      @ Cerramos el archivo.
                swi 0

                bx lr
        .fnend

        cargarPalabrasTxt:              /*Carga el listado completo de palabras en memoria */
                .fnstart
                        mov r7, #5
                        ldr r0, =palabrasTxt
                        mov r1, #0                      @ Abre el archivo palabras.txt, solo modo lectura
                        mov r2, #438
                        swi 0

                        cmp r0, #0                      @ Comprueba si hubo error abriendo el archivo, en cuyo caso imprime el error y sale del programa
                        blt errorAbrirArchivo

                        mov r6, r0                      @ Se copia el id del archivo a r6

                        mov r7, #3
                        ldr r1, =diccionarioPalabras    @ Se lee el archivo y sus contenidos se escriben en memoria
                        mov r2, #129                    @ Cant de caracteres a leer
                        swi 0

                        mov r0, r6                      @ Cierra el archivo
                        mov r7, #6
                        swi 0

                        bx lr
                .fnend

        cargarTopTxt:                   /*Carga el ranking para mostrarlo por priemra vez en pantalla */
                .fnstart
                        mov r7, #5
                        ldr r0, =topTxt
                        mov r1, #0                      @ Abre el archivo ranking.txt, solo modo lectura
                        mov r2, #438
                        swi 0

                        cmp r0, #0                      @ Comprueba si hubo error abriendo el archivo, en cuyo caso imprime el error y sale del programa
                        blt errorAbrirArchivo

                        mov r6, r0                      @ Se copia el id del archivo a r6

                        mov r7, #3
                        ldr r1, =topjugadores           @ Se lee el archivo y sus contenidos se escriben en memoria
                        mov r2, #129                    @ Cant de caracteres a leer
                        swi 0

                        mov r0, r6                      @ Cierra el archivo
                        mov r7, #6
                        swi 0

                        bx lr
                .fnend


        seleccionarPalabraAleatoria:    /* Busca en diccionarioDePalabras la palabra que esté en la posición dictada por un número random. Por ejemplo, si el número es 0, devu*/
                .fnstart
                        ldr r0, =numeroQueSeriaRandom  @Dado este numero
                        ldrb r1,[r0]                   @ R1: Tengo el número de 0 a F, en este caso, 5.
                        ldr r0, =diccionarioPalabras
                        mov r2, #0                     @ R2: Offset para las letras del diccionario
                        mov r5, #0                     @ R5: Contador de enter
                        ciclo:
                        ldrb r3, [r0, r2]              @ R3: Cargo letra por letra el diccionario de palabras
                        cmp r3,#0x0a                   @ Si la letra actual es el ascii del 'LineFeed' (enter), llegué al final de la palabra actual.
                        beq enter
                        cmp r3,#0x00
                        beq finpalabra
                        /*Si no es enter sigo*/
                        add r2,#1                       @incremento r2 para el offset
                        bal ciclo
                        enter:
                        add r2,#1
                        add r5,#1
                        cmp r5,r1                      @ Comparo si estoy parado en la palabra que quiero
                        beq palabraEncontrada           @ Si son iguales, encontré una palabra con la posición que me pidieron.

                        @add r2, #1                      @ Aumento el offset del diccionario de palabras para agarrar la siguiente letra
                        bal ciclo

                palabraEncontrada:
                        /*Si estoy parado aqui, es que llegue a la palabra que queria*/
                        mov r5,#0                               @R5, en esta parte usamos r5 para el offset de palabra original
                        ldr r4,=palabraOriginal
                        ciclograbar:
                                ldrb r3,[r0,r2]
                                cmp r3,#0x0a
                                beq finpalabra
                                cmp r3,#0x00
                                beq finpalabra

                                strb r3,[r4,r5]
                                add r2,#1
                                add r5,#1
                                bal ciclograbar
                        finpalabra:
                                bx lr
                .fnend

        myrand:                         /* Se basa en la Seed para generar un número pseudo random y lo guarda en 'poneleQueRandom'. Guarda parte del resultado en la seed para$*/
                .fnstart
                        push {lr}
                        ldr r1, =seed
                        ldr r0, [r1]                    @ R0: Semilla
                        ldr r2, =const1
                        ldr r2, [r2]                    @ R2: 1103515245
                        mul r3, r0, r2                  @ R3: Semilla * 1103515245
                        ldr r0, =const2
                        ldr r0, [r0]
                        add r0, r0, r3                  @ R0: r3 + 12345
                        str r0, [r1]                    @ Guarda el resultado para utilizarlo como input para la siguiente operación 'seed'

                        LSL r0, #1
                        LSR r0, #17
                        and r0, r0, #0xF                @Desactiva todos los bits con un and logico, excepto los 4 menos significativos. De este modo, nos quedamos con los ulimos 4 bits aletorios (un num entr 0 y F)
                        ldr r1, =numeroQueSeriaRandom
                        strb r0, [r1]                   @Guardo el numero de 4 bits random en memoria

                        pop {lr}
                        bx lr
                .fnend



        verificarPalabraCorrecta:
                /*Si puedo recorrer toda la palabra sin que me encuentre con arrobas, quiere decir que el  usuario acerto todas las letras de la palabra*/
                /*dado que la subrutina verificarLetra se encarga de verificarlas una por una*/
                .fnstart
                        push {r0}
                        push {r1}
                        push {r4}
                        mov r8,#0                                       @Esta subrutina retorna por r8 su estado al finalizar
                        ldr r0,=palabraCensurada
                        mov r4,#0
                        cicloveri:
                                ldrb r1,[r0,r4]
                                cmp r1,#0x00
                                beq check                               @Si llega al final es porque no hay mas arrobas y adivino la palabra
                                cmp r1,#0x40
                                beq final                               @Va a quedar el registro R8=0 y va a salir de la subrutina
                                add r4,#1
                                bal cicloveri
                        check:
                                mov r8,#1
                                bal final
                        final:
                                pop {r4}
                                pop {r1}
                                pop {r0}
                                bx lr
                .fnend

        cargarTop:
                .fnstart                                        @Previamente se deben obtener de memor
                        push {r0}
                        push {r1}
                        push {r4}
                        push {r5}
                        push {r7}
                        mov r7,#1018                            @Offset de donde comenzar a escribir
                        mov r4,#0                               @iterador
                        mov r5,#0
                        ciclotop:
                                ldr r0,=topjugadores
                                ldrb r1,[r0,r4]
                                cmp r1,#0x00                    @Final de top
                                beq fintop

                                cmp r1,#0x0a                    @Termina la palabra
                                beq sumootralinea               @offset +82

                                ldr r0,=pantallaTop
                                add r0,r7                       @Estoy parado donde quiero

                                strb r1,[r0,r5]                 @Comienzo a escribir
                                add r4,#1
                                add r5,#1
                                bal ciclotop
                        sumootralinea:
                                mov r5,#0                       @R5: itera en pantalla, se tiene que reiniciar
                                add r4,#1                       @R4: itera en top en memoria, entonces lo incremento
                                add r7,#82
                                bal ciclotop
                        fintop:
                                pop {r7}
                                pop {r5}
                                pop {r4}
                                pop {r1}
                                pop {r0}
                                bx lr
                .fnend

        limpiarbasuratop:
                .fnstart
                        push {r0}
                        push {r1}
                        push {r4}
                        push {r5}
                        push {r7}
                        mov r7,#1018                            @Offset de donde comenzar a escribir
                        mov r4,#0                               @iterador
                        mov r5,#0
                        ciclobasura:
                                cmp r5,#60                       @Final de limpieza
                                beq finlimpieza

                                cmp r4,#20                      @Termina la limpieza de la linea
                                beq sumolinea                   @offset +82

                                ldr r0,=pantallaTop
                                add r0,r7                       @Estoy parado donde quiero
                                mov r1,#0x20
                                strb r1,[r0,r4]                 @Comienzo a escribir
                                add r4,#1
                                add r5,#1
                                bal ciclobasura
                        sumolinea:
                                mov r4,#0                       @R4: itera en top en memoria, entonces lo incremento
                                add r7,#82
                                bal ciclobasura
                        finlimpieza:
                                pop {r7}
                                pop {r5}
                                pop {r4}
                                pop {r1}
                                pop {r0}
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

                        push {r0}
                        push {r1}
                        verificarnombre:
                                ldr r0,=nombreJugador
                                ldrb r1,[r0]                                        @R1: caracter ingresado por el usuario
                                cmp r1,#0x0a
                                beq volveraintentar                                 @Si es enter, osea que no ingreso nada, se le debe solicitar que ingrese un nombre valido
                                bal finvalidar
                        volveraintentar:
                                push {lr}
                                bl mostrarPantallaNombre                        @Muestro el ranking de los jugadores /**/
                                bl ingresarNombre                               @Pido al usuario que ponga su nombre
                                pop {lr}
                                bal verificarnombre
                        finvalidar:                                             @Una vez que chequeamos que el nombre ingresado es valido, lo guardamos
                                pop {r1}
                                pop {r0}
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

                                cmp r1,#0x20
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

        mostrarPantallaPalabraCorrecta:
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1639
                        ldr r1,=pantallaSinHorca
                        bl imprimirPantallaGenerico
                        mov r2,#266
                        ldr r1,=felicitaciones
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend



.global main
        main:
                bl cargarPalabrasTxt                            @Carga las palabras por adivinar deltxt a memoria
                bl cargarTopTxt                                 @Carga los nombres del ranking.txt en memoria
                mainjuego:
                mov r0,#42                                      @R0: 42 porque es usado como input para myrand
                bl myrand                                       @Genera un numero semialeatorio y lo guarda en memoria
                bl seleccionarPalabraAleatoria                  @Utiliza el numero mencionado para elegir una palabra al azar

                bl limpiarbasuratop                             @Limpia la pantalla del top para la partida que esta por comenzar
                bl cargarTop                                    @Carga los datos para la partida que esta por comenzar
                bl censurarPalabra                              @Se agarra la palabra original y se genera una copia censurada en palabraCensurada
                bl actualizarPalabraCensurada                   @Actualiza la pantalla con la palabra censurada
                bl actualizarPuntaje                            @Actualiza la pantalla con el puntaje
                bl mostrarPantallaInicio

                bl ingresarCaracter                             @Solicita al usuario una letra
                bl verificarQueSeaX                             @Verifico que lo que ingreso el usuario sea la letra x para continuar, sino finaliza el juego.
                bl mostrarPantallaTop                           @Muestra los ultimos 3 jugadores
                bl ingresarCaracter                             @Nuevamente se solicita al usuario que ingrese x para continuar
                bl verificarQueSeaX
                bl mostrarPantallaNombre                        @Muestro el ranking de los jugadores
                bl ingresarNombre                               @Pido al usuario que ponga su nombre
                bl verificarNombreValido                        @Verificar que el usuario no ponga su nombre vacio.
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

                                /*Antes de volver debemos verificar si se completo la palabra*/
                                bl verificarPalabraCorrecta             @R8: retorna por r8 el estado. 1==true     0==false
                                cmp r8,#1
                                beq palabraAcertada

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
                palabraAcertada:
                        bl mostrarPantallaPalabraCorrecta
                        bl ingresarCaracter
                        bl verificarQueSeaX
                        bal mainjuego
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
                        bal mainjuego                           @Si disparo bien y quiere seguir jugando
                disparofallido:
                        bl mostrarDisparoFallido
                        bl ingresarCaracter
                        bl verificarQueSeaX                     @Si disparo mal y quiere seguir jugando
                        bal mainjuego

        errorAbrirArchivo:
        mov r2, #25
        ldr r1, =errorAlAbrirArchivo

        finjuego:
                bl actualizarRankingTxt                         @Si el usuario sale se guarda su nombre
                bl mostrarDespedida
                mov r7,#1
                swi 0
