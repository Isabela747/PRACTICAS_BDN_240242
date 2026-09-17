/* ============================================================
   BASE DE DATOS: db_test_7b
   CREACIÓN Y CONFIGURACIÓN DE USUARIOS Y ROLES
   ============================================================ */


/* ============================================================
   0. CONFIGURACIÓN GLOBAL DE ROLES (AUMENTADO)
   ------------------------------------------------------------
   Por defecto, MySQL 8.0 deshabilita los roles al iniciar sesión.
   Esta instrucción garantiza que los roles por defecto asignados
   se activen automáticamente al conectar un usuario.
   ============================================================ */


/*ACCESO*/
SET GLOBAL activate_all_roles_on_login = ON;


/* ============================================================
   1. CREACIÓN DE USUARIOS REMOTOS
   ============================================================ */

CREATE USER IF NOT EXISTS 'marco.ramirez'@'%'
IDENTIFIED BY 'querty123';

CREATE USER IF NOT EXISTS 'margaret.rojas'@'%'
IDENTIFIED BY '240242';

CREATE USER IF NOT EXISTS 'jhon.leal'@'%'
IDENTIFIED BY '240603';

CREATE USER IF NOT EXISTS 'jenn.canales'@'%'
IDENTIFIED BY '240556';

CREATE USER IF NOT EXISTS 'gadi.gadi'@'%'
IDENTIFIED BY '240449';


/* ============================================================
   2. ASIGNAR PRIVILEGIOS DIRECTOS A LOS USUARIOS
   ============================================================ */

/* MARGARET: TODOS LOS PRIVILEGIOS */
GRANT ALL PRIVILEGES
ON *.*
TO 'margaret.rojas'@'%';

/* JHON: SELECT, INSERT, UPDATE Y DELETE DIRECTOS */
GRANT SELECT, INSERT, UPDATE, DELETE
ON db_test_7b.*
TO 'jhon.leal'@'%';


/* ============================================================
   3. CREACIÓN DE ROLES
   ============================================================ */

CREATE ROLE IF NOT EXISTS 'admin';
CREATE ROLE IF NOT EXISTS 'seller';
CREATE ROLE IF NOT EXISTS 'buyer';
CREATE ROLE IF NOT EXISTS 'support';
CREATE ROLE IF NOT EXISTS 'common';
CREATE ROLE IF NOT EXISTS 'user_not_registered';
CREATE ROLE IF NOT EXISTS 'superadmin';


/* ============================================================
   4. ASIGNAR PRIVILEGIOS A LOS ROLES
   ============================================================ */

/* SUPERADMIN: Todos los privilegios sobre todas las bases */
GRANT ALL PRIVILEGES
ON *.*
TO 'superadmin';

/* ADMIN: Todos los privilegios sobre db_test_7b */
GRANT ALL PRIVILEGES
ON db_test_7b.*
TO 'admin';

/* SELLER: SELECT, INSERT y UPDATE */
GRANT SELECT, INSERT, UPDATE
ON db_test_7b.*
TO 'seller';

/* BUYER: SELECT */
GRANT SELECT
ON db_test_7b.*
TO 'buyer';

/* SUPPORT: SELECT, INSERT y UPDATE */
GRANT SELECT, INSERT, UPDATE
ON db_test_7b.*
TO 'support';



/* COMMON: SELECT */
GRANT SELECT
ON db_test_7b.*
TO 'common';

/* USER NOT REGISTERED: Sin privilegios */


/* ============================================================
   5. ASIGNAR ROLES A LOS USUARIOS
   ============================================================ */

GRANT 'admin' TO 'marco.ramirez'@'%';
GRANT 'superadmin' TO 'margaret.rojas'@'%';
GRANT 'support' TO 'jhon.leal'@'%';
GRANT 'support' TO 'jenn.canales'@'%';
GRANT 'buyer' TO 'gadi.gadi'@'%';


/* ============================================================
   6. ESTABLECER LOS ROLES COMO ROLES PREDETERMINADOS
   ============================================================ */

SET DEFAULT ROLE 'admin' TO 'marco.ramirez'@'%';
SET DEFAULT ROLE 'superadmin' TO 'margaret.rojas'@'%';
SET DEFAULT ROLE 'support' TO 'jhon.leal'@'%';
SET DEFAULT ROLE 'support' TO 'jenn.canales'@'%';
SET DEFAULT ROLE 'buyer' TO 'gadi.gadi'@'%';


/* ============================================================
   7. ACTUALIZAR PRIVILEGIOS
   ============================================================ */

FLUSH PRIVILEGES;


/* ============================================================
   8. VALIDACIÓN DE USUARIOS
   ============================================================ */

SELECT User, Host
FROM mysql.user
WHERE User IN (
    'marco.ramirez',
    'margaret.rojas',
    'jhon.leal',
    'jenn.canales',
    'gadi.gadi'
);


/* ============================================================
   9. VALIDACIÓN DE ROLES
   ============================================================ */

SELECT User, Host
FROM mysql.user
WHERE User IN (
    'superadmin',
    'admin',
    'seller',
    'buyer',
    'support',
    'common',
    'user_not_registered'
);


/* ============================================================
   10. VALIDACIÓN DE PRIVILEGIOS INDIVIDUALES
   ============================================================ */

SHOW GRANTS FOR 'marco.ramirez'@'%';
SHOW GRANTS FOR 'margaret.rojas'@'%';
SHOW GRANTS FOR 'jhon.leal'@'%';
SHOW GRANTS FOR 'jenn.canales'@'%';
SHOW GRANTS FOR 'gadi.gadi'@'%';

/* ============================================================
   FIN DEL SCRIPT
   ============================================================ */