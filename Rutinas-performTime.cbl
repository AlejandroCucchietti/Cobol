      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Numero PIC 99.
       01  Multiplicador PIC 999.
       01  Resultado PIC 9999.
       01  Salida PIC XXXXX.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           Inicio.
           DISPLAY "Para salir introduce salir en la consola.".
           DISPLAY "Para Multiplicar pulsa INTRO.".
           ACCEPT Salida.
           IF Salida = "salir"
               GO TO Finalizar
           ELSE
           PERFORM Reinicia-Programa.
           PERFORM Introduce-Numero.
           PERFORM Mostrar-Tabla.

           Finalizar.
           STOP RUN.

           Reinicia-Programa.
               MOVE 0 TO Multiplicador.

           Introduce-numero.
           DISPLAY "Introduce un numero.".
               ACCEPT Numero.

           Mostrar-Tabla.
               DISPLAY "La tabla del " Numero ":".
               PERFORM Calculos UNTIL Multiplicador = 10.
               PERFORM Inicio.

           Calculos.
               ADD 1 TO Multiplicador.
               COMPUTE Resultado = Numero * Multiplicador.
               DISPLAY Numero "*" Multiplicador "=" Resultado.


       END PROGRAM YOUR-PROGRAM-NAME.
