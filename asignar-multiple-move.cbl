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
       01  Num1 PIC 99 VALUE ZERO.
       01  Num2 pic 99.
       01  Num3 PIC 99.
       01  Num4 PIC 99.
       01  Num5 PIC 99.
       01  Num6 PIC 99.
       01  letter PIC XX VALUE SPACE.
       PROCEDURE DIVISION.
       Rutina1.
           MOVE 10 TO Num1 Num2 Num3 Num4 Num5 Num6.
           DISPLAY Num1.
           DISPLAY Num2.
           DISPLAY Num3.
           DISPLAY Num4.
           DISPLAY Num5.
           DISPLAY Num6.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
