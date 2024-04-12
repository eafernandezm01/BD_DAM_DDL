-- Seleccionamos la BD
USE biblioteca;

/**
 Borramos las tablas en orden inverso a la creación
 1.- Las tablas que salen flechas por orden: PRESTAMO, EJEMPLAR, ESCRIBE
 2.- Las tablas que NO salen flecha (NO necesita que la otra esté creada):AUTOR, LIBRO, USUARIO
 **/

DROP TABLE PRESTAMO;
DROP TABLE EJEMPLAR;
DROP TABLE ESCRIBE;

DROP TABLE AUTOR;
DROP TABLE LIBRO;
DROP TABLE USUARIO;

SHOW TABLES;

DROP DATABASE biblioteca;