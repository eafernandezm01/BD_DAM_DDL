/*
 BASE DE DATOS INICIAL
 */
-- 1 Crear la base de datos
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
    sueldo DECIMAL(8, 2),
    sueldo2 NUMERIC(8, 2),
    sueldo3 FLOAT,
    sueldo4 DOUBLE
);

-- Creamos una tabla para las cadenas
CREATE TABLE CADENAS (
    ID INT,
    HIJOS CHAR(1),
    NOMBRE VARCHAR(150),
    LIBRO TEXT,
    TIT_LIBRO TINYTEXT,
    LIBRO_EXT MEDIUMTEXT,
    SUPER_LIBRO LONGTEXT
);

-- Creamos una tabla para almacenar imágenes, documentos...
CREATE TABLE FICHEROS (
    id INT,
    datos_binary BINARY(50),
    datos_varbinary VARBINARY(100),
    datos_tinyblob TINYBLOB,
    datos_blob BLOB,
    datos_mediumblob MEDIUMBLOB,
    datos_longblob LONGBLOB
);

-- Creamos una tabla para almacenar imágenes, documentos...
CREATE TABLE PREDEFINIDOS (
    id INT,
    -- Sólo un valor de los predefinidos puede ser el estado
    estado ENUM('activo', 'inactivo', 'pendiente'),
    -- Varios valores en el mismo campo.
    roles
    SET
        ('admin', 'editor', 'usuario')
);


CREATE TABLE FECHAS_HORAS (
    id INT,
    -- Sólo fecha YYYY-MM-DD
    fecha DATE,
    -- Sólo horas HH:MI:SS
    hora TIME,
    -- Fecha y hora YYYY-MM-DD HH:MI:SS
    fecha_hora DATETIME,
    marca_tiempo TIMESTAMP -- Para fechas más actuales, es más usado que DATETIME
);

-- Muestra las BD que tenemos en el servidor
show databases;

-- Muestra las tablas de la base de datos con la que trabajamos
show tables;

-- Mostramos las estructuras de las tablas
desc cadenas;

desc decimales;

desc entero;

desc FECHAS_HORAS;

desc ficheros;

desc predefinidos;