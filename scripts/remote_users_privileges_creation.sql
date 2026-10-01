/* Creación de usuarios remotos */
CREATE USER IF NOT EXISTS 'marco.ramirez'@'%' IDENTIFIED BY 'qwerty123';
CREATE USER IF NOT EXISTS 'margaret.rojas'@'%' IDENTIFIED BY '240242';
CREATE USER IF NOT EXISTS 'osmar.gael'@'%' IDENTIFIED BY '240036';
CREATE USER IF NOT EXISTS 'jhon.ibarra'@'%' IDENTIFIED BY '240080';
CREATE USER IF NOT EXISTS 'dara.gomez'@'%' IDENTIFIED BY '240765';
CREATE USER IF NOT EXISTS 'jenn.canales'@'%' IDENTIFIED BY '240556';



/* Asignar los privilegios de super usuario */
GRANT ALL PRIVILEGES ON *.* TO 'margaret.rojas'@'%';


/* Asignar privilegios de SELECCIÓN, INSERCIÓN, ACTUALIZACIÓN Y ELIMINACIÓN */
GRANT SELECT, INSERT, UPDATE, DELETE
ON db_test_7b.*
TO 'margaret.rojas'@'%';


/* CREACIÓN DE ROLES PARA EL SISTEMA DE ECOMMERCE */
CREATE ROLE IF NOT EXISTS 'superadmin';
CREATE ROLE IF NOT EXISTS 'admin';
CREATE ROLE IF NOT EXISTS 'seller';
CREATE ROLE IF NOT EXISTS 'buyer';
CREATE ROLE IF NOT EXISTS 'support';
CREATE ROLE IF NOT EXISTS 'common';
CREATE ROLE IF NOT EXISTS 'user_not_registered';


/* ASIGNAR PRIVILEGIOS A LOS ROLES CREADOS */

GRANT ALL PRIVILEGES
ON *.*
TO 'superadmin';

GRANT ALL PRIVILEGES
ON db_test_7b.*
TO 'admin';

GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_users
TO 'support';

GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_products
TO 'support';


/* seller */
GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_products
TO 'seller';


/* ASIGNAR ROLES A LOS USUARIOS CREADOS */

GRANT 'superadmin'
TO 'margaret.rojas'@'%';

GRANT 'admin'
TO 'marco.ramirez'@'%';

GRANT 'support'
TO 'dara.gomez'@'%';

GRANT 'seller'
TO 'osmar.gael'@'%';


GRANT 'seller'
TO 'jenn.canales'@'%';


/* ACTIVAR ROLES POR DEFECTO */

SET DEFAULT ROLE 'superadmin'
TO 'margaret.rojas'@'%';

SET DEFAULT ROLE 'admin'
TO 'marco.ramirez'@'%';

SET DEFAULT ROLE 'support'
TO 'dara.gomez'@'%';

SET DEFAULT ROLE 'seller'
TO 'osmar.gael'@'%';

SET DEFAULT ROLE 'seller'
TO 'jenn.canales'@'%';


/* Mostrar los usuarios creados */

SELECT "Los usuarios han sido creados correctamente, se muestran a continuación:"
AS mensaje;


/* Aplicar cambios */

FLUSH PRIVILEGES;