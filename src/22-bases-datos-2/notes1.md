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

Hay laboratorios para hacer, no son obligatorios pero son recomendables,
porque dan lo más importante: experiencia.

# Integridad de datos

Refiere a la corrección de los datos.
Que va a ser completa y fiable.

Garantiza que los datos estén a salvo de fuerzas externas.

Una de las funciones de la BD relacional es preservar la integridad de los
datos.

No es solo que el ingreso de datos sea correcto.
También es importante que se preserve.

# Tipos de integridad de datos

1. Integridad Física de los datos

Protección de los datos tal como están almacenados y son extraídos.
Ejemplo: Defensa frente a catástrofes, hackers, apagones.
Los motores nos dan mecanismos para resguardar este tipo de integridad.
Con _backups_, _backups de logs_, _DRS_.

Activar un DRS es activar un centro de cómputos paralelo,
donde las bases de datos se replican constantemente,
de forma sincrónica o asincrónica.
Frente a una contingencia se activa el DRS.

Las políticas concretas dependen tanto de las necesidades como de los recursos
con que cuenta la organización.

2. Integridad Lógica de los datos

Protección del error humano o de un actor malicioso (**hacker**), de una
forma distinta a la integridad física.

Consiste en establecer reglas para que los datos sean confiables
y la integridad de la base de datos se preserve en el tiempo.

Ejemplo: en la tabla Clientes, el campo localidad tiene una propiedad
`NOT NULL`, que impide que guardemos un cliente sin especificar su localidad.

# Integridad lógica de datos

Cuando modificamos datos con sentencias `INSERT`, `DELETE`, `UPDATE`,
la integridad de datos puede perderse.
Por ejemplo, añadiendo o modificando datos no válidos.
Además, los cambios pueden perderse por un fallo en el suministro eléctrico.

Para cada `COMMIT`, si las restricciones se cumplen, el `COMMIT` se hace
efectivo. Si no, se hace un `FALLBACK` a la situación anterior.

Para eso establecemos restricciones lógicas:

* Restricciones por `PRIMARY KEY`

Tenemos un `ID` único para cada registro.

* Restricciones referenciales

No podemos guardar un `ID` que no exista.

* Restricciones de dominio

Un valor puede acotarse a un rango.

* Restricciones Default

Tenemos un valor por default para evitar valores `NULL`.

* Restricciones `NOT NULL`

No admitimos `commits` con valores `NULL`.

* Restricciones `UNIQUE`

Solo se permite un valor por _campo_. No se puede repetir en otro _registro_.

* Control de transacción (comando `TCL`)

Si se modifica un registro, qué datos queremos guardar de esa transacción.

* Disparadores `TRIGGERS`

Se dispara ante un mensaje para cuidar la integridad.
Cuando se hace un `commit`, qué _metadatos_ se guardan (_logs_).

Esto no solo depende del motor de base de datos (RDBMS).

# Restricción `PRIMARY KEY`

Identifica una o más columnas como _clave principal_.
Se permite solo una `PRIMARY KEY` por tabla.
Esto significa que el _campo_ debe ser único para cada _registro_.
Además, la `PRIMARY KEY` no puede ser `NULL`.

```sql
CREATE TABLE History (
    Numero_Fac int identity(1000, 1) NOT NULL,
    Fecha_Fac datetime,
    constraint pk_historico primary key (Numero_Fac)
)
```

Establezco una `CONSTRAINT`, con un _nombre_, para que, en el momento que
veamos el error, podamos reconocer cuál es la _constraint_ que no estamos
cumpliendo.

# Restricciones referenciales

Restricciones por `FOREIGN KEY`, para garantizar integridad entre columnas,
de la misma o de distintas tablas.

* Deben referenciar una `PRIMARY KEY`

* El usuario que la arma debe tener _permiso_ `REFERENCES`

# Restrición de dominio

Establecemos un rango para un campo.

```sql
CHECK ColumnaD > 10 AND ColumnaD < 50
```

# Restricciones `DEFAULT`

Establecemos un valor predeterminado para cuando no se proporciona un dato:

```sql
ALTER TABLE pedidos ALTER fecha SET DEFAULT '2002-01-01'
```

# Restricciones `NOT NULL`

Al crear un campo o tabla, requiero que se establezca un dato:
no puedo cargar un registro sin ese dato.

# Restricciones `UNIQUE`

Asegurar que el valor de un campo/columna es único.
La restricción `UNIQUE` presupone una política para generar `ID`.

# Restricción diparador `TRIGGER`

Es un tipo de _Stored Procedure_, que se ejecuta cuando se cumple una
condición.

Ejemplo: Cuando se modifica/agrega un registro. Cuando se modifica una tabla.

```sql
CREATE TRIGGER nombre ON tabla
    FOR <insert/update/delete>
    AS
        <sentencias>
```

No es performante, por lo que se trata de evitar.

# Clases

Horario: 9 a 12.

