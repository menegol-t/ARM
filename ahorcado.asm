.data
        seed:                   .word 1
        const1:                 .word 1103515245
        const2:                 .word 12345
        numero:                 .word 0
        numeroRandom:           .byte 0         @ La funcion myrand me deja aca un numero random entre 0 y F
        listaNumerosYaElegidos: .byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0   @ Aqui van a ir los numeros random que ya hemos utilizado, para no repetir
        posicion:               .byte 0         @ Lo usaremos como 'indice' que indica la ultima posicion que fue grabada en listaNumerosYaElegidos, para poder 'apendear' los siguientes numeros

        palabraOriginal:        .asciz "             "  @ La palabra aleatoriamente elegida, sin censurar, va aca
        palabraCensurada:       .asciz "             "  @ Aca va una copia de la palabra original pero 'censurada' para mostrarle al usuario por pantalla
        input:                  .asciz "  "     @ Espacio guardado para el input del usuario
        puntajestring:          .asciz "6"      @ El puntaje maximo del jugador
        nombreJugador:          .asciz "         "      @ Aca se guarda el nombre del jugador

        coordenadax:            .asciz "   "    @ Aca el jugador ingresa la cordenada X donde quiere la bala
        coordenaday:            .asciz "   "    @ Aca el jugador ingresa la cordenada Y donde quiere la bala
        coordenadascuerdax:     .ascii "44","45"        @ Estas son las cordenadas de acierto en su posicion X e Y
        coordenadascuerday:     .ascii "05","06","07","08","09"

        palabrasTxt:            .asciz "palabras.txt"
        topTxt:                 .asciz "ranking.txt"
        errorAlAbrirArchivo:    .ascii "Error al abrir el archivo"

        diccionarioPalabras:    .zero 300       @ Aca guardo la lista de palabras del txt
        topjugadores:           .zero 300       @ Aca guardo la lista del ranking de jugadores que se muestra al usuario al inicio

        rankingTxt:             .ascii "ranking.txt"
        diccionarioDeNombres:   .zero 40        @ Me guardo 40 bits de espacio para los caracteres del ranking, asumo que el ranking es solo de 3 nombres.
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
                        .asciz "|                            Ultimos 3 jugadores:                              |\n"
                        .asciz "|                                                                              |\n"
                        .asciz "|                                #                                             |\n"
                        .asciz "|                                #                                             |\n"
                        .asciz "|                                #                                             |\n"
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
/*Aqui comienza la definicion de SUBRUTINAS*/


/*      -> ActualizarRanking(){}                                                                                                |
|                                                                                                                               |
|       Agarra lo que hay en diccionarioDeNombres, elimina la primera palabra (o sea, borra todo hasta el primer enter).        |
|       A partir de ahi, copia la segunda y la tercera palabra en el nuevoRanking, y por ultimo añade el nombreJugado           |
|       al final de nuevoRanking.                                                                                               |
|                                                                                                                               |
|       -Recibe: diccionarioDeNombres, nuevoRanking, nombreJugador                                                              |
|       -Devuelve: nuevoRanking (actualiado)                                                                                    |
|                                                                                                                               */
        actualizarRanking:
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
                ldr r0, =nombreJugador          @ R0: Nombre a añadir al final del ranking
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


/*      ->actualizarRankingTxt(){}                                                                                              |
|                                                                                                                               |
|        Abre rankingTxt y reemplaa su contenido por el de nuevoRanking, que elimina el nombre mas viejo y                      |
|        añade el nombreJugador (el ultimo jugador)                                                                             |
|                                                                                                                               |
|               -Llama a subrutina: actualizarRanking                                                                           |
|                                                                                                                               */
        actualizarRankingTxt:
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


/*      ->cargarPalabrasTxt(){}                                                                                                 |
|                                                                                                                               |
|       Obtiene en memoria el diccionario de palabras que se encuentran almacenado en un archivo.                               |
|       Almacena las palabras en memoria bajo la etiqueta diccionarioPalabras                                                   |
|                                                                                                                               */
        cargarPalabrasTxt:
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


/*      ->cargarTopTxt(){}                                                                                                      |
|                                                                                                                               |
|       Lee el archivo ranking.txt y guarda su contenido en memoria, que son los nombre de los ultimos 3 jugadores              |
|               -lo almacena en la etiqueta topjugadores                                                                        |
|                                                                                                                               */
        cargarTopTxt:
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


