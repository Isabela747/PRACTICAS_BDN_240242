USE db_test_7b;

/*1. Cuantas tablas existen en la base de datos db_test_7b?*/
SHOW TABLES;

/*2. Cuantos triggers existen en lña base de datos db_test_7b?*/
SHOW TRIGGERS FROM db_test_7b;

/*3. Cuantos registros existen en la tabla users?*/
SELECT COUNT(*) AS total_registros FROM tb_logs;

/*5. Consultar todas las operaciones realizadas en la base de datos*/
SELECT * FROM tb_logs;

/* 6. Verficar que los usuarios remotos hayan sido creados */