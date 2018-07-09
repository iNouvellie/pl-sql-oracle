set serveroutput on;

DECLARE

    numeroAutos number;
    precioAutos number;
    subTotal number;
--Impuesto 19%
    impuesto number; 
    totalFinal number;

BEGIN

    numeroAutos := 3;
    precioAutos := 500;

    subTotal :=  numeroAutos * precioAutos ;
    impuesto :=  subtotal * 0.15 ;
--El impuesto se suma no se resta, ya que es un agregado al precio
    totalFinal :=  subtotal + impuesto ;
    
    dbms_output.put_line ('Subtotal: ' || subTotal );
    dbms_output.put_line ('Impuesto al 19%: ' || impuesto );
    dbms_output.put_line ('Total final: ' || totalFinal );
    
END;
/