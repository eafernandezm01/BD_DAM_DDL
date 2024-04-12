-- Crea la BD
CREATE DATABASE biblioteca;

-- Seleccionamos la BD
USE biblioteca;

-- Autor (Código, Nombre)
CREATE TABLE AUTOR (
    codigo INT UNSIGNED,
    nombre VARCHAR(150) NOT NULL,
    CONSTRAINT PK_AUTOR PRIMARY KEY (codigo)
);

-- Escribe (Autor(e), Libro(e))
CREATE TABLE ESCRIBE (
    autor INT UNSIGNED,
    libro INT UNSIGNED,
    CONSTRAINT PK_ESCRIBE PRIMARY KEY (autor , libro)
);


-- Libro (Código, Titulo, ISBN, Editorial, NumPag) 
-- ISBN, tiene longitud 13.
CREATE TABLE LIBRO (
    codigo INT UNSIGNED,
    titulo VARCHAR(150) NOT NULL,
    isbn CHAR(13) NOT NULL,
    editorial VARCHAR(150) NOT NULL,
    num_pag SMALLINT UNSIGNED NOT NULL,
    CONSTRAINT PK_LIBRO PRIMARY KEY (codigo)
);

-- Usuario (Código, Nombre, Dirección, Teléfono)
CREATE TABLE USUARIO (
    codigo int UNSIGNED,
    nombre varchar(150) NOT NULL,
    direccion varchar(255) NOT NULL,
    telefono char(12) NOT NULL,
    CONSTRAINT PK_USUARIO PRIMARY KEY (codigo)
);

-- Ejemplar (Libro(e), Código_Ejemplar, Localización)
CREATE TABLE EJEMPLAR (
    libro int UNSIGNED,
    codigo_ejemplar int UNSIGNED,
    localizacion varchar(150) NOT NULL,
    CONSTRAINT PK_EJEMPLAR PRIMARY KEY (libro, codigo_ejemplar)
);

-- Préstamo ( Libro(e), Ejemplar(e), Usuario(e), FechaPres, FechaDev)
-- FechaDev admite nulos
CREATE TABLE PRESTAMO (
    libro int UNSIGNED,
    ejemplar int UNSIGNED,
    usuario int UNSIGNED,
    fecha_pres DATE NOT NULL,
    fecha_dev DATE,
    CONSTRAINT PK_PRESTAMO PRIMARY KEY (libro, ejemplar, usuario, fecha_pres)
);

ALTER TABLE ESCRIBE ADD CONSTRAINT FK_ESCRIBE_AUTOR FOREIGN KEY (autor) REFERENCES AUTOR (codigo);
ALTER TABLE ESCRIBE ADD CONSTRAINT FK_ESCRIBE_LIBRO FOREIGN KEY (libro) REFERENCES LIBRO (codigo);

ALTER TABLE EJEMPLAR ADD CONSTRAINT FK_EJEMPLAR_LIBRO FOREIGN KEY (libro) REFERENCES LIBRO (codigo);

ALTER TABLE PRESTAMO ADD CONSTRAINT FK_PRESTAMO_EJEMPLAR FOREIGN KEY (libro, ejemplar) REFERENCES EJEMPLAR (libro, codigo_ejemplar);
ALTER TABLE PRESTAMO ADD CONSTRAINT FK_PRESTAMO_USUARIO FOREIGN KEY (usuario) REFERENCES USUARIO (codigo);

SHOW TABLES;