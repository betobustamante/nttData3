/*
# *********************************************************************************************************
# *     Filename             : ventas.sql
# *     Author               : EAFB
# *     Date                 : marzo 2024
# *     Ultima Modificacion  : 
# *     Modificado por       : 
# *     Version              : 0.1
# *     Notes                : obtener todas las ventas realizadas por un empleado.
# *     Proyecto             : XXXXXX
# ********************************************************************************************************
*/
create or replace function obtener_ventas_empleado (id_empleado in number) 
return sys_refcursor
 is
  v_ventas sys_refcursor;
 begin 
    dbms_output.put_line('BEGIN - Procedimiento');
   OPEN v_ventas FOR 
   SELECT ID_VENTA, VALOR_VENTA 
   FROM VENTAS 
   WHERE ID_EMPLEADO = id_empleado;
   return v_ventas;
 end obtener_ventas_empleado;
 /

--Ejecución 
SET SERVEROUTPUT ON
select obtener_ventas_empleado(5) from dual;

SET SERVEROUTPUT ON
var v_ventas refcursor 
exec :v_ventas:= obtener_ventas_empleado(2);
print v_ventas;
 
SELECT * FROM VENTAS;