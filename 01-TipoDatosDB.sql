/*
BASE DE DATOS INICIAL
*/

-- 1 Crear la base de datos
create database IF NOT EXISTS tipoDatosDB;

-- 2 Usar esa bd
use tipoDatosDB;

-- 3 Crear tabla usando enteros
create table ENTERO (
	-- nombre columna y tipo
    ID INT, -- -2147483648 a 2147483647  0 – 4294967295.
    edad tinyint, -- -128 a 127   0 a 255
    puntos smallint, -- -32768 a 32767      0 a 65535
	sueldo mediumint, -- -8388608 a 8388607      0 a 16777215
    superEntero bigint  -- -9223372036854775808 a 9223372036854775807     0 a 18446744073709551615.
);

insert into ENTERO (ID, edad, puntos, sueldo, superEntero) VALUES (1, 42, 1000,60000,6347326487236473284);



