create database tallerDB;

use tallerDB;

-- Cliente (DNI, nombre, ape1, ape2, tfno)
CREATE TABLE CLIENTE (
    DNI CHAR(9),
    nombre VARCHAR(50) NOT NULL,
    ape1 VARCHAR(50) NOT NULL,
    ape2 VARCHAR(50),
    tfno CHAR(12) NOT NULL,
    CONSTRAINT PK_PERSONA PRIMARY KEY (DNI)
);

-- Mecánico (Código, Dni, nombre, ape1, ape2, tfno, salario)
CREATE TABLE MECANICO (
    codigo INT UNSIGNED AUTO_INCREMENT,
    DNI char(9),
    nombre varchar (50) NOT NULL,
    ape1 varchar (50) NOT NULL,
    ape2 varchar (50),
    tfno char (12) NOT NULL,
    salario double not null,
    CONSTRAINT PK_MECANICO PRIMARY KEY (codigo),
    CONSTRAINT UN_DNI UNIQUE (DNI),
    CONSTRAINT CHK_SALARIO CHECK (salario > 0)
);

-- Concepto (Código, Descripción, Precio)
CREATE TABLE CONCEPTO (
    codigo INT UNSIGNED AUTO_INCREMENT,
    descripcion varchar (50) NOT NULL,
    precio decimal (8,2) not null,
    CONSTRAINT PK_CONCEPTO PRIMARY KEY (codigo)
);

-- Vehículo (Matrícula, DNI, NBastidor, marca, modelo, fecha_compra)
CREATE TABLE VEHICULO (
    matricula char(8),
    DNI char(9) not null,
    nbastidor varchar(19) not null,
    marca varchar (50) NOT NULL,
    modelo varchar (50) NOT NULL,
    fecha_compra date,
    CONSTRAINT PK_VEHICULO PRIMARY KEY (matricula),
    CONSTRAINT FK_VEHICULO_CLIENTE FOREIGN KEY (DNI) REFERENCES CLIENTE (DNI),
    CONSTRAINT UN_NBASTIDOR UNIQUE (nbastidor)
);

-- Reparacion (Código, Fecha, Mecánico, vehículo(e))
CREATE TABLE REPARACION (
    codigo INT UNSIGNED AUTO_INCREMENT,
    mecanico INT UNSIGNED not null,
    vehiculo char(8) not null,
    fecha TIMESTAMP default current_timestamp,
    CONSTRAINT PK_REPARACION PRIMARY KEY (codigo),
    CONSTRAINT FK_REPARACION_MECANICO FOREIGN KEY (mecanico) REFERENCES MECANICO (codigo),
    CONSTRAINT FK_REPARACION_VEHICULO FOREIGN KEY (vehiculo) REFERENCES VEHICULO (matricula)
);


-- DetalleReparación(Reparación, Concepto, cantidad)
CREATE TABLE DETALLE_REPARACION (
    reparacion INT UNSIGNED,
    concepto INT UNSIGNED,
    cantidad TINYINT UNSIGNED NOT NULL,
    CONSTRAINT PK_DETALLE_REPARACION PRIMARY KEY (reparacion, concepto),
    CONSTRAINT FK_DETALLE_REPARACION_REPARACION FOREIGN KEY (reparacion) REFERENCES REPARACION (codigo),
    CONSTRAINT FK_DETALLE_REPARACION_CONCEPTO FOREIGN KEY (concepto) REFERENCES CONCEPTO (codigo)
);