---
title: Notas Tercera Clase
author:
- Daniel
date: 18 de abril
---

# Intepretación y Optimización de consultas

Cuidar el performance del motor de la base de datos adoptando buenas prácticas
para administrar la base de datos. 

# Índice

- ¿Cuándo crearlo? Cuando la columna es `FOREIGN KEY`. 

- Cuando se usa con frecuencia

- Cuando tiene gran número de valores distintos

# Tipos de índices

- Clustered

Define el orden para el almacenamiento de datos en la tabla. Es la tabla
ordenada de una determinada manera. Solo puede haber *un* índice clustered.
En SQL Server cuando creamos una llave primaria, hacemos automáticamente un
índice agrupado por esa columna.

```sql
CREATE CLUSTERED INDEX IX_tblStudent_Gender_Score
    ON student(gender ASC, total_score DESC)
```

- Índice *non Clustered*

El índice clustered es la tabla ordenada de una determinada manera. Por lo
tanto el índice no clustered será un objeto separado. El texto está en un lugar
y el índice en otro. Permite tener más de un índice, a diferencia de lo que
sucede con el *clustered*.

# Plan de ejecución

Cada consulta se ejecuta como una serie de operaciones. El conjunto de pasos se
denomina *plan de ejecución*. Para medir el rendimiento tenemos:

```sql
SET STATISTICS IO ON;

SET STATISTICS TIME ON;
```

`IO` muestra información de actividad de disco, generado por declaraciones
*Transact-SQL*. `TIME` muestra el tiempo para analizar, compilar y ejecutar
cada declaración.

# Operación CLUSTERED INDEX SEEK

Implica que el motor está usando el índice clustered de la tabla, lo que es
útil para una tabla con una gran cantidad de datos.

# Operaciones INDEX SEEK

Similar pero usa un índice Non Clustered

```sql
CREATE INDEX [IDX_Campo3] ON [dbo].[TablaPreba3](Campo2, Campo3) ON [PRIMARY]

SELECT CAMPO2 FROM TablaPrueba3 WHERE Campo2 = 2 and Campo3 = 2
```

# INDEXSCAN

Leer del primer registro al último antes que ir a la tabla. Pasa con tablas muy
grandes. Es preferible a un `TableScan` ya que leer un índice es más simple que
una tabla.

Es síntoma de mal uso del índice. Puede ser mejor revisar la *query* o el
índice.

Puede ser que el motor haya seleccionado esta como mejor operación. Es común un
IndexScan en un `JOIN` o en un `ORDER BY` o `GROUP BY`.

# Operación Bookmark Lookup

Es un salto de puntero desde el índice a a la tabla, para recuperar los datos.
Esto sucede *siempre* con un índice *Non Clustered* (Note(dan): Recordar que el
Non Clustered no está en la tabla). Podemos evitar el lookup si no solicitamos
datos adicionales. (Note(dan): si necesitamos muchos *lookups* quizá está mal
hecha la tabla).

# Operaciones JOIN

Hay tres: Nested Loop Join, Merge Join y Hash Join.

Es unir distintas tablas en una consulta, generalmente para completar la
información de un registro en una base de datos *normalizada*.

- NestedLoopJoin:

El algoritmo más simple, se usa cuando la cantidad de registros es baja y con
ciertos crossjoins.

- MergeJoin:

Se usa cuando la cantidad de registros es grande y están ordenados. En algunos
casos se usa aunque los datos no estén ordenados, ya que es más rápido ordenar
y hacer MergeJoin que hacer un NestedLoop.

- HashJoin:

Útil para grande conjuntos de datos, como en *Data Warehouses*. Paralelizable y
escalable. Se usa para tablas relacionadas sin índice. La presencia de este
tipo de operaciones puede significar mal manejo de índices. Consume mucha
memoria y hay un límite para la cantidad de operaciones *Hash* que se pueden
hacer en simultáneo. 

Note(dan): el profe, desde su experiencia, recuerda: `No hay C-z. Administren
con juicio`.

# Agregación

Agrupar un conjunto grande de datos en un conjunto más chico.

- Stream Aggregate

Ocurre cuando se llama `MIN`, `COUNT`, `MAX`, `SUM`. 

