set serveroutput on;

DECLARE

    nota number := 37;

BEGIN

--If con or/and
    IF ( nota = 39 or nota = 38 ) THEN
        nota := 40;
--En caso de ser muchas excepciones usar between
--( nota between 35 and 39 )
        
    END IF;

    dbms_output.put_line ( 'Nota: ' || nota );
    
    IF ( nota >= 40 ) THEN
        dbms_output.put_line ( 'Aprobado' );
    ELSE
        dbms_output.put_line ( 'Reprobado' );
    END IF;

END;
/