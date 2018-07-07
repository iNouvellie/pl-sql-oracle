set serveroutput on;

DECLARE
    
    nombre nvarchar2 (100) := 'Roberto ';
    apellido nvarchar2 (100) := 'Rocuant';
    hoy date := sysdate;
    nombreCompleto nvarchar2 (200);
    nombre2 nvarchar2(100);

BEGIN
--Funcion para el largo de 1 cadena de caracteres (toma en cuenta el espacio)
    dbms_output.put_line ('Largo: ' || length(nombre) );
    
--Funcion para imprimir la cadena sin espacios
    dbms_output.put_line ('Trim: ' || trim(nombre) );

--Transforma la cadena a minuscula
    dbms_output.put_line ('Minuscula: ' || lower(nombre) );
    
--Transforma la cadena a mayuscula
    dbms_output.put_line ('Mayuscula: ' || upper(nombre) );
    
    nombre := trim( nombre );
--Toma del nombre desde la posicion 1 de roberto (r) , 3 letras (rob)
    dbms_output.put_line ('Cortar: ' || substr (nombre,1,3)  );
    
--Reemplaza un texto por otro, sensible a maysc/minusc    
    dbms_output.put_line ('Reemplazo: ' || replace (nombre, 'erto', 'ert')  );

--Dejando espacio lo deja vacio
    dbms_output.put_line ('Reemplazo: ' || replace (nombre, 'o', '')  );
    
-------- o --------

--Funcion de fecha
    dbms_output.put_line ('Hoy: ' || hoy );
    
--Con add months sumamos meses a la fecha q indiquemos, este caso fecha actual
    dbms_output.put_line ('Agregar mes: ' || add_months (hoy, 1 ) );
    
--Suma 1 dia a la fecha de hoy o fecha actual usada (hoy)
    dbms_output.put_line ('Agregar mes: ' || (hoy + 1) );

--Obtener solo el dia
    dbms_output.put_line ('Día: ' || to_char (hoy, 'dd') );

--Obtener dia y mes
    dbms_output.put_line ('Día Mes: ' || to_char (hoy, 'dd-MM') );
    
--Obtener anio con 4 digitos
    dbms_output.put_line ('Anio: ' || to_char (hoy, 'yyyy') );
    
--NVL para manejar nulos, con case when o sentencias
--Deberia mostrarlo nulo
    dbms_output.put_line ('NVL: ' || nombre2 );

--Deberia mostrar que nombre2 es nulo
    dbms_output.put_line ('NVL: ' || NVL( nombre2, 'Es nulo') );

--Concatenar strings
    nombreCompleto := nombre || ' ' || apellido;
    dbms_output.put_line ('Nombre completo: ' || nombreCompleto );
END;
/