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
       77  variable-simple PIC 9.
       01  variable-compuesta.
           02 Num1 PIC 9 value 2.
           02 Num2 PIC 9 VALUE 4.
           02 Num3 PIC 9 VALUE 4.
           02 Num4 PIC 9 VALUE 9.

       01  variable-compuesta2.
           02  txt1 PIC X(9) VALUE "Alejandro".
           02  txt2 PIC X VALUE SPACE.
           02  txt3 PIC X(10) VALUE "Cucchietti".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY variable-compuesta.
           DISPLAY variable-compuesta2.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
