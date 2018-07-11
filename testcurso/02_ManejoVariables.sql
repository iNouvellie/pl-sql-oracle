set serveroutput on;

DECLARE
--Definicion de funciones y variables.

    renta number := 1500;
    nombreTrabajador nvarchar2(100);
    on boolean;
    fecha date;

BEGIN

    nombreTrabajador := 'Roberto Rocuant';
    on := true;
    fecha := sysdate;
    
    dbms_output.put_line ('Nombre: ' || nombreTrabajador );
    dbms_output.put_line ('Renta: ' || renta );
    dbms_output.put_line ('Fecha: ' || fecha );
    dbms_output.put_line ('On: ' || case when on then 'Si' else 'No' end );

END;
/