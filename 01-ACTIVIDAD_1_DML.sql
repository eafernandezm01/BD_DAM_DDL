use ACTIVIDAD_1;

insert into PRODUCTO (codigo, nombre, precio) values (1, "martillo", 20.5);
insert into PRODUCTO (codigo, nombre, precio) values (2,"", 20.5); -- "" ES DISTINTO A NULL


insert into LIBRO (id_libro, contenido) value (3, "data:text/plain;base64,SE9MQSBNVU5ETw==");


/*
CREATE TABLE EMPLEADO (
    dni VARCHAR(9),
    nombre VARCHAR(100) NOT NULL,
    ap1 VARCHAR(100) NOT NULL,
    ap2 VARCHAR(100),
    tfno VARCHAR(12) NOT NULL,
    mail VARCHAR(100),
    fecha_Nac DATE NOT NULL,
    rol ENUM('PJ', 'PS', 'AP', 'AF') NOT NULL,
    ultimo_Acceso DATETIME NOT NULL,
    CONSTRAINT PK_EMPLEADO PRIMARY KEY (dni)
);
*/

insert into EMPLEADO (dni, ap1, nombre, tfno, fecha_nac, rol, ultimo_acceso) 
VALUE ('12345678Z', 'Fdez', 'Eva', '', '1999-11-20', 'AF', '2024-03-11 14:30:00');





















