/*
BASE DE DATOS INICIAL
*/

-- Borra una base de datos si existe.
drop database IF exists tipoDatosDB;

-- 1 Crear la base de datos
-- create database IF NOT EXISTS tipoDatosDB;
create database tipoDatosDB;



-- 2 Usar esa bd
use tipoDatosDB;

-- 3 Crear tabla usando enteros
CREATE TABLE ENTERO (
    ID INT,
    edad TINYINT,
    puntos SMALLINT,
    sueldo MEDIUMINT,
    superEntero BIGINT
);

-- Creamos una tabla para poner decimales
CREATE TABLE DECIMALES (
    ID INT,
    sueldo DECIMAL(8 , 2 ),
    sueldo2 NUMERIC(8 , 2 ),
    sueldo3 FLOAT,
    sueldo4 DOUBLE
);


CREATE TABLE CADENAS (
    ID INT,
    HIJOS CHAR(1),
    NOMBRE VARCHAR(150),
    LIBRO TEXT,
    TIT_LIBRO TINYTEXT,
    LIBRO_EXT MEDIUMTEXT,
    SUPER_LIBRO LONGTEXT
);



