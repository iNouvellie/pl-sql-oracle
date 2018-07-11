set serveroutput on;

DECLARE
--Definicion de los arreglos.
    type alumnosArray is varray(5) of nvarchar2(100);
    type notasArray is varray(5) of number;

--Ahora se puede crear items de ese tipo contenido en el arreglo.
    alumnos alumnosArray;
    notas notasArray;

BEGIN
    
    alumnos := alumnosArray ('Roberto', 'Juan', 'Pedro');
    notas := notasArray (29, 25, 55, 123, 44);
    
--En este caso las posiciones parten de 1 y no de 0, es decir roberto es 1 no 0.

--Imprime los nombres en posicion 1, 2 y 3
    dbms_output.put_line ( alumnos(1) );
    dbms_output.put_line ( alumnos(2) );
    dbms_output.put_line ( alumnos(3) );
    
--Imprime las notas 1, 2 y 3
    dbms_output.put_line ( notas(1) );
    dbms_output.put_line ( notas(2) );
    dbms_output.put_line ( notas(3) );

--Cambia el valor de la nota en la posicion 1.
    notas(1) := 30;
    
    dbms_output.put_line ( notas(1) );

END;
/