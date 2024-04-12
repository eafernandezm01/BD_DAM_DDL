-- Crea la BD
create database biblioteca;

-- Seleccionamos la BD
use biblioteca;

/**
Creamos las tablas en orden:
1.- Las tablas que NO salen flecha (NO necesita que la otra esté creada): AUTOR, LIBRO, USUARIO
2.- El resto de tablas por orden de necesidad: ESCRIBE, EJEMPLAR, PRESTAMO

Establece las relaciones correspondientes. Se debe garantizar la integridad referencial y en el 
caso de actualizaciones y borrados se debe impedir que se actualicen o borren los registros de las 
tablas secundarias. ---> OJO, por defecto ya impide (RESTRICT)
**/

-- Autor (Código, Nombre)
CREATE TABLE AUTOR (
    codigo INT UNSIGNED,
    nombre VARCHAR(150) NOT NULL,
    CONSTRAINT PK_AUTOR PRIMARY KEY (codigo)
);

-- Libro (Código, Titulo, ISBN, Editorial, NumPag) 
-- ISBN, tiene longitud 13.
CREATE TABLE LIBRO (
    codigo int UNSIGNED,
    titulo varchar(150) NOT NULL,
    isbn char(13) NOT NULL,
    editorial varchar(150) NOT NULL,
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


/* 2.- El resto de tablas por orden de necesidad. */

-- Escribe (Autor(e), Libro(e))
CREATE TABLE ESCRIBE (
    autor int UNSIGNED,
    libro int UNSIGNED,
    CONSTRAINT PK_ESCRIBE PRIMARY KEY (autor, libro),
    CONSTRAINT FK_ESCRIBE_AUTOR FOREIGN KEY (autor) REFERENCES AUTOR (codigo),
    CONSTRAINT FK_ESCRIBE_LIBRO FOREIGN KEY (libro) REFERENCES LIBRO (codigo)
);


-- Ejemplar (Libro(e), Código_Ejemplar, Localización)
CREATE TABLE EJEMPLAR (
    libro int UNSIGNED,
    codigo_ejemplar int UNSIGNED,   
    localizacion varchar(150) not null,
    CONSTRAINT PK_EJEMPLAR PRIMARY KEY (libro, codigo_ejemplar),
    CONSTRAINT FK_EJEMPLAR_LIBRO FOREIGN KEY (libro) REFERENCES LIBRO (codigo)
);


-- Préstamo ( Libro(e), Ejemplar(e), Usuario(e), FechaPres, FechaDev)
-- FechaDev admite nulos
CREATE TABLE PRESTAMO (
    libro int UNSIGNED,
    ejemplar int UNSIGNED,
    usuario int UNSIGNED,
    fecha_pres DATE NOT NULL,
    fecha_dev DATE,
    CONSTRAINT PK_PRESTAMO PRIMARY KEY (libro, ejemplar, usuario, fecha_pres),
    CONSTRAINT FK_PRESTAMO_EJEMPLAR FOREIGN KEY (libro, ejemplar) REFERENCES EJEMPLAR (libro, codigo_ejemplar),
    CONSTRAINT FK_PRESTAMO_USUARIO FOREIGN KEY (usuario) REFERENCES USUARIO (codigo)
);

SHOW TABLES;
