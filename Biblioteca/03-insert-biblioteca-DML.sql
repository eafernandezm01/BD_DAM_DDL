use biblioteca;

-- Inserts para la tabla AUTOR
INSERT INTO AUTOR (codigo, nombre) VALUES (1, 'Ana María Sanz Sierra');
INSERT INTO AUTOR (codigo, nombre) VALUES (2, 'Miguel Ángel Acera García');
INSERT INTO AUTOR (codigo, nombre) VALUES (3, 'Erich Gamma');
INSERT INTO AUTOR (codigo, nombre) VALUES (4, 'Richard Helm');
INSERT INTO AUTOR (codigo, nombre) VALUES (5, 'Ralph Johnson');
INSERT INTO AUTOR (codigo, nombre) VALUES (6, 'John Vlissides');
INSERT INTO AUTOR (codigo, nombre) VALUES (7, 'Erich Matthes');
INSERT INTO AUTOR (codigo, nombre) VALUES (8, 'Robert C. Martin');

-- Inserts para la tabla LIBRO
INSERT INTO LIBRO (codigo, titulo, isbn, editorial, num_pag) VALUES (1, 'C/C++', '9788441518117', 'Anaya', 368);
INSERT INTO LIBRO (codigo, titulo, isbn, editorial, num_pag) VALUES (2, 'Design Patterns: Elements of Reusable Object-Oriented Software', '9780201633610', 'Addison-Wesley Professional', 416);
INSERT INTO LIBRO (codigo, titulo, isbn, editorial, num_pag) VALUES (3, 'Clean Code: A Handbook of Agile Software Craftsmanship', '9780132350884', 'Prentice Hall', 464);
INSERT INTO LIBRO (codigo, titulo, isbn, editorial, num_pag) VALUES (4, 'Head First Design Patterns', '9780596007126', 'O''Reilly Media', 694);

-- Inserts para la tabla ESCRIBE
INSERT INTO ESCRIBE (autor, libro) VALUES (1, 1);
INSERT INTO ESCRIBE (autor, libro) VALUES (2, 1);
INSERT INTO ESCRIBE (autor, libro) VALUES (3, 2);
INSERT INTO ESCRIBE (autor, libro) VALUES (4, 2);
INSERT INTO ESCRIBE (autor, libro) VALUES (5, 2);
INSERT INTO ESCRIBE (autor, libro) VALUES (6, 2);
INSERT INTO ESCRIBE (autor, libro) VALUES (7, 3);
INSERT INTO ESCRIBE (autor, libro) VALUES (8, 4);

-- Inserts para la tabla EJEMPLAR
INSERT INTO EJEMPLAR (libro, codigo_ejemplar, localizacion) VALUES (1, 101, 'Sección A');
INSERT INTO EJEMPLAR (libro, codigo_ejemplar, localizacion) VALUES (1, 102, 'Sección B');
INSERT INTO EJEMPLAR (libro, codigo_ejemplar, localizacion) VALUES (2, 201, 'Sección C');
INSERT INTO EJEMPLAR (libro, codigo_ejemplar, localizacion) VALUES (2, 202, 'Sección D');
INSERT INTO EJEMPLAR (libro, codigo_ejemplar, localizacion) VALUES (3, 301, 'Sección E');
INSERT INTO EJEMPLAR (libro, codigo_ejemplar, localizacion) VALUES (4, 401, 'Sección F');

-- Inserts para la tabla USUARIO
INSERT INTO USUARIO (codigo, nombre, direccion, telefono) VALUES (1, 'Ana Martínez', 'Calle Principal 123 Navalmoral de la Mata (Cáceres)', '123456789');
INSERT INTO USUARIO (codigo, nombre, direccion, telefono) VALUES (2, 'Pedro Gómez', 'Avenida Central 456 Don Benito (Badajoz)', '987654321');
INSERT INTO USUARIO (codigo, nombre, direccion, telefono) VALUES (3, 'María López', 'Plaza Mayor 789 Navalmoral de la Mata', '111222333');

-- Inserts para la tabla PRESTAMO
INSERT INTO PRESTAMO (libro, ejemplar, usuario, fecha_pres, fecha_dev) VALUES (1, 101, 1, '2024-03-01', '2024-03-15');
INSERT INTO PRESTAMO (libro, ejemplar, usuario, fecha_pres, fecha_dev) VALUES (2, 201, 2, '2024-03-02', NULL);
INSERT INTO PRESTAMO (libro, ejemplar, usuario, fecha_pres, fecha_dev) VALUES (3, 301, 3, '2024-03-03', NULL);
