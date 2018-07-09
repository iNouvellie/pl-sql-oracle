set serveroutput on;


DECLARE

    nota number := 55;

BEGIN

    IF ( nota >= 60 ) THEN
        dbms_output.put_line ( 'Excelente' );
    
--Para usar else-if se borra una E, ElsIf
    ELSIF ( nota >= 50 ) THEN
        dbms_output.put_line ( 'Bien' );

    ELSIF ( nota >= 40 ) THEN
        dbms_output.put_line ( 'Insuficiente' );

    ELSE
        dbms_output.put_line ( 'Negativo' );
--No olvidar cerrar el if y usar mayus
    END IF;

END;
/