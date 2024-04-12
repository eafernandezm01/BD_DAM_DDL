-- Crea un usuario: usuario1 cuya password deba cambiarla, acceso desde cualquier ubicación
-- Crea el permiso que le permita consultar toda las tablas de la bd biblioteca.
create user 'usuario1'@'%' identified by '12345'; -- password expire;
grant select on biblioteca.* to 'usuario1'@'%';
flush privileges;


-- Crea un usuario: usuario2 cuya password nunca expire, acceso desde localhost
-- Crea el permiso de consulta, inserción, modificado y borrado de datos de todas las tablas bd.
create user 'usuario2'@'localhost' identified by '12345' password expire never;
grant select, insert, update, delete on *.* to 'usuario2'@'localhost';
flush privileges;

-- Crea un usuario: usuario3 cuya password expire dentro de 2 dias, acceso desde localhost
-- Crea el permiso de creación de objetos en la bd de biblioteca
create user 'usuario3'@'localhost' identified by '12345' password expire interval 2 day;
grant create on biblioteca.* to 'usuario3'@'localhost';
flush privileges;

-- Crea un usuario: usuario3 acceso desde la ip 172.19.27.149  (Esta es MI IP)
-- Crea el permiso de creación, actualizacion, y borrado de objetos en la bd de biblioteca
create user 'usuario3'@'172.19.27.149' identified by '12345' ;
grant create, alter, drop on biblioteca.* to 'usuario3'@'172.19.27.149';
flush privileges;

-- Actualiza la pass del usuario4 para que la deba cambiar
create user 'usuario4'@'localhost' identified by '1234';
alter user  'usuario4'@'localhost' identified by '1234' password expire;
flush privileges;


-- Crea un usuario: superusuario acceso desde cualquier ubicación.
-- Crea con todos los privilegios de la tabla biblioteca
create user 'superusuario'@'%' identified by '1234';
grant all privileges on biblioteca.* to 'superusuario'@'%';
flush privileges;


-- crea acceso al usuario usuario4 desde otra IP.
create user 'usuario4'@'168.10.20.10' identified by '1234';
flush privileges;

-- Borra el privilegio de creación del usuario usuario3
revoke create on biblioteca.* from 'usuario3'@'localhost';
flush privileges;

-- Borra el privilegio de modificación y borrado asociado al usuario3
revoke  alter, drop on biblioteca.* from 'usuario3'@'172.19.27.149';
flush privileges;

-- Borra todos los usuarios creados en este script
drop user 'usuario1'@'%';
drop user 'usuario2'@'localhost';
drop user 'usuario3'@'localhost';
drop user 'usuario3'@'172.19.27.149';
drop user 'usuario4'@'localhost';
drop user 'superusuario'@'%';
drop user 'usuario4'@'168.10.20.10';


-- Valido que esten solo los usuarios de mysql y root
SELECT * FROM mysql.user;