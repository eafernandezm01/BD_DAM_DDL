create database if not exists ACTIVIDAD_1;

USE ACTIVIDAD_1;

drop TABLE PRODUCTO;

-- PRODUCTO (codigo, nombre, precio)
CREATE TABLE PRODUCTO (
    codigo INT PRIMARY KEY, -- AL SER PK => IMPLICA es unique y not null 
    nombre VARCHAR(150) not null,
    precio DOUBLE not null
);

-- CLIENTE (ID_CLIENTE, DNI, NOMRE, APE1, APE2) SIENDO DNI AK (UNIQUE) Y APE2 NULL
-- create table CLIENTE (
	
-- );
