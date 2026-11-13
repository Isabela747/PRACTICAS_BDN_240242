#Prácticas de la asignatura de Base de Datos en la Nube
## Ingenieria en Tecnologías de la información e Inovación Digital
### Docente M.T.I Marco A. Ramirez Hernandez

periodo; Septiembre - Diciembre 2026

---

### Tabla de Practicas de la Materia

|No.1 | Nombre | Descripción | Potenciador | Estatus | 
|---|---|---|---|---|
|1.| Metodologia de Evaluacion de la Materia| Transcribir en la libreta y comprender la
metodologia y fechas de evaluacion de la asignatura| 5|
Concluida |
|2.|Conexiones Remotas para Bases de Datos SQL| Crear y Administrar usuario y privilegios de origenes remotos a traves de internet o una redlocal| ??| En progreso| 



#  Práctica 03 – Administración y Documentación de Bases de Datos

**Proyecto de análisis, administración y documentación de una base de datos relacional MySQL.**

##  Índice

1. [Introducción](#-introducción)
2. [Objetivo](#-objetivo)
3. [Tecnologías utilizadas](#-tecnologías-utilizadas)
4. [Estructura del proyecto](#-estructura-del-proyecto)
5. [Características de la base de datos](#-características-de-la-base-de-datos)
6. [Respaldos y versiones](#-respaldos-y-versiones)
7. [Documentación desarrollada](#-documentación-desarrollada)
8. [Uso del proyecto](#-uso-del-proyecto)
9. [Documentación visual](#-documentación-visual)

---

##  Introducción

Esta práctica comprende el análisis, administración y documentación de una base de datos relacional desarrollada en MySQL.

Durante su desarrollo se trabajó con estructuras de tablas, atributos, claves primarias, claves foráneas, restricciones, relaciones y triggers, con el propósito de mantener una base de datos organizada y facilitar el seguimiento de sus operaciones.

También se realizaron respaldos SQL y actualizaciones de la documentación, permitiendo comparar diferentes versiones de la estructura y conservar un historial de sus modificaciones.

## Objetivo

Desarrollar y mantener la documentación técnica de una base de datos relacional, identificando sus componentes estructurales y relaciones mediante herramientas de administración, consultas SQL y respaldos.

## Tecnologías utilizadas

- **MySQL:** sistema gestor de bases de datos relacionales.
- **MySQL Workbench:** administración, consultas y generación de respaldos.
- **SQL:** definición, consulta y administración de estructuras y registros.
- **HTML:** estructura de los documentos interactivos.
- **CSS:** diseño y presentación visual.
- **JavaScript:** funcionalidades de búsqueda, filtros y visualización.
- **Git:** control de versiones.
- **GitHub:** almacenamiento y seguimiento del proyecto.

## Estructura del proyecto

```text
PRACTICAS_BDN_240242/
│
├── diccionario_datos/
│   └── diccionario_datos_interactivo.html
│
├── ExamenPractico_U1/
│
├── Practica_02/
│
└── Practica_03/
    │
    ├── backups/
    ├── queries/
    ├── scripts/
    ├── seeds/
    │
    ├── informe_respaldo_1410.md
    ├── metadatos_respaldo_1410.json
    ├── modelo_eer_respaldo_1410.html
    ├── modelo_eer_respaldo_1410.json
    └── readme.md
```

## Características de la base de datos

La versión documentada mediante `respaldo08.sql` presenta las siguientes características:

| Elemento | Cantidad |
|---|---:|
| Tablas | 25 |
| Columnas | 201 |
| Claves primarias | 25 |
| Claves foráneas | 31 |
| Triggers | 73 |
| Filas identificadas en INSERT | 155,280 |

**Nota:** La cantidad de filas corresponde a las sentencias INSERT identificadas en el respaldo SQL. No representa necesariamente el total de registros existentes en una base restaurada.

### Componentes documentados

- Tablas y columnas.
- Tipos de datos y restricciones.
- Claves primarias y foráneas.
- Relaciones entre entidades.
- Triggers para operaciones de trazabilidad.
- Registros incluidos en los respaldos.

## Respaldos y versiones

Durante el desarrollo se generaron diferentes respaldos para conservar la evolución de la base de datos.

Se consideran especialmente dos versiones:

- **Respaldo 1410:** versión histórica utilizada como referencia para la documentación inicial.
- **Respaldo 08:** versión actual utilizada para actualizar la estructura, las relaciones y las estadísticas.

La documentación permite consultar ambas versiones y comparar los cambios realizados, conservando la información histórica.

##  Documentación desarrollada

### Diccionario de datos

Permite consultar las tablas y sus atributos, incluyendo tipos de datos, restricciones, claves primarias, claves foráneas y cantidad de registros identificados en cada respaldo.

Incorpora estadísticas generales, herramientas de búsqueda y filtros para facilitar la consulta de la información.

### Modelo entidad-relación

Representa visualmente las entidades de la base de datos, sus atributos, claves y relaciones.

Incluye una visualización de las tablas y sus conexiones, así como la posibilidad de consultar la versión histórica y la actual.

##  Uso del proyecto

1. Clonar o descargar el repositorio.
2. Abrir la carpeta `Practica_03`.
3. Consultar los respaldos SQL disponibles dentro de `backups`.
4. Abrir los documentos HTML en un navegador web.
5. Seleccionar la versión que se desea consultar.
6. Utilizar los buscadores, filtros y herramientas de visualización para explorar la estructura de la base de datos.

Para trabajar con una copia de la base de datos, importar el respaldo SQL correspondiente desde MySQL Workbench, utilizando una base de datos de destino adecuada.

##  Documentación visual

Consulta los documentos interactivos del proyecto:

###  Diccionario de datos

Explora las 25 tablas, sus columnas, restricciones, estadísticas y comparación entre versiones.

**[Consultar Diccionario de Datos](https://isabela747.github.io/PRACTICAS_BDN_240242/diccionario_datos/diccionario_datos_interactivo.html)**

###  Modelo entidad-relación

Visualiza las entidades, atributos, claves primarias, claves foráneas y relaciones de la base de datos.

**[Consultar Modelo Entidad-Relación](https://isabela747.github.io/PRACTICAS_BDN_240242/modelo_eer_respaldo_1410.html)**

---

**Proyecto académico – Práctica 03**


