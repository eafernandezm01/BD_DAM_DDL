/* Creamos la carga de datos de la tienda de informática, primero insertamos los fabricantes y luego los productos **/


-- Creamos la base de datos
use tiendainformatica;

-- Establecemos el autocomit a false porque quiero ser yo la que gestione las transacciones.
set autocommit = false;

-- Insertamos los fabricantes
INSERT INTO fabricante (nombre) VALUES ('Intel');
INSERT INTO fabricante (nombre) VALUES ('AMD');
INSERT INTO fabricante (nombre) VALUES ('Nvidia');
INSERT INTO fabricante (nombre) VALUES ('ASUS');
INSERT INTO fabricante (nombre) VALUES ('MSI');
INSERT INTO fabricante (nombre) VALUES ('Gigabyte');
INSERT INTO fabricante (nombre) VALUES ('Corsair');
INSERT INTO fabricante (nombre) VALUES ('Samsung');
INSERT INTO fabricante (nombre) VALUES ('Western Digital');
INSERT INTO fabricante (nombre) VALUES ('Logitech');

-- Insertamos los productos
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('Intel Core i9-10900K', 549.99, 1);
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('Intel Core i7-11700K', 399.99, 1);
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('AMD Ryzen 9 5950X', 799.99, 2);
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('AMD Ryzen 7 5800X', 449.99, 2);
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('Nvidia GeForce RTX 3080 Graphics Card', 699.99, 3);
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('Nvidia GeForce RTX 3070 Graphics Card', 499.99, 3);
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('ASUS ROG Strix Z590-E Gaming Motherboard', 389.99, 4);
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('ASUS TUF Gaming X570-Plus Motherboard', 189.99, 4);
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('Corsair Vengeance RGB Pro 16GB RAM', 99.99, 7);
INSERT INTO producto (nombre, precio, cod_fabricante) VALUES ('Corsair RM850x Power Supply', 149.99, 7);

-- Persistimos los datos
commit;
