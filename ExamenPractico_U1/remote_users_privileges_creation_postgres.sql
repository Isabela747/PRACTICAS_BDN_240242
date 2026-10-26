
-- =====================================================
-- USUARIOS Y PRIVILEGIOS PARA POSTGRESQL
-- Base de datos: db_test_7b
-- Ejecutar conectado a db_test_7b como mago
-- =====================================================

-- 1. CREAR LOS USUARIOS SI NO EXISTEN

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'marco.ramirez') THEN
        CREATE USER "marco.ramirez" WITH PASSWORD 'qwerty123';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'margaret.rojas') THEN
        CREATE USER "margaret.rojas" WITH PASSWORD '240242';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'osmar.gael') THEN
        CREATE USER "osmar.gael" WITH PASSWORD '240036';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'jhon.ibarra') THEN
        CREATE USER "jhon.ibarra" WITH PASSWORD '240080';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'dara.gomez') THEN
        CREATE USER "dara.gomez" WITH PASSWORD '240765';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'jenn.canales') THEN
        CREATE USER "jenn.canales" WITH PASSWORD '240556';
    END IF;
END
$$;

-- 2. CREAR LOS SIETE ROLES SI NO EXISTEN

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'superadmin') THEN
        CREATE ROLE superadmin;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'admin') THEN
        CREATE ROLE admin;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'seller') THEN
        CREATE ROLE seller;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'buyer') THEN
        CREATE ROLE buyer;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'support') THEN
        CREATE ROLE support;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'common') THEN
        CREATE ROLE common;
    END IF;

    IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'user_not_registered') THEN
        CREATE ROLE user_not_registered;
    END IF;
END
$$;

-- 3. PERMITIR CONEXIÓN A LA BASE DE DATOS

GRANT CONNECT ON DATABASE db_test_7b TO superadmin;
GRANT CONNECT ON DATABASE db_test_7b TO admin;
GRANT CONNECT ON DATABASE db_test_7b TO seller;
GRANT CONNECT ON DATABASE db_test_7b TO buyer;
GRANT CONNECT ON DATABASE db_test_7b TO support;
GRANT CONNECT ON DATABASE db_test_7b TO common;
GRANT CONNECT ON DATABASE db_test_7b TO user_not_registered;

-- 4. PRIVILEGIOS DE superadmin DENTRO DE db_test_7b
-- No se concede SUPERUSER global.

GRANT USAGE, CREATE ON SCHEMA public TO superadmin;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO superadmin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO superadmin;

-- 5. PRIVILEGIOS DE admin

GRANT ALL PRIVILEGES ON DATABASE db_test_7b TO admin;
GRANT USAGE, CREATE ON SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO admin;

-- 6. PRIVILEGIOS DE support
-- Solo sobre tb_users.

GRANT USAGE ON SCHEMA public TO support;
GRANT SELECT, INSERT, UPDATE
ON TABLE public.tb_users TO support;

-- 7. PRIVILEGIOS DE seller
-- Solo sobre tb_products.

GRANT USAGE ON SCHEMA public TO seller;
GRANT SELECT, INSERT, UPDATE
ON TABLE public.tb_products TO seller;
GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public TO seller;


GRANT INSERT ON TABLE public.tb_users
TO "jhon.ibarra";
GRANT USAGE, SELECT, UPDATE ON SEQUENCE tb_users_id_seq TO jhon.ibarra;
GRANT INSERT ON TABLE public.tb_logs
TO "jhon.ibarra";

GRANT USAGE ON SEQUENCE public.tb_logs_id_seq
TO "jhon.ibarra";


GRANT INSERT ON TABLE public.tb_logs
TO "dara.gomez";

GRANT USAGE ON SEQUENCE public.tb_logs_id_seq
TO "dara.gomez";
-- 8. ASIGNAR ROLES A LOS USUARIOS

GRANT superadmin TO "margaret.rojas";
GRANT admin TO "marco.ramirez";
GRANT support TO "dara.gomez";
GRANT seller TO "osmar.gael";
GRANT seller TO "jenn.canales";

-- jhon.ibarra permanece sin rol asignado.
-- buyer, common y user_not_registered permanecen sin asignación.

-- 9. PRIVILEGIOS PREDETERMINADOS PARA TABLAS FUTURAS
-- Aplican a objetos creados por mago en public.

ALTER DEFAULT PRIVILEGES FOR ROLE mago IN SCHEMA public
GRANT ALL PRIVILEGES ON TABLES TO superadmin;

ALTER DEFAULT PRIVILEGES FOR ROLE mago IN SCHEMA public
GRANT ALL PRIVILEGES ON SEQUENCES TO superadmin;

ALTER DEFAULT PRIVILEGES FOR ROLE mago IN SCHEMA public
GRANT ALL PRIVILEGES ON TABLES TO admin;

ALTER DEFAULT PRIVILEGES FOR ROLE mago IN SCHEMA public
GRANT ALL PRIVILEGES ON SEQUENCES TO admin;

-- No se otorgan permisos predeterminados a support
-- sobre todas las tablas.

-- 10. CONSULTAR USUARIOS Y ROLES ASIGNADOS

SELECT
    u.rolname AS usuario,
    r.rolname AS rol_asignado,
    u.rolcanlogin AS puede_iniciar_sesion,
    u.rolsuper AS es_superusuario_global
FROM pg_roles AS u
LEFT JOIN pg_auth_members AS m
    ON m.member = u.oid
LEFT JOIN pg_roles AS r
    ON r.oid = m.roleid
WHERE u.rolname IN (
    'marco.ramirez',
    'margaret.rojas',
    'osmar.gael',
    'jhon.ibarra',
    'dara.gomez',
    'jenn.canales'
)
ORDER BY u.rolname, r.rolname;

-- =====================================================
-- FIN DEL SCRIPT
-- =====================================================
