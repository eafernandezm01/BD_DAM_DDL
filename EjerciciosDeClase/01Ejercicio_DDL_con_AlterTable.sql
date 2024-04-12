-- Creamos la base de datos Actividad;
create database Actividad;

-- Usamos la base de datos
use Actividad;

/**
CREAMOS LAS TABLAS
*/

-- Crea: Cliente
CREATE TABLE Cliente (
    DNI VARCHAR(9),
    nombre VARCHAR(150) NOT NULL,
    ap1 VARCHAR(100) NOT NULL,
    ap2 VARCHAR(100) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    CP CHAR(5) NOT NULL,
    CONSTRAINT PK_Cliente PRIMARY KEY (DNI)
);

-- Crea: Cod_postal
CREATE TABLE Cod_Postal (
    CP CHAR(5),
    localidad VARCHAR(100) NOT NULL,
    provincia VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Cod_Postal PRIMARY KEY (CP)
);

-- Crea: Factura
CREATE TABLE Factura (
    ID_Factura INT,
    DNI VARCHAR(9) NOT NULL,
    fechaFactura DATE NOT NULL,
    totalFactura FLOAT NOT NULL,
    CONSTRAINT PK_Factura PRIMARY KEY (ID_Factura)
);

-- Crea: Factura_Articulo
CREATE TABLE Factura_Articulo (
    ID_Factura INT,
    Ref VARCHAR(150),
    cantidad TINYINT UNSIGNED NOT NULL,
    CONSTRAINT PK_Factura PRIMARY KEY (ID_Factura , Ref)
);

-- Crea: Artículo
CREATE TABLE Articulo (
    Ref VARCHAR(150),
    nombre VARCHAR(150) NOT NULL,
    precio FLOAT NOT NULL,
    CONSTRAINT PK_Articulo PRIMARY KEY (Ref)
);


/**
MODIFICAMOS LAS TABLAS PARA AÑADIR LAS FKS
*/
alter TABLE cliente add constraint FK_Cliente FOREIGN KEY (CP) REFERENCES Cod_Postal (CP);
alter table factura add CONSTRAINT FK_Factura FOREIGN KEY (DNI)
        REFERENCES Cliente (DNI);
alter table Factura_Articulo add CONSTRAINT FK_Factura_Factura FOREIGN KEY (ID_Factura)
        REFERENCES Factura (ID_Factura);
alter table Factura_Articulo add  CONSTRAINT FK_Factura_Articulo FOREIGN KEY (Ref)
        REFERENCES Articulo (Ref);
        
-- Añadimos la columna tfno a la tabla cliente.
alter table Cliente add column tfno char(12);

-- Mostramos las columnas de la tabla cliente para validar que se ha creado el teléfono.
desc Cliente;






