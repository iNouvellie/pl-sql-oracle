set serveroutput on;

DECLARE

--Constantes
    PI CONSTANT number := 3.141559;

--Variables
    area number;
    radio number;

BEGIN

    radio := 7;

    area := PI * ( radio * radio );
    
    dbms_output.put_line ('Area: ' || area );
    --Concatenacion de texto + variable + texto
    dbms_output.put_line ('Area: ' || area || 'cm2' );
    --Concatenacion con redondeo
    dbms_output.put_line ('Area: ' || round(area,2) || 'cm2' );
    --Redondeo sin decimales
    dbms_output.put_line ('Area: ' || round(area) || 'cm2' );

END;
/