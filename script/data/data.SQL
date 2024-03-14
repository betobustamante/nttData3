spool INSERTVENTAS.log;

set define off;

delete from VENTAS; 

Insert into VENTAS (ID_VENTA, ID_EMPLEADO, DESCRIPCION_VENTA, VALOR_VENTA) 
values (1, 'Compra tenis adidas', 25);
Insert into VENTAS (ID_VENTA, ID_EMPLEADO, DESCRIPCION_VENTA, VALOR_VENTA) 
values (1, 'Compra tenis nike', 30);
Insert into VENTAS (ID_VENTA, ID_EMPLEADO, DESCRIPCION_VENTA, VALOR_VENTA) 
values (2, 'Compra tenis puma', 40);
Insert into VENTAS (ID_VENTA, ID_EMPLEADO, DESCRIPCION_VENTA, VALOR_VENTA) 
values (2, 'Compra tenis unit', 50);

commit;
spool off;
exit;