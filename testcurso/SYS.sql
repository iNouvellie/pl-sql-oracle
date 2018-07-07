set serveroutput on;

DECLARE
--Calcular area de un circulo
--Constantes
    PI CONSTANT number := 3.141559;
    
    
--Variables
    area number;
    radio number;
    
BEGIN

    radio := 7;
    
    area := PI * ( radio * radio);
    
--dbms_output.put_line ('Area: ' || area || 'cm2' ); 
--Redondeo a 2 decimales
    dbms_output.put_line ('Area: ' || round(area,2) || 'cm2' );
    
END;
/