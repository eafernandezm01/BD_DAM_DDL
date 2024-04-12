USE biblioteca;

-- Para la tabla USUARIO:
-- Agregar una columna fecha_registro para registrar la fecha en que se registró el usuario en la biblioteca no nulo por defecto 1 de enero de 2024
ALTER TABLE usuario ADD fecha_registro TIMESTAMP NOT NULL DEFAULT '2024-01-01 00:00:00';

-- Modificar la columna telefono para que acepte valores únicos.
ALTER TABLE usuario ADD CONSTRAINT UN_TELEFONO_USUARIO UNIQUE (telefono);

-- Agregar una columna tipo_usuario ('SOCIO', 'EMPLEADO', 'INFANTIL') admite nulo.
ALTER TABLE usuario ADD tipo_usuario ENUM ('SOCIO', 'EMPLEADO', 'INFANTIL');

-- Modificar la columna direccion para separarla en múltiples campos como calle, población, CP. 
ALTER TABLE usuario ADD (
    calle varchar(150) not null,
    poblacion varchar (140) not null,
    cp char(5) not null
);

-- Borra la columna dirección.
ALTER TABLE usuario DROP direccion;

-- Agregar una columna estado_cuenta ('caducado', 'bloqueado', 'activo') por defecto activo.
ALTER TABLE usuario ADD estado_cuenta ENUM ('caducado', 'bloqueado', 'activo') default 'activo';

-- Modificar la columna codigo para que sea autoincremental.
ALTER TABLE PRESTAMO DROP CONSTRAINT FK_PRESTAMO_USUARIO;
ALTER TABLE usuario MODIFY codigo INT UNSIGNED AUTO_INCREMENT;
ALTER TABLE PRESTAMO ADD CONSTRAINT FK_PRESTAMO_USUARIO FOREIGN KEY (usuario) REFERENCES USUARIO (codigo);

-- Crea una tabla DUP_USUARIO que contenga la misma estructura que USUARIO.
CREATE TABLE DUP_USUARIO LIKE USUARIO;

-- Crea una tabla HCO_USUARIO que contenga la misma estructura y los datos de usuario.
CREATE TABLE HCO_USUARIO AS SELECT * FROM USUARIO;

-- Renombra la tabla USUARIO por LECTOR
RENAME TABLE USUARIO TO LECTOR;

-- Renombra la columna nombre por nombre_completo
ALTER TABLE LECTOR RENAME COLUMN nombre TO nombre_completo;

-- Crea una columna PASSWORD no nula que contenga por defecto '12345'
ALTER TABLE LECTOR ADD pwd VARCHAR (15) NOT NULL default '12345';

-- Crea un índice sobre estado_cuenta.
CREATE INDEX IDX_ESTADO_CUENTA ON LECTOR (estado_cuenta);

-- Borra el índice.
DROP INDEX IDX_ESTADO_CUENTA ON LECTOR;

-- Crea una vista con los datos del usuario excepto la pwd.
CREATE VIEW VLECTOR as select codigo, nombre_completo, telefono, fecha_registro, tipo_usuario, calle, poblacion, cp, estado_cuenta from LECTOR;

-- Consulta todas las columnas de la vista.
SELECT * FROM VLECTOR;

-- Trunca la tabla HCO_USUARIO
TRUNCATE HCO_USUARIO;

-- Muestra todas las tablas de la BD biblioteca.
SHOW TABLES;

-- Muestra la estructura final de LECTOR, HCO_USUARIO, DUP_USUARIO Y VLECTOR
DESC LECTOR;
DESC HCO_USUARIO;
DESC DUP_USUARIO;
DESC VLECTOR;







