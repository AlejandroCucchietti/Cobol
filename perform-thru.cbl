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
       01  Nombre PIC X(15).
       01  Apellidos PIC X(20).
       01  Edad PIC 99.

       PROCEDURE DIVISION.

           Solicita-datos.
           PERFORM Solicita-nombres THRU solicita-apellidos.
           PERFORM Solicita-edad.
           DISPLAY "Nombre: " Nombre "Apellidos: " Apellidos
           "Edad: " Edad.

            STOP RUN.

           Solicita-nombres.
               DISPLAY "Introduce tu nombre:"
               ACCEPT Nombre.

           Solicita-apellidos.
               DISPLAY "Introduce tu apellido:"
               ACCEPT Apellidos.

           Solicita-edad.
               DISPLAY "Introduce tu edad:"
               ACCEPT Edad.


       END PROGRAM YOUR-PROGRAM-NAME.
