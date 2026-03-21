---
title: Notas Primera Clase Bases de Datos 2
author:
- Daniel
date: 21/3/26
---

# Instalar SQL Server Express

Hay que descargar e instalar SQL Server Express.

Hay una guía. Probar con `docker`.

En la segunda parte de la materia usamos `mongodb`,
para trabajar con `NoSQL`.

# Condiciones

Primero vemos SQL, segunda parte NOSQL.

Hay laboratorios para hacer, no son obligatorios pero son recomendados,
porque dan lo más importante: experiencia.

# Integridad de datos

Refiere a la corrección de los datos.

Garantiza que los datos están a salvo de fuerzas externas.

Una de las funciones de la BD relacional es preservar la integridad de los
datos.

# Tipos de integridad

1. Integridad Física

Protección de los datos como están almacenados y son extraídos.
Ejemplo: Defensa de catástrofes, hackers, apagones.
Los motores nos dan mecanismos para resguardar este tipo de integridad.
Con _backups_, _backups de logs_, _DRS_.

Activar un DRS es activar un centro de cómputos paralelo,
donde las bases de datos se replican constantemente,
de fomra sincrónica o asincrónica.
Frente a una contingencia se activa el DRS.

2. Integridad Lógica

Protección del error humano o un actor malicioso (__hacker__), pero de una
forma distinta a la integridad física.

Ejemplo: en la tabla de clientes no guardamos los nombres de las localidades,
sino un _ID_, que funciona como _foreign key_, que relaciona con una tabla de 
localidades. (Esto lo vimos en normalización).

# Integridad lógica de datos

Cuando modificamos datos con sentencias `INSERT`, `DELETE`, `UPDATE`,
la integridad de datos puede perderse.
Por ejemplo, añadiendo o modificando datos no válidos.
Además, los cambios pueden perderse por un fallo en el suministro eléctrico.

Tipos de restricciones lógicas:

* Restricciones por PRIMARY KEY

* Restricciones referenciales

* Restricciones de dominio

* Restricciones Default

* Restricciones Not Null

* Restricciones Unique

* Control de transacción TCL 
  - Si se modifica un registro, qué datos queremos guardar de esa transacción

* Disparadores

Esto no solo depende del motor de base de datos (RDBMS).
