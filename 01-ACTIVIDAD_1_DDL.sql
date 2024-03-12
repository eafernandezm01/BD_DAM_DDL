create database ACTIVIDAD_1;

USE ACTIVIDAD_1;

-- PRODUCTO (codigo, nombre, precio)
CREATE TABLE PRODUCTO (
    codigo INT PRIMARY KEY, -- AL SER PK => IMPLICA es unique y not null 
    nombre VARCHAR(150) not null,
    precio DOUBLE not null
);

-- CLIENTE (ID_CLIENTE, DNI, NOMRE, APE1, APE2) SIENDO DNI AK (UNIQUE) Y APE2 NULL
CREATE TABLE CLIENTE (
    ID_CLIENTE INT,
    DNI VARCHAR(9) NOT NULL,
    NOMBRE VARCHAR(100) NOT NULL,
    AP1 VARCHAR(100) NOT NULL,
    AP2 VARCHAR(100),
    CONSTRAINT PK_CLIENTE PRIMARY KEY (ID_CLIENTE),
    CONSTRAINT UQ_CLIENTE_DNI UNIQUE (DNI)
);

CREATE TABLE LIBRO (
    id_libro INT,
    contenido BLOB NOT NULL,
    CONSTRAINT PK_LIBRO PRIMARY KEY (ID_libro)
);


-- EMPLEADO (DNI, nombre, ap1, ap2, mail, tfno, fechaNac, rol, ultimoAcceso)
CREATE TABLE EMPLEADO (
    dni VARCHAR(9),
    nombre VARCHAR(100) NOT NULL,
    ap1 VARCHAR(100) NOT NULL,
    ap2 VARCHAR(100),
    tfno CHAR(12) NOT NULL,
    mail VARCHAR(100),
    fecha_Nac DATE NOT NULL,
    rol ENUM('PJ', 'PS', 'AP', 'AF') NOT NULL,
    ultimo_Acceso DATETIME NOT NULL,
    CONSTRAINT PK_EMPLEADO PRIMARY KEY (dni)
);


































