/* Creamos la base de datos para la tienda de informática. */

-- 1 Crea la BD
create database tiendaInformatica;

-- 2 Usa la BD
use tiendaInformatica;

-- 3 Creamos la tabla fabricante pq no tiene FK a otras
CREATE TABLE fabricante (
    codigo INT UNSIGNED AUTO_INCREMENT COMMENT 'Código del fabricante',
    nombre VARCHAR(100) NOT NULL COMMENT 'Nombre del fabricante',
    CONSTRAINT pk_fabricante PRIMARY KEY (codigo),
    CONSTRAINT un_nombre UNIQUE (nombre)
)  COMMENT 'Tabla con los fabricantes';

-- Creamos la tabla producto.
CREATE TABLE producto (
    codigo INT UNSIGNED AUTO_INCREMENT COMMENT 'Código del producto',
    nombre VARCHAR(100) NOT NULL COMMENT 'Nombre del producto',
    precio DOUBLE NOT NULL COMMENT 'Precio del producto',
    cod_fabricante INT UNSIGNED COMMENT 'Código del fabricante',
    CONSTRAINT pk_producto PRIMARY KEY (codigo),
    CONSTRAINT fk_fabricante_codigo FOREIGN KEY (cod_fabricante)
        REFERENCES fabricante (codigo)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT chk_precio_no_negativo CHECK (precio >= 0)  -- Como unsigned está deprecado podemos crear una restricción
)  COMMENT 'Tabla con los productos';