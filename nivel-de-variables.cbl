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
       01  Edad PIC 999.
           88 Joven VALUE 1 THRU 40.
           88 Maduro VALUE 41 THRU 65.
           88 Anciano VALUE 66 THRU 100.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Introduce tu Edad: "
           ACCEPT Edad.
           IF Joven
               DISPLAY "Eres Joven.".
           IF Maduro
               DISPLAY "Eres Maduro.".
           IF Anciano
               DISPLAY "Eres Anciano.".
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
