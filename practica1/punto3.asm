.data
.text
.global main

@3) Escribir un codigo que usando R0 y R1:
@A) Sume dos valores positivos tal que se produzca overflow
/* Sabemos que con 32 bits se pueden representar 2^32-1 numeros positivos, o sea hasta el 4.294.967.295
Tambien sabemos que nuestra arquitectura es de 32 bits. Si queremos hacer un overflow, sumamos la mitad de
numero ese numero mas si mismo por ejemplo. */
@B) Sume dos valores negativos tal que se produza overflow
/* Similarmente, sabemos que el minimo nuermo negativo que podemos represetnar con 32 bits en C2 es el
-2.147.483.648, asi que lo unico que debemos hacer es sumarle -1 a ese numero. */
@C) Agregar un salto condicional para detectar el overflow y almacenar en el registro r2 si hubo o no overflow.
@R2=1 hubo overflow, R2=0 no hubo overflow

main:
        mov r2, #0
        @3)A)
        mov r0, #2147483648
        mov r1, #2147483648     @Si sumo #1 no hace overflow?
        adds r0, r0, r1         @Para afectar el flag del overflow, hago addS
        bvs overflow

        @3)B) Este si logra overflow
        mov r0, #-2147483648
        mov r1, #-1
        adds r0, r0, r1
        bvs overflow

        bal fin

overflow:
        mov r2, #1

fin:
        mov r7, #1
        swi 0