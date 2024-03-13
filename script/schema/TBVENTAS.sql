spool VENTAS.log;

prompt
prompt Elimina la tabla VENTAS
prompt

DROP TABLE VENTAS cascade constraints;

prompt
prompt Creacion tabla VENTAS
prompt

CREATE TABLE VENTAS (	
 ID_VENTA NUMBER GENERATED ALWAYS AS IDENTITY,
 ID_EMPLEADO NUMBER NOT NULL,
 DESCRIPCION_VENTA VARCHAR2(200 BYTE) NOT NULL,    
 VALOR_VENTA NUMBER NOT NULL,
 PRIMARY KEY (ID_VENTA)
);

COMMENT ON TABLE VENTAS  IS 'Tabla con la informacion de una venta';
COMMENT ON COLUMN VENTAS.ID_VENTA IS 'Identificador unico de la venta';
COMMENT ON COLUMN VENTAS.ID_EMPLEADO IS 'Identificador unico del empleado';
COMMENT ON COLUMN VENTAS.DESCRIPCION_VENTA IS 'Descripcion de la venta';
COMMENT ON COLUMN VENTAS.VALOR_VENTA IS 'Valor de la venta';

--alter table VENTAS add constraint FK_EMPLEADO foreign key (ID_EMPLEADO) references EMPLEADO(ID_EMPLEADO);

COMMIT;
spool off;
exit;
