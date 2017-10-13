CLS
DO UNTIL salir$ = "S" OR salir$ = "s"

    RANDOMIZE TIMER
    LOCATE 1, 1: PRINT "--------------------------------------------------"
    LOCATE 2, 1: PRINT "============ JUEGO DE MULTIPLICACION ============="
    LOCATE 15, 1: PRINT "==================================================="
    valor1 = INT(RND * 10) + 1
    valor2 = INT(RND * 10) + 1
    resultado = valor1 * valor2

    LOCATE 6, 5: PRINT valor1; "*"; valor2; "=   ?  "
    LOCATE 8, 5: INPUT "CUANTO ES?       ", respuesta

    IF respuesta = resultado THEN
        LOCATE 10, 5: PRINT "C O R R E C T O  !                   "
        puntuacion = puntuacion + 1
    ELSE
        LOCATE 6, 5: PRINT valor1; "*"; valor2; "="; resultado
        LOCATE 10, 5: PRINT "E Q U I V O C A D O  !               "
        puntuacion = puntuacion - 1
    END IF
    LOCATE 4, 32: PRINT "PUNTUACION : "; puntuacion

    LOCATE 16, 1: INPUT " Salir: S / Continuar: ENTER"; salir$
    LOCATE 16, 1: PRINT "                                               "
    LOCATE 8, 5: PRINT "                                                   "
LOOP
CLS



