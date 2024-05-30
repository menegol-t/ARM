.data
.text
        @1)Escriba una sola instrucción que encienda el flag Z.
.global main
main:
        subs r0, r0     @sub es una substraccion. La S al final de subS, indica que despues de la operacion, manipule los flags. Lo que sea que haya en R0, se resta a si mismo, resultando en 0, lo cual afecta el flag Z del CPSR, ya que la operacion resulto Zero.
        mov r7, #1
        swi 0