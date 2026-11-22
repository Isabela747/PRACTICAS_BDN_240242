#Prácticas de la asignatura de Base de Datos en la Nube
## Ingenieria en Tecnologías de la información e Inovación Digital
### Docente M.T.I Marco A. Ramirez Hernandez

periodo; Septiembre - Diciembre 2026

---

### Tabla de Practicas de la Materia

|No.1 | Nombre | Descripción | Potenciador | Estatus | 
|---|---|---|---|---|
|1.| Metodologia de Evaluacion de la Materia| Transcribir en la libreta y comprender la
metodologia y fechas de evaluacion de la asignatura| 5| Concluida |
|2.|Conexiones Remotas para Bases de Datos SQL| Crear y Administrar usuario y privilegios de origenes remotos a traves de internet o una redes locales|60| Concluida | 
|3.| Manipulación de Datos en conexiones Remotas a Bases de Datos Relacionales | Crear procedimientos almacenados, funciones, tablas derivadas, inportacion de datos en el contexto de E-commerce | ?? | En Proceso|
|4.| Examen Practico de instalación de Postgre y MySQL en un VPS | Instalar, configurar, desplegar y simular datos en los Servivios de Bases de Datos Relacionales Remotas| 100 |En proceso |



# Práctica 04 — Procesos de simulación de compra

## Descripción general

En esta práctica se trabajó con la base de datos **`db_test_7b`**, con el propósito de adaptar su estructura para representar y registrar diferentes procesos de compra dentro de una plataforma de comercio electrónico.

Se realizaron modificaciones a la estructura existente, incorporando campos, relaciones, catálogos, tablas de historial y reglas de integridad para permitir la simulación de operaciones relacionadas con pagos, devoluciones, cancelaciones, reembolsos y envíos.

El trabajo se desarrolló conservando la estructura y los registros propios de la base de datos, sin sustituirlos por información de respaldos externos.

## Objetivos de la práctica

- Adaptar la estructura de la base de datos a los requerimientos de la Práctica 04.
- Implementar los elementos necesarios para registrar diferentes métodos de pago.
- Gestionar compras, pedidos y transacciones.
- Registrar devoluciones, cancelaciones y reembolsos.
- Incorporar el seguimiento de los envíos y las entregas.
- Mantener la integridad y trazabilidad de las operaciones realizadas.

## Actividades realizadas

### 1. Adaptación de la estructura de la base de datos

Se trabajó sobre la base de datos `db_test_7b`, realizando modificaciones mediante instrucciones SQL `ALTER TABLE`, conservando las tablas y los datos existentes.

### 2. Catálogo de métodos de pago

Se incorporaron diferentes métodos de pago al catálogo `tbc_payment_methods`, incluyendo:

- Tarjeta de débito.
- Tarjeta de crédito.
- Tarjeta digital Spin.
- Pago en efectivo.
- Transferencia SPEI.
- Cupón de regalo.

### 3. Gestión de pagos y transacciones

Se agregaron campos para registrar el estado de los pagos, fechas de operación y número de parcialidades.

También se amplió la información de las transacciones para identificar al usuario relacionado, la moneda utilizada y el resultado de la operación.

### 4. Devoluciones y reenvíos

Se adaptaron las tablas relacionadas con devoluciones para registrar al usuario que solicita el proceso, su estado, las fechas de solicitud y procesamiento, así como la información de los productos involucrados.

### 5. Cancelaciones y reembolsos

Se incorporaron campos para gestionar cancelaciones parciales o totales, relacionar los productos afectados con sus partidas originales y registrar el importe correspondiente al reembolso.

### 6. Gestión de envíos

Se amplió la estructura de envíos para registrar:

- Estado del envío.
- Fecha de despacho.
- Fecha estimada de entrega.
- Fecha de entrega.
- Tipo de entrega: domicilio o punto de recolección.
- Nombre y dirección del punto de recolección.

### 7. Historial de métodos de pago

Se creó la tabla `tbd_user_payment_methods_history` para conservar evidencia de los cambios realizados en los métodos de pago de los usuarios.

Se implementaron triggers para registrar automáticamente las operaciones de inserción, actualización y eliminación, conservando los estados anteriores y posteriores cuando corresponde.

### 8. Reglas de integridad y validaciones

Se incorporaron triggers para proteger la información de las operaciones:

- Evitar modificaciones de importes en pedidos finalizados.
- Impedir cambios en cantidades y precios de productos ya registrados en una compra.
- Evitar que el inventario tenga cantidades negativas.
- Actualizar automáticamente la fecha de modificación de las relaciones entre productos y proveedores.

## Casos de simulación de compra

La práctica contempla diferentes escenarios para comprobar el funcionamiento de los procesos de comercio electrónico:

| Caso | Proceso |
|---|---|
| Caso 1 | Compra exitosa. |
| Caso 2 | Compra a seis meses sin intereses, rechazo del último pago, reclamación y reenvío. |
| Caso 3 | Cancelación parcial, ajuste del pedido y reembolso parcial. |
| Caso 4 | Compra de productos de un mismo proveedor con entrega en punto de recolección. |
| Caso 5 | Escenario de cancelación y reembolso. |

Cada escenario permite trabajar con las operaciones correspondientes y comprobar las relaciones entre las tablas involucradas.

## Documentación técnica

Los siguientes documentos complementan la estructura y el funcionamiento de la base de datos:

- **Diccionario de datos:** [Diccionario de datos (incluye respaldo10)](Practica_04/diccionario_datos_interactivo.html)
- **Modelo entidad-relación:** [Modelo entidad-relación (incluye respaldo10)](Practica_04/modelo_eer_respaldo_1410.html)

## Tecnologías utilizadas

- **MySQL 8.0.46:** Sistema gestor de bases de datos.
- **MySQL Workbench:** Administración, ejecución y verificación de consultas SQL.
- **SQL:** Creación y modificación de estructuras, relaciones, restricciones, triggers y consultas.

## Archivos principales

| Archivo | Descripción |
|---|---|
| `Migracion_Practica04_db_test_7b.sql` | Script de adaptación estructural de la base de datos. |
| `diccionario_datos_db_test_7b_columnas.csv` | Documentación de tablas, columnas, tipos de datos y relaciones. |
| `README.md` | Descripción general de las actividades realizadas en la práctica. |

## Conclusión

La Práctica 04 permitió ampliar y adaptar la base de datos `db_test_7b` para representar diferentes procesos de compra y posventa de una plataforma de comercio electrónico.

Mediante la incorporación de nuevos campos, relaciones, triggers y reglas de integridad, se fortaleció el registro de pagos, devoluciones, cancelaciones, reembolsos y envíos. Además, se mejoró la trazabilidad de los cambios realizados en los métodos de pago, permitiendo conservar evidencia de las operaciones.

Con estas modificaciones, la base de datos cuenta con una estructura preparada para realizar y verificar los distintos escenarios de simulación de compra.


## Documentación técnica actualizada de PRACTICA04

Estos artefactos se generan desde `Practica_04/backups/respaldo10.sql` y documentan el esquema exportado: 26 tablas, 234 columnas y 38 claves foráneas declaradas.

- [Diccionario de datos interactivo](https://isabela747.github.io/PRACTICAS_BDN_240242/Practica_04/diccionario_datos_interactivo.html?utm_source=chatgpt.com): búsqueda por tabla, columna y tipo; incluye nulabilidad, valores predeterminados y claves.
- [Modelo entidad-relación](https://isabela747.github.io/PRACTICAS_BDN_240242/Practica_04/modelo_eer_respaldo_1410.html?utm_source=chatgpt.com): entidades, relaciones FK y detalle de claves.

