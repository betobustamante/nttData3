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
create or replace PROCEDURE obtener_ventas_empleado (id_empleado number, v_ventas out SYS_REFCURSOR ) 
 is
 begin 
    dbms_output.put_line('BEGIN - Procedimiento');
   OPEN v_ventas FOR SELECT ID_VENTA, VALOR_VENTA FROM VENTAS WHERE ID_EMPLEADO = id_empleado; 
 end obtener_ventas_empleado;
 /