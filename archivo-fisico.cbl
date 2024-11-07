       SELECT OPTIONAL Empleados-archivo
       ASSIGN TO "empleados.dat"
       ORGANIZATION INDEXED
       RECORD KEY IS empleados-id
       ACCESS MODE IS DYNAMIC.
