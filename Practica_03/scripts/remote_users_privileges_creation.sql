
USE db_test_7b;

/* =====================================================
   1. CREACIÓN DE USUARIOS REMOTOS
   ===================================================== */

CREATE USER IF NOT EXISTS 'marco.ramirez'@'%'
IDENTIFIED BY 'qwerty123';

CREATE USER IF NOT EXISTS 'margaret.rojas'@'%'
IDENTIFIED BY '240242';

CREATE USER IF NOT EXISTS 'osmar.gael'@'%'
IDENTIFIED BY '240036';

CREATE USER IF NOT EXISTS 'jhon.ibarra'@'%'
IDENTIFIED BY '240080';

CREATE USER IF NOT EXISTS 'dara.gomez'@'%'
IDENTIFIED BY '240765';

CREATE USER IF NOT EXISTS 'jenn.canales'@'%'
IDENTIFIED BY '240556';

CREATE USER IF NOT EXISTS 'app_web'@'%'
IDENTIFIED BY 'Web123';

CREATE USER IF NOT EXISTS 'app_mobile'@'%'
IDENTIFIED BY 'Mobile890';


/* =====================================================
   2. CREACIÓN DE ROLES
   ===================================================== */

CREATE ROLE IF NOT EXISTS 'superadmin';
CREATE ROLE IF NOT EXISTS 'admin';
CREATE ROLE IF NOT EXISTS 'seller';
CREATE ROLE IF NOT EXISTS 'buyer';
CREATE ROLE IF NOT EXISTS 'support';
CREATE ROLE IF NOT EXISTS 'common';
CREATE ROLE IF NOT EXISTS 'user_not_registered';


/* =====================================================
   3. PRIVILEGIOS DEL ROL SUPERADMIN
   ===================================================== */

GRANT ALL PRIVILEGES
ON *.*
TO 'superadmin';


/* =====================================================
   4. PRIVILEGIOS DEL ROL ADMIN
   ===================================================== */

GRANT ALL PRIVILEGES
ON db_test_7b.*
TO 'admin';


/* =====================================================
   5. PRIVILEGIOS DEL ROL SUPPORT
   ===================================================== */

GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_users
TO 'support';

GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tbc_categories
TO 'support';

GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tbd_products_categories
TO 'support';


/* =====================================================
   6. PRIVILEGIOS DEL ROL SELLER
   ===================================================== */

GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_products
TO 'seller';


/* =====================================================
   7. PRIVILEGIOS DEL ROL BUYER
   ===================================================== */

GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_products
TO 'buyer';

GRANT SELECT, INSERT, UPDATE
ON db_test_7b.tb_carts
TO 'buyer';


/* =====================================================
   8. PRIVILEGIOS DEL ROL USER_NOT_REGISTERED
   ===================================================== */

/* Permite insertar usuarios */
GRANT INSERT
ON db_test_7b.tb_users
TO 'user_not_registered';

/* Permite insertar sus datos personales */
GRANT INSERT
ON db_test_7b.tb_people
TO 'user_not_registered';


/* =====================================================
   9. PRIVILEGIOS DIRECTOS DEL SUPERADMINISTRADOR
   ===================================================== */

GRANT ALL PRIVILEGES
ON *.*
TO 'margaret.rojas'@'%';


/* =====================================================
   10. ASIGNACIÓN DE ROLES A LOS USUARIOS
   ===================================================== */

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


/* =====================================================
   11. ASIGNACIÓN DE ROLES A LAS APLICACIONES
   ===================================================== */

GRANT 'user_not_registered'
TO 'app_web'@'%';

GRANT 'user_not_registered'
TO 'app_mobile'@'%';


/* =====================================================
   12. CONFIGURACIÓN DE ROLES PREDETERMINADOS
   ===================================================== */

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

SET DEFAULT ROLE 'user_not_registered'
TO 'app_web'@'%';

SET DEFAULT ROLE 'user_not_registered'
TO 'app_mobile'@'%';


/* =====================================================
   13. PERMISO PARA EJECUTAR EL PROCEDIMIENTO
   ===================================================== */

/*
   Ejecutar este bloque DESPUÉS de crear
   sp_register_new_user en db_test_7b.
*/

/*
GRANT EXECUTE
ON PROCEDURE db_test_7b.sp_register_new_user
TO 'user_not_registered';
*/


/* =====================================================
   14. CONFIRMACIÓN
   ===================================================== */

SELECT
    'Usuarios, roles y privilegios configurados'
    AS mensaje;

FLUSH PRIVILEGES;
