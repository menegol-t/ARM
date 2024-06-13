.data
/* num aleatorio */
    seed:                   .word 1
    const1:                 .word 1103515245
    const2:                 .word 12345
    numero:                 .word 0
    poneleQueRandom:        .word 0000000
                            /* */

    palabrasTxt:            .ascii "palabras.txt"
    diccionarioDePalabras:  .zero 129       @ Reservo espacio para 16 palabras, cada una con 8 caracteres (7 letras + enter)
    errorAlAbrirArchivo:    .ascii "Error al abrir el archivo"

    numeroQueSeriaRandom:   .byte 5         @ Entre 0 y F, utilizado para seleccionar la palabra aleatoria
    palabraAleatoria:       .zero 7         @ Reservo espacio para la palabra aleatoria, 7 caracteres.

    /* Ranking */
    rankingTxt:             .ascii "ranking.txt"
    diccionarioDeNombres:   .zero 30        @ Me guardo 30 bits de espacio para los caracteres del ranking, asumo que el ranking es solo de 3 nombres.
    nuevoNombre:            .asciz "tuco\n" @ Aquí iría el nombre que el usuario puso como input
    nuevoRanking:           .zero 30        @ Aquí voy a escribir el ranking actualizado

.text

actualizarRanking:
        .fnstart
                push {r6}
                ldr r0, =diccionarioDeNombres
                ldr r4, =nuevoRanking
                mov r1, #0                      @ Contador de letras, lo utilizo para el offset
                mov r3, #0                      @ Contador de palabras
                mov r5, #0                      @ Contador de letras en el nuevo ranking
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
                ldr r0, =nuevoNombre            @ R0: Nombre a añadir al final del ranking
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

actualizarRankingTxt:           /* Añade a ranking.txt el nuevoNombre */
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
                ldr r1, =diccionarioDeNombres   @ Pongo lo de dentro del archivo en diccionarioDeNombres en memoria
                mov r2, #30                     @ Estimo como máximo leer 30 caracteres, o menos
                swi 0

                mov r7, #19                     @ Muevo el cursor del archivo
                mov r0, r6
                mov r1, #0
                mov r2, #0                      @ Hacia el final del archivo
                swi 0

                push {lr}
                bl actualizarRanking            @ Actualiza el ranking con el nuevo jugador antes de guardarlo
                pop {lr}

                mov r0, r6
                mov r7, #4                      @ Modo escritura
                ldr r1, =nuevoRanking           @ Sobreescribo el archivo con el nuevo ranking actualizado
                mov r2, #30                     @ Cant de caracteres a escribir
                swi 0

                mov r0, r6
                mov r7, #6                      @ Cerramos el archivo.
                swi 0

                bx lr
        .fnend

leerPalabrasTxt:        /* Solo lee palabras.txt y lo vuelca en memoria como una tira de ascii en diccionarioDePalabras */
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
                ldr r1, =diccionarioDePalabras  @ Se lee el archivo y sus contenidos se escriben en memoria
                mov r2, #129                    @ Cant de caracteres a leer
                swi 0

                mov r0, r6                      @ Cierra el archivo
                mov r7, #6
                swi 0

                bx lr
            .fnend

printR1LengthR2:        /* Función que imprime por pantalla lo que reciba en R1, con el length indicado en R2 */
        .fnstart
                mov r7, #4
                mov r0, #1
                swi 0
                bx lr
        .fnend

seleccionarPalabraAleatoria:    /* Busca en diccionarioDePalabras la palabra que esté en la posición dictada por un número random. Por ejemplo, si el número es 0, devuelve la primera palabra del diccionario, en palabraAleatoria */
        .fnstart
                ldr r0, =numeroQueSeriaRandom
                ldr r1, [r0]                    @ R1: Tengo el número de 0 a F, en este caso, 5.
                ldr r0, =diccionarioDePalabras
                mov r2, #0                      @ R2: Offset para las letras del diccionario
                mov r5, #0                      @ R5: Contados si nos indica que estamos en la palabra en la primera posición (0), segunda (1), etc. Este lo voy a comparar con el número random.
                mov r6, #0                      @ R6: Offset para las letras de la palabra aleatoria
                ldr r4, =palabraAleatoria        @ R4: Posición en memoria donde voy a ir guardando la palabra aleatoria letra por letra, sacada del diccionario de palabras.
        letrasCandidato:
                ldrb r3, [r0, r2]               @ R3: Cargo letra por letra el diccionario de palabras

                cmp r3, #0x0A                   @ Si la letra actual es el ASCII del 'LineFeed' (enter), llegué al final de la palabra actual.
                beq terminePalabra

                strb r3, [r4, r6]               @ Si la letra actual es distinta de enter, copio la letra actual a 'palabra aleatoria'
                add r2, #1                      @ Aumento el offset para la siguiente letra del diccionario
                add r6, #1                      @ Aumento el offset para la siguiente letra de la palabra aleatoria
                bal letrasCandidato

        terminePalabra:
                cmp r5, r1                      @ Comparo el número aleatorio con la 'posición' de mi palabra encontrada del diccionario (si estoy en la primera palabra, la segunda, etc.)
                beq palabraEncontrada           @ Si son iguales, encontré una palabra con la posición que me pidieron.

                add r5, #1                      @ Si mi palabra hasta ahora no se encuentra en la posición indicada por el número random, añado 1 para saber que terminé con esta palabra y continuo con la siguiente.
                mov r6, #0                      @ Reinicio el offset para comenzar a reescribir letra por letra la palabraAleatoria.
                add r2, #1                      @ Aumento el offset del diccionario de palabras para agarrar la siguiente letra
                bal letrasCandidato

        palabraEncontrada:

                bx lr
        .fnend

myrand:                         /* Se basa en la Seed para generar un número pseudo random y lo guarda en 'poneleQueRandom'. Guarda parte del resultado en la seed para seguir usándola sucesivamente como base. */
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
                ldr r1, =poneleQueRandom
                strb r0, [r1]

                pop {lr}
                bx lr
            .fnend

.global main
main:
        bl actualizarRankingTxt		    @ Añade una palabra al final de ranking.txt, y elimina la primera palabra de la lista

        mov r0, #42
        bl myrand                           @ La primera vez que se invoca, toma un número de ro. A partir de ahí, se puede invocar libremente porque usa su propio output como input.

        bl leerPalabrasTxt                  @ Vuelca los contenidos del archivo en memoria
        mov r2, #129
        ldr r1, =diccionarioDePalabras
        bl printR1LengthR2                  @ Printea toda la lista de palabras en pantalla

        bl seleccionarPalabraAleatoria      @ Busca el diccionario de palabras leidas en memoria y lo lee, retornando una sola palabra en una posicion aleatoria en el diccionario
        mov r2, #8
        ldr r1, =palabraAleatoria           
        bl printR1LengthR2                 @ Imprime la palabra aleatoria

        bal fin

errorAbrirArchivo:
        mov r2, #25
        ldr r1, =errorAlAbrirArchivo

        bl printR1LengthR2                  @ Si hubo un error, imprime por pantalla el mensaje de error.
fin:
        mov r7, #1
        swi 0
