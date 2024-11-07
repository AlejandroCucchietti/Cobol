      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       FILE-CONTROL.
       SELECT OPTIONAL Empleados-archivo
       ASSIGN TO "empleados.dat"
       ORGANIZATION IS LINE SEQUENTIAL.


       DATA DIVISION.
       FILE SECTION.

       FD  Empleados-archivo.

           01  empleados-registro.
               05  empleados-id PIC X(6).
               05  empleados-nombre PIC X(25).
               05 empleados-apellidos PIC X(35).
               05 empleados-edad PIC X(3).
               05 empleados-telefono PIC X(9).
               05 empleados-direccion PIC X(35).


       WORKING-STORAGE SECTION.

       01  Presentacion.
           05 Texto-id PIC X(3) VALUE "ID:".
           05 Muestras-id PIC X(6).
           05 Texto-nombre PIC X(7) VALUE "Nombre:".
           05 Muestra-nombre PIC X(15).
           05 Texto-apellidos PIC X(10) VALUE "Apellidos:".
           05 Muestra-apellidos PIC X(20).
           05 Texto-edad PIC X(5) VALUE "Edad:".
           05 Muestra-edad PIC X(3).
           05 Texto-telefono PIC X(9) VALUE "Telefono:".
           05 Muestra-telefono PIC X(10).
           05 Texto-direccion PIC X(10) VALUE "Direccion:".
           05 Muestra-direccion PIC X(35).

           01 Fin-del-Archivo PIC X.
           01 Maximo-Registros PIC 99.
           01 Guardar-Enter PIC X.

       PROCEDURE DIVISION.
       Empieza-Programa.
           PERFORM Apertura-archivo.
           MOVE ZEROES TO Maximo-Registros.
           MOVE "1" TO Fin-del-Archivo.
           PERFORM Lee-siguiente-registro.
           PERFORM Muestra-registros
           UNTIL Fin-del-Archivo = "0".
           PERFORM Cierre-archivo.
           Program-Done.
            STOP RUN.

           Apertura-archivo.
               OPEN INPUT Empleados-archivo.

           Cierre-archivo.
               CLOSE Empleados-archivo.

           Muestra-registros.
               PERFORM Muestra-campos.
               PERFORM Lee-siguiente-registro.

           Muestra-campos.
           IF Maximo-Registros = 2
           PERFORM Pulsar-enter.
           MOVE empleados-id TO Muestras-id.
           MOVE empleados-nombre TO Muestra-nombre.
           MOVE empleados-apellidos TO Muestra-apellidos.
           MOVE empleados-edad TO Muestra-edad.
           MOVE empleados-telefono TO Muestra-telefono.
           MOVE empleados-direccion TO Muestra-direccion.
           DISPLAY Presentacion.

           Lee-siguiente-registro.
           READ Empleados-archivo NEXT RECORD
           AT END
           MOVE "0" TO Fin-del-Archivo.

           Pulsar-enter.
           DISPLAY
           "Presione la tecla ENTER para ver la siguiente pagina...".
           ACCEPT Guardar-Enter.
           MOVE ZEROES TO Maximo-Registros.
