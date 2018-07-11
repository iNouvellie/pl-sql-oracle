set serveroutput on;

/*
--Muestra datos de dual
select * from dual;

--Muestra cantidad de datos en dual
select count (*) from dual;

--Muestra que usuario actuo en cada tabla
select user from dual;
*/

DECLARE
    cantidad number;
    usuario nvarchar2(100);
  
BEGIN
    
    select user into usuario from dual;
    
--Con esto se puede saber que usuario es el usado actualmente
    dbms_output.put_line ('Usuario:' || usuario );

    select count (*) into cantidad from dual;

    dbms_output.put_line ('Cantidad:' || cantidad );
    
--Para simplificar ambos select se puede usar
--select user, count (*) into usuario, cantidad from dual;
  
END;
/