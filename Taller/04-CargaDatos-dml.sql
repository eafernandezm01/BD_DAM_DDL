use tallerDB;

-- Insertar registros en la tabla Cliente
INSERT INTO CLIENTE (DNI, nombre, ape1, ape2, tfno) VALUES
('12345678A', 'Juan', 'García', 'López', '+34622345678'),
('87654321B', 'María', 'Martínez', 'Gómez', '+34632345678'),
('23456789C', 'Pedro', 'Fernández', 'Pérez', '+34642345678'),
('34567890D', 'Ana', 'Rodríguez', 'Sánchez', '+34652345678'),
('45678901E', 'Sara', 'López', NULL, '+34662345678'),
('56789012F', 'Carlos', 'Gómez', 'Martín', '+34672345678'),
('67890123G', 'Laura', 'Pérez', NULL, '+34682345678'),
('78901234H', 'Miguel', 'Sánchez', 'Fernández', '+34692345678'),
('89012345I', 'Elena', 'Martín', 'García', '+34610345678'),
('90123456J', 'David', 'Gómez', 'Rodríguez', '+34611345678'),
('01234567K', 'Silvia', 'Fernández', NULL, '+34612345678'),
('32109876L', 'Pablo', 'Sánchez', 'Martínez', '+34613345678'),
('21098765M', 'Lucía', 'García', 'López', '+34614345678'),
('10987654N', 'Manuel', 'Martín', NULL, '+34615345678'),
('98765432O', 'Rosa', 'López', 'Gómez', '+34616345678');

-- Insertar registros en la tabla Mecánico
INSERT INTO MECANICO (DNI, nombre, ape1, ape2, tfno, salario) VALUES
('22345670A', 'Antonio', 'González', 'Ruiz', '+34712345678', 1500),
('27654321B', 'Marcela', 'Martínez', 'Gómez', '+34722345678', 1800),
('33456789C', 'Pedro', 'Fernández', 'Pérez', '+34773345678', 1600),
('54567890D', 'Ana', 'Rodríguez', 'Sánchez', '+34742345678', 1700),
('65678901E', 'Sara', 'López', NULL, '+34752345678', 1900),
('76789012F', 'Carlos', 'Gómez', 'Martín', '+34762345678', 2000),
('87890123G', 'Laura', 'Pérez', NULL, '+34772345678', 2100),
('98901234H', 'Miguel', 'Sánchez', 'Fernández', '+34782345678', 2200),
('99012345I', 'Elena', 'Martín', 'García', '+34792345678', 2300),
('90123456J', 'David', 'Gómez', 'Rodríguez', '+34992345678', 2400),
('11234567K', 'Silvia', 'Fernández', NULL, '+34993345678', 2500),
('32109876L', 'Pablo', 'Sánchez', 'Martínez', '+39942345678', 2600),
('51098765M', 'Lucía', 'García', 'López', '+34995345678', 2700),
('60987654N', 'Manuel', 'Martín', NULL, '+34996345678', 2800),
('78765432O', 'Rosa', 'López', 'Gómez', '+34997345678', 2900);

-- Insertar registros en la tabla Concepto
INSERT INTO CONCEPTO (codigo, descripcion, precio) VALUES
(1, 'Cambio de aceite', 30.00),
(2, 'Revisión general', 50.00),
(3, 'Cambio de neumáticos', 120.00),
(4, 'Reparación de frenos', 80.00),
(5, 'Cambio de correa de distribución', 100.00),
(6, 'Limpieza de inyectores', 40.00),
(7, 'Cambio de bujías', 25.00),
(8, 'Reparación de suspensión', 90.00),
(9, 'Recarga de aire acondicionado', 60.00),
(10, 'Cambio de filtro de aire', 20.00),
(11, 'Alineación de dirección', 70.00),
(12, 'Cambio de pastillas de freno', 70.00),
(13, 'Diagnóstico de avería', 35.00),
(14, 'Reparación de motor', 150.00),
(15, 'Cambio de amortiguadores', 110.00),
(16, 'Cambio filtro de partículas', 1500.50),
(17, 'Cambio de líquido de frenos', 45.00),
(18, 'Sustitución de bombilla', 10.00),
(19, 'Reparación de sistema eléctrico', 85.00),
(20, 'Carga de batería', 30.00),
(21, 'Cambio de kit de distribución', 130.00);

-- Insertar registros en la tabla Vehículo
INSERT INTO VEHICULO (matricula, DNI, nbastidor, marca, modelo, fecha_compra) VALUES
('1234-BCD', '12345678A', 'ABC123456XYZ789012', 'Toyota', 'Corolla', '2023-01-15'),
('2345-CDE', '87654321B', 'BCD234567XYZ890123', 'Honda', 'Civic', '2022-12-20'),
('3456-DEF', '23456789C', 'CDE345678XYZ901234', 'Ford', 'Focus', '2023-02-10'),
('4567-EFG', '34567890D', 'DEF456789XYZ012345', 'Volkswagen', 'Golf', '2023-03-05'),
('5678-FGH', '45678901E', 'EFG567890XYZ123456', 'Renault', 'Clio', '2023-04-25'),
('6789-GHI', '56789012F', 'FGH678901XYZ234567', 'Seat', 'Ibiza', '2023-05-18'),
('7890-HIJ', '67890123G', 'GHI789012XYZ345678', 'Mercedes-Benz', 'Clase A', '2023-06-30'),
('8901-IJK', '78901234H', 'HIJ890123XYZ456789', 'BMW', 'Serie 3', '2023-07-12'),
('9012-JKL', '89012345I', 'IJK901234XYZ567890', 'Audi', 'A3', '2023-08-03'),
('0123-KLM', '90123456J', 'JKL012345XYZ678901', 'Peugeot', '208', '2023-09-19'),
('1234-LMN', '01234567K', 'KLM123456XYZ789012', 'Hyundai', 'i30', '2023-10-10'),
('2345-MNO', '32109876L', 'LMN234567XYZ890123', 'Kia', 'Sportage', '2023-11-05'),
('3456-NOP', '21098765M', 'MNO345678XYZ901234', 'Volvo', 'XC40', '2023-12-22'),
('4567-OPQ', '10987654N', 'NOP456789XYZ012345', 'Mazda', 'CX-5', '2024-01-14'),
('5678-PQR', '98765432O', 'OPQ567890XYZ123456', 'Citroën', 'C4 Picasso', '2024-02-28');

-- Insertar registros en la tabla Reparacion
INSERT INTO REPARACION (mecanico, vehiculo) VALUES
(1, '1234-BCD'),
(2, '2345-CDE'),
(3, '3456-DEF'),
(4, '4567-EFG'),
(5, '5678-FGH'),
(6, '6789-GHI'),
(7, '7890-HIJ'),
(8, '8901-IJK'),
(9, '9012-JKL'),
(10, '0123-KLM'),
(11, '1234-LMN'),
(12, '2345-MNO'),
(13, '3456-NOP'),
(14, '4567-OPQ'),
(15, '5678-PQR');

-- Insertar registros en la tabla DetalleReparacion
INSERT INTO DETALLE_REPARACION (reparacion, concepto, cantidad) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 2),
(2, 4, 1),
(3, 5, 1),
(3, 6, 1),
(4, 7, 4),
(4, 8, 1),
(5, 9, 1),
(5, 10, 1),
(6, 11, 1),
(6, 12, 1),
(7, 13, 1),
(7, 14, 1),
(8, 15, 1);