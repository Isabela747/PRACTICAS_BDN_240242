/* Creación de usuarios remotos */
CREATE USER 'marco.ramirez'@'%' IDENTIFIED BY 'querty123';
CREATE USER 'margaret.rojas'@'%' IDENTIFIED BY '240242';
CREATE USER 'jhon.leal'@'%' IDENTIFIED BY '240603';
CREATE USER 'jenn.canales'@'%' IDENTIFIED BY '240556';

/* Asignar los privilegios */
GRANT ALL PRIVILEGES ON *.* TO 'margaret.rojas'@'%';

/* ASIGNAR PRIVILEGIOS DE SELECCION,INSERCIÓN, ACTUALIZACIÓN Y ELIMINACIÓN AL USUARIO DE LA IZQUIERDA */
GRANT SELECT, UPDATE, INSERT, DELETE ON db_test_7b.* TO ' jhon.leal'@'%';

/*CREACIÓN DE ROLES PARAEL SISTEMA DE ECOMMERCE */
CREATE ROLE 'admin';
CREATE ROLE 'seller';
CREATE ROLE 'buyer';
CREATE ROLE 'support';
CREATE ROLE 'common';
CREATE ROLE 'user_not_registered';


/* ASIGNAR PRIVILEGIOS A LOS ROLES CREADOS */
GRANT ALL PRIVILEGES ON db_test_7b.* TO 'admin';
-- SUPORT
GRANT SELECT, UPDATE, INSERT ON db_test_7b.* TO 'support';




/* ASIGNAR ROLES A LOS USUARIOS CREADOS */
-- ADMIN
GRANT 'admin' TO 'marco.ramirez'@'%';
GRANT 'support' TO 'jhon.leal'@'%';