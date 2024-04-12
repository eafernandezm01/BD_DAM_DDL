-- Consulta los usuarios existentes en el servidor
SELECT * FROM mysql.user;

-- Crear un nuevo usuario 'usuario1' que se conecte desde la propia máquina.
CREATE USER 'usuario1'@'localhost' IDENTIFIED BY '12345';
flush privileges;

-- Conceder todos los privilegios al usuario1 desde la máquina en la base de datos tallerDB.
GRANT ALL PRIVILEGES ON tallerDB.* TO 'usuario1'@'localhost';
flush privileges;

-- Borrar todos los privilegios
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'usuario1'@'localhost';
flush privileges;

-- Eliminar el usuario1 de la base de datos. 
DROP USER 'usuario1'@'localhost';
flush privileges;

-- Crear un nuevo usuario 'usuario_sin_acceso' que se conecte desde la propia máquina, 
-- que deba cambiar cuando se conecte.
CREATE USER 'usuario_sin_acceso'@'localhost' IDENTIFIED BY '12345' PASSwORD EXPIRE;
flush privileges;

-- Conceder permisos de solo de lectura o consulta en la tabla CLIENTE al usuario 'usuario_sin_acceso'. 
GRANT SELECT ON tallerDB.CLIENTE TO 'usuario_sin_acceso'@'localhost';
flush privileges;

-- Conceder permisos de inserción y actualizacion en la tabla REPARACION al usuario 'usuario_sin_acceso'. 
GRANT INSERT, UPDATE ON tallerDB.REPARACION TO 'usuario_sin_acceso'@'localhost';
flush privileges;

-- Revocar permisos de actualización en la tabla REPARACION al usuario 'usuario_sin_acceso'. 
REVOKE INSERT ON tallerDB.REPARACION FROM 'usuario_sin_acceso'@'localhost';
flush privileges;

-- Crear un nuevo usuario 'usuario_existente' que se conecte desde la propia máquina, 
-- que expire en un dia
CREATE USER 'usuario_existente'@'localhost' IDENTIFIED BY '12345' PASSwORD EXPIRE INTERVAL 1 DAY;
flush privileges;

-- Cambiar la contraseña del usuario 'usuario_existente' pon 98765. 
ALTER USER 'usuario_existente'@'localhost' IDENTIFIED BY '98765';
flush privileges;

-- Otorgar permisos de actualización en todas las tablas de la base de datos al usuario. 
GRANT UPDATE ON tallerDB.* TO 'usuario_existente'@'localhost';
flush privileges;

-- Eliminar el usuario_existente de la base de datos. 
DROP USER 'usuario_existente'@'localhost';
flush privileges;


-- Crear un nuevo usuario con acceso remoto 'usuario_remoto'.
CREATE USER 'usuario_remoto'@'%' IDENTIFIED BY '12345';
flush privileges;

-- Conceder todos los privilegios al usuario remoto en la base de datos. 
GRANT ALL PRIVILEGES ON tallerDB.* TO 'usuario_remoto'@'%';
flush privileges;

-- Revocar permisos de actualización en todas las tablas al usuario remoto. 
REVOKE UPDATE ON tallerDB.* FROM 'usuario_remoto'@'%';
flush privileges;

-- Cambiar la contraseña del usuario remoto. 
ALTER USER 'usuario_remoto'@'%' IDENTIFIED BY '123456';
flush privileges;

-- Eliminar el usuario remoto de la base de datos. 
DROP USER 'usuario_remoto'@'%';
flush privileges;

-- Crear un nuevo usuario con acceso desde un rango de direcciones 192.168.1 específica. 
CREATE USER 'usuario_ip'@'192.168.1.%' IDENTIFIED BY '12345';
flush privileges;

-- Conceder todos los privilegios al usuario por dirección IP. 
GRANT ALL PRIVILEGES ON tallerDB.* TO 'usuario_ip' @'192.168.1.%';
flush privileges;

-- Revocar permisos de actualizacion al usuario por dirección IP. 
REVOKE UPDATE ON tallerDB.* FROM 'usuario_ip'@'192.168.1.%';
flush privileges;

-- Eliminar el usuario por dirección IP. 
DROP USER 'usuario_ip'@'192.168.1.%';
flush privileges;

-- Eliminar el usuario usuario_sin_acceso
DROP USER 'usuario_sin_acceso'@'localhost';
flush privileges;

-- Crear un nuevo usuario 'super' que se conecte desde cualquier maquina
CREATE USER 'super'@'%' IDENTIFIED BY '12345';
flush privileges;

-- Conceder todos los privilegios al super a todas la bases de datos.
GRANT ALL PRIVILEGES ON *.* TO 'super'@'%';
flush privileges;

-- Recarga los privilegios
FLUSH PRIVILEGES;






-- VEMOS SI APARTE DE mysql.* o root tenemos mas usuarios...
SELECT * FROM mysql.user;
-- por si quiero ejecutar de nuevo el script, voy a borrar el usuario super porque queda pendiente...
DROP USER 'super'@'%';
flush privileges;
-- Confirmo que ha borrado
SELECT * FROM mysql.user;