/*      ->seleccionarPalabra(){}                                                                                                |
|                                                                                                                               |
|       Esta subrutina selecciona una palabra del diccionario de palabras(en memoria), la seleccion la hace dada un numero      |
|       semirandom que se encuentra en memoria tambien.                                                                         |
|       Este numero que se utiliza como puntero a la palabra a seleccionar y proviene de myrand, otra subrutina que se encarga  |
|       de seleccionarlo asegurandose que sea unico (no se haya repetido) lo que resulta en palabras aleatorias sin repetir.    |
|       La palabra seleccionada es escrita en memoria, en la etiqueta palabraOriginal                                           |
|                                                                                                                               */
        seleccionarPalabra:
                .fnstart
                        ldr r0, =numeroRandom           @Dado este numero
                        ldrb r1,[r0]                    @ R1: Tengo el número de 0 a F.
                        ldr r0, =diccionarioPalabras
                        mov r2, #0                      @ R2: Offset para las letras del diccionario
                        mov r5, #0                      @ R5: Contador de enter
                        ciclo:
                                ldrb r3, [r0, r2]       @ R3: Cargo letra por letra el diccionario de palabras
                                cmp r3,#0x0a            @ Si la letra actual es el ascii del 'LineFeed' (enter), llegué al final de la palabra actual.
                                beq enter
                                cmp r3,#0x00
                                beq finpalabra
                                add r2,#1               @ Incremento r2 para el offset
                                bal ciclo
                        enter:
                                add r2,#1
                                add r5,#1
                                cmp r5,r1               @ Comparo si estoy parado en la palabra que quiero
                                beq palabraEncontrada   @ Si son iguales, encontré una palabra con la posición que me pidieron.
                                bal ciclo               @ Caso contrario, repito el ciclo
                        palabraEncontrada:              @ Si estoy parado aqui, es que llegue a la palabra que queria
                                mov r5,#0               @ R5, en esta parte usamos r5 para el offset de palabra original
                                ldr r4,=palabraOriginal
                                ciclograbar:
                                        ldrb r3,[r0,r2] @ Guardo la palabra en memoria, a menos que haya llegado a su final (enter o null)
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

/*      ->myrand(){}                                                                                                            |
|       Selecciona un numero semirandom en base a una seed, const1 y const 2. Este resultado primitivo es muy granade, asi que  |
|       nos quedamos solo con sus 4 bits menos significativos (porque tenemos en total 16 palabras para adivinar, o sea,        |
|       requerimos nada mas numeros random entre 0 y 15). Para quedarse con los ultimos 4 bits, hace un AND logico, que deja    |
|       activados solo los ultimos 4 bits que nos sirven.                                                                       |
|       Despues, verifica que este numero no haya sido elegido previamente, al compararlo con listaNumerosYaElegidos en memoria.|
|       Si el numero ya fue elegido, simplemente corremos la funcion otra vez para obtener otro numero random. Si el numero no  |
|       fue elegido previamente, utilizamos 'posicion' para saber cual es el indice del ultimo numero añadido a la lista,       |
|       grabamos aqui nuestro numero random, sumamos 1 a 'posicion', y ponemos nuestro numero final en numeroRandom para usarse.|
|       Si ya elegimos todos los numeros posibles entre el 0 y 15, la funcion corta el juego pues ya no hay mas palabras que    |
|       adivinar, el usuario gano.                                                                                              */

        myrand:
        .fnstart
                push {lr}
                push {r0}
                push {r1}
                push {r2}
                push {r3}
                push {r4}

                numeroYaFueUsado:
                        mov r4, #0
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
                        LSR r0, #17                     @ R0: El numero random
                        and r0, r0, #0xF                @ Nos quedamos solo con los ultimos 4 bits del numero random (solo neceistamos 4 bits para un numero entre 0 y 15)

                        ldr r1, =listaNumerosYaElegidos
                cicloVerificar:
                        ldrb r2, [r1, r4]               @ Vamos recorriendo la lista de todos los numeros que ya fueron elegidos
                        cmp r2, r0                      @ Si el numero ya fue usado, se llama a si misma de vuelta y busca otro numero random
                        beq numeroYaFueUsado            @ Si nuestro numero semirandom coincide con uno de la lista, pedimos otro random

                        add r4, #1                      @ Si nuestro numero no coincide con el de esta posicion en la lista, me fijo si coincide con el siguiente numero de la lista
                        cmp r4, #0x10                   @ Verifico que no este parado en el ultimo numero de la lista, que como tenemos solo 16 palabras, tenemos solo 16 numeros aleatorios posibles
                        bne cicloVerificar              @ Itero sobre todos los numeros de la lista a menos que ya este en el ultimo

                        ldr r1, =numeroRandom           @ Si ya verificamos la lista y el numero no salto, guardamos el numero random para ser utilizado
                        strb r0, [r1]

                        ldr r1, =posicion               @ Buscamos cual fue el ultimo 'indice' sobre el que se escribio en la lista de numeros
                        ldrb r2, [r1]                   @ R2: La posicion del ultimo numero que fue escrito en listaNumerosY$
                        ldr r1, =listaNumerosYaElegidos

                        strb r0, [r1, r2]               @ Escribo el numero aleatorio de R0 en la ultima posicion de listaNumerosYaElegidos (es decir, hace 'append' a la lista de numeros ya elegidos)
                        add r2, #1                      @ Añado 1 al indice de la ultima posicion escrita
                        cmp r2, #0x10                   @ Si la ultima posicion que queda por escribir es 17, ya escribi todos los numeros posibles para elegir

                        beq ganaste                     @ Si llegue al final de la lista, ya gane el juego, no quedan palabras para adivinar

                        ldr r1, =posicion               @ Si no llegue al final del juego, guardo cual es el indice del ultimo numero grabado en listaNumerosYaElegidos
                        strb r2, [r1]

                pop {r4}
                pop {r3}
                pop {r2}
                pop {r1}
                pop {r0}
                pop {lr}
                bx lr
            .fnend


/*      ->verificarPalabraCorrecta(){}
|                                                                                                                               |
|       Esta subrutina se encarga de verificar si la palabra en cuestion fue adivinada o no                                     |
|       Lo hace verificando si la palabra oculta todavia tiene '@' que es el caracter utilizado para ocultar, si la palabra     |
|       no contiene dicho caracter quiere decir que el usuario adivino la palabra.                                              |
|               Retorna por r8 su estado:                                                                                       |
|                       r8=0 -> palabra NO adivinada (false)                                                                    |
|                       r8=1 -> palabra SI adivinada (true)                                                                     |
|               No recibe ningun parametro de entrada.                                                                          |
|                                                                                                                               */
        verificarPalabraCorrecta:
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



        cargarTop:      /*Carga el ranking de los jugadores en la pantalla*/
                .fnstart
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

        limpiarbasuratop:       /*Limpia lo que tiene escrito la pantalla con el ranking de los jugadores, y escribe el ranking mas actualizado de memoria. */
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
                                cmp r5,#60                      @Final de limpieza
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

        verificarDisparo:   /*Retorna R8 = 1 si disparo correcto do en el objetivo.  R8 = 0 si disparo fallo*/
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

        modificarPalabraCensurada:  /*Va 'des-censurando' la palabra censurada, si la letra en 'input' es igual a alguna letra de la palabra por adivinar.*/
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

        descontarPuntajeMemoria:  /*Resta 1 a puntajeString en memoria*/
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

        ingresarCaracter:        /*Hace syscall para tomar un input y lo guarda en input, usado para la letra que mete el usuario */
                .fnstart
                        push {r7}
                        push {r0}
                        push {r1}
                        push {r2}
                        push {lr}

                        mov r7,#3
                        mov r0,#0
                        mov r2,#2                       @Longitud 2, para que el usuario ingrese un caracter + el enter
                        ldr r1,=input                   @Guardamos lo ingresado en 'input'.
                        swi 0
                        /*Antes de salir transformamos  a minuscula*/
                        bl transformarMinuscula
                        pop {lr}
                        pop {r2}
                        pop {r1}
                        pop {r0}
                        pop {r7}
                        bx lr
                .fnend

        transformarMinuscula:
                .fnstart
                        push {r0}
                        push {r1}

                        ldr r0, =input
                        ldrb r1,[r0,#0]                 @Quiero solo el primer byte porque es el que contiene la letra

                        cmp r1,#0x41                    @A mayuscula, primer letra en la tabla ascii
                        blt noEsLetra

                        cmp r1,#0x7A                    @z minuscula, ultima letra en la tabla ascii
                        bgt noEsLetra

                        cmp r1,#0x61                    @a minuscula
                        bge esMinuscula

                        /*Si llego aca sin saltar es porque se ingreso un caracter en mayuscula*/
                        add r1,r1,#0x20                 @Transformo lo ingresado a minuscula
                        strb r1,[r0,#0]                 @Lo guardo
                        bal fintransformacion

                        noEsLetra:
                                bal fintransformacion
                        esMinuscula:
                                bal fintransformacion
                        fintransformacion:
                                pop {r1}
                                pop {r0}
                                bx lr
                .fnend

        ingresarCoordenadaX:     /*Hace syscall para tomar un input y lo guarda en coordenadaX*/
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

        ingresarCoordenadaY:     /*Hace la syscall para tomar un input y lo guarda en coordenadaY*/
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

        ingresarNombre:          /*Hace la syscall para tomar un input y guarda el nombre en nombreJugador*/
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

        verificarNombreValido:    /* Solo verifica que lo que ingreso el usuario como nombreJugador en la funcion de arriba no sea completamente vacio*/
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
                        beq sigojugando                 @Si es x sigue el juego

                        salgodeljuego:
                                bal finjuego            @si no ingreso x salgo del juego.
                        sigojugando:
                                pop {r1}
                                pop {r0}
                                bx lr
                .fnend

        letraContenidaEnPalabra:                        /*Retorna R8 = 1 si la letra que ingreso el usuario se encuentra en la palabra. Caso contrario
                                                        Retorna R8 = 0*/
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

        imprimirPantallaGenerico:       /*Imprime lo que sea que se le pase como parametros.
                                        PARAMETROS:*R2: la longitud de una palabra a impirmir *R1: la direccion de memoria de la palabra a imprimir*/
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

        mostrarPantallaInicio:  /*Imprime la pantalla de inicio, llama a la funcion para imprimir pantallas generica*/
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

        mostrarPantallaTop:     /*Llama a la funcion para imprimir pantallas generica, mprime la pantalla con el ranking al comienzo del juego*/
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

        mostrarPantallaNombre:  /*Muestra la pantalla que solicita el nombre al usuario*/
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

        mostrarPrimerPantalla:  /*Imprime primera pantalla del juego, con la horca vacia y la parte donde se solicita una letra al usuario*/
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

        mostrarSegundaPantalla: /*Imprime la siguiente pantalla, con la cabeza del ahorcado*/
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

        mostrarTercerPantalla: /*Imprime la siguiente pantalla con el torso del ahorcado */
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

        mostrarCuartaPantalla:/*Imprime la siguiente pantalla con un brazo del ahorcado*/
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

        mostrarQuintaPantalla:/*Imprime la siguiente pantalla con los dos brazos del ahorcado*/
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

        mostrarSextaPantalla:/*Imprime la siguiente pantalla con casi todo el ahorcado excepto una pierna*/
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

        mostrarSeptimaPantalla:/*Muestra el ahorcado terminado, y el footer que indica que todavia hay una oportunidad extra (el disparo)*/
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

        mostrarPantallaSegundaParte1:/*Continua mostrando el ahorcado pero ahora con un footer que solicita la cordenada X de la soga*/
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

        mostrarPantallaSegundaParte2:/*Misma funcion que arriba pero con la coordenada Y*/
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

        mostrarDisparoCorrecto:/*muestra un footer que indica "disparo acertado" y el ahorcado sin la horca*/
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

        mostrarDisparoFallido:/*Muestra el ahorcado muerto y el footer que indca que se fallo el disparo*/
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

        mostrarDespedida:/*Muestra la pantalla de despedida*/
                .fnstart
                        push {r2}
                        push {r1}
                        push {lr}

                        mov r2,#1885
                        ldr r1,=pantallaDespedida
                        bl imprimirPantallaGenerico

                        pop {lr}
                        pop {r1}
                        pop {r2}
                        bx lr
                .fnend

        mostrarPantallaPalabraCorrecta:/*Muestra la pantalla mostrando que se gano la partida, con el ahorcado sin la horca, y pregunta al usuario si desea continuar*/
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

        cargarPuntaje:/*Setea el puntaje en memoria como el ASCII del numero 6 para mostrarlo en pantalla y para llevar la cuenta de los puntos */
                .fnstart
                        push {r0}

                        ldr r0, =puntajestring
                        mov r1, #0x36
                        strb r1, [r0]

                        pop {r0}
                        bx lr
                .fnend
.global main
        main:
                bl cargarPalabrasTxt                            @Carga las palabras por adivinar deltxt a memoria
                bl cargarTopTxt                                 @Carga los nombres del ranking.txt en memoria
                @bl limpiarbasuratop                            @Limpia la pantalla del top para la partida que esta por comenzar
                bl cargarTop                                    @Carga los datos para la partida que esta por comenzar

                bl mostrarPantallaInicio
                bl ingresarCaracter                             @Solicita al usuario una letra
                bl verificarQueSeaX                             @Verifico que lo que ingreso el usuario sea la letra x para continuar, sino finaliza el juego.

                bl mostrarPantallaTop                           @Muestra los ultimos 3 jugadores
                bl ingresarCaracter                             @Nuevamente se solicita al usuario que ingrese x para continuar
                bl verificarQueSeaX

                bl mostrarPantallaNombre                        @Muestro el ranking de los jugadores
                bl ingresarNombre                               @Pido al usuario que ponga su nombre
                bl verificarNombreValido                        @Verificar que el usuario no ponga su nombre vacio.
                bl actualizarRankingTxt                         @Si el usuario sale se guarda su nombre
                mainjuego:
                bl cargarPuntaje
                bl myrand
                bl seleccionarPalabra
                bl censurarPalabra
                bl actualizarPalabraCensurada
                bl actualizarPuntaje
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
                bl mostrarDespedida
                mov r7,#1
                swi 0

        ganaste:
                bl mostrarDespedida
                mov r7, #1
                swi 0
