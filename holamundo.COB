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
       01 si-o-no PIC X.
       PROCEDURE DIVISION.
           PREGUNTA.
           PERFORM Continuacion.

           IF si-o-no = 'N' OR si-o-no = "n"
               GO TO FINALIZA-PROGRAMA.
           IF si-o-no = "S" OR si-o-no = "s"
               PERFORM PROGRAMA
           ELSE
               DISPLAY "Por favor,intruduce una N o S"
               GO TO PREGUNTA.

           FINALIZA-PROGRAMA.
            STOP RUN.

           CONTINUACION.
               DISPLAY "Ejecutar el programa (S/N)?"
               ACCEPT si-o-no.

           PROGRAMA.
               DISPLAY "Se ejecuta el programa".


       END PROGRAM YOUR-PROGRAM-NAME.
