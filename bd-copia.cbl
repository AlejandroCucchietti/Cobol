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
       COPY "archivo-fisico.cbl".


       DATA DIVISION.
       FILE SECTION.
       COPY "archivo-logico.cbl".



       WORKING-STORAGE SECTION.

       01  Identificador PIC X(36)
           VALUE "Introduce un ID del Nuevo Empleado: ".
       01  Nombre PIC X(33)
           VALUE "Introduce un nombre de empleado: ".
       01  Apellidos PIC X(25)
           VALUE "Introduce los apellidos: ".
       01  Edad PIC X(19)
           VALUE "Introduce la edad: ".
       01  Telefono PIC X(33)
           VALUE "Introduce un numero de telefono: ".
       01  Direccion PIC X(25)
           VALUE "Introduce una direccion: ".

       01  Si-no PIC X.
       01  Entry-Ok PIC X.

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.

       PERFORM Procedimiento-de-apertura.
       MOVE "S" TO Si-no.
       PERFORM Agregar-registros
       UNTIL Si-no = "N".
       PERFORM Procedimiento-de-Cierre.

       Program-Done.
       STOP RUN.

       Procedimiento-de-apertura.
           OPEN I-O Empleados-archivo.

       Procedimiento-de-Cierre.
           CLOSE Empleados-archivo.

       Agregar-registros.
       MOVE "N" TO Entry-Ok.
       PERFORM Obtener-Campos
       UNTIL Entry-Ok = "S".
       PERFORM Escribir-Registro.
       PERFORM Reiniciar.

       Obtener-Campos.
       MOVE SPACE TO empleados-registro.
       DISPLAY Identificador "?".
       ACCEPT empleados-id.
       DISPLAY Nombre "?".
       ACCEPT empleados-nombre.
       DISPLAY Apellidos "?".
       ACCEPT empleados-apellidos.
       DISPLAY Edad "?".
       ACCEPT empleados-edad.
       DISPLAY Telefono "?".
       ACCEPT empleados-telefono.
       DISPLAY Direccion "?".
       ACCEPT empleados-direccion.
       PERFORM Validar-Campos.

       Validar-Campos.
       MOVE "S" TO Entry-Ok.
       IF empleados-nombre = SPACE
       DISPLAY "Error: debes especificar un nombre."
       MOVE "N" TO Entry-Ok.

       Escribir-Registro.
       WRITE empleados-registro.

       Reiniciar.
       DISPLAY "Desea almacenar otro registro en la base de datos?".
       ACCEPT Si-no.
       IF Si-no = "s"
       MOVE "S" TO Si-no.
       IF Si-no NOT = "S"
       MOVE "N" TO Si-no.

       END PROGRAM YOUR-PROGRAM-NAME.
