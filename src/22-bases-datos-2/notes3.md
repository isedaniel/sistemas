---
title: Notas de Clase, Bases de Datos 2
date: 18 de abril
---

# Introducción

Hasta ahora vimos cómo crear restricciones para cuidar la integridad de nuestra
base de datos. Con `PRIMARY KEY`, `FOREIGN KEY`, etc. A medida que crece la
base, tenemos cada vez más datos. El Hardware es limitado y podemos tener
cuellos de botella de performance. Hoy vamos a ver cómo trabajamos con ese
problema.

Cuando ponemos restricciones, el motor hace índices. Por ejemplo, para validar
una `PK` o `FK`, tiene que checkear en todos los registros. Para eso son los
_índices_.

Para mejorar el desempeño hay que ver que tengamos _querys bien armados_ y
_hardware adecuado_.

# Hardware

Cuando levantamos el servicio, alocamos el motor en memoria, direcciones a los
data files y procesos para lidiar con esos data files. Los discos son el
componente más lento en una DB. Si cada consulta va a disco, la DB va a ser más
lenta. No podemos levantar toda la DB a memoria.

# Optimización de consultas

Hay _querys_ más lentas y _querys_ más performantes. Hay que cuidar la
performance del motor de la base de datos adoptando buenas prácticas.

# Índice

¿Cuándo creamos un índice? 
- Cuando un campo (columna) es `FOREIGN KEY`.
- Cuando una columna se usa con frecuencia para búsquedas.
- Cuando el campo contiene un gran número de valores distintos.
- Cuando la columna se actualiza poco (el índice cambia poco).

Si tengo pocos registros, no conviene usar un índice. Usa directamente TABLE
SCAN.

# Índice Clustered

Tenemos que entender los _tipos de índices_.

Índice Clustered: es la tabla. Ordena la tabla de menor a mayor (o viceversa)
siguiendo la clave primaria `PK`.

Una clave primaria necesariamente genera un _índice clustered_. Es,
simplemente, la tabla ordenada de una determinada manera.

Solo puede haber **un** _índice clustered_.

# Índice Non Clustered

A diferencia del clustered, no es la tabla ordenada de una determinada manera.

Es un objeto separado, formado por punteros a los registros de la tabla. Por
ello puede haber más de uno _non clustered_.

**Cardinalidad**. Cantidad de datos distintos que tiene una tabla. Un campo que
asume propios valores tiene poca cardinalidad. El campo nombre tiene alta
cardinalidad: hay muchos nombres distintos.

El órden más eficiente para generar un índice es el de mayor cardinalidad al de
menor cardinalidad.

# Plan de acción

Cada índice genera un plan de acción. Que consiste en los pasos óptimos para
responder a una consulta en tiempo y forma.

El motor trabaja con bloques. Si tenemos bloques contiguos, es más fácil. Para
eso el RDBMS acomoda los bloques para que sea más sencillo de trabajar.

Los índices pueden hacerse sobre una base de datos ya creada. Es importante
hacerlos fuera del tiempo de uso de la DB, porque bloquea las tablas que está
usando.

# Estadísticas

`SET STATISTICS IO {ON|OFF}`
Muestra información sobre la actividad del disco.

`SET STATISTICS TIME {ON|OFF}`
Muestra el tiempo en milisegundos para analizar, compilar y ejecutar una
declaración.

Con el tiempo se va notado cuando no generamos las estadísticas.

# Operaciones TABLE SCAN

Operaciones en que el RDBMS tiene que leer toda la tabla. El plan de ejecución
dice cómo va hacer las cosas. Si le pido toda la tabla, no tiene otra que hacer
un TABLE SCAN. Que implica leer toda la tabla.

Se usa también cuando la tabla es muy chica. No tiene sentido usar índices en
ese caso.

# Operaciones CLUSTERED INDEX SCAN

En lugar de recorrer el índice, recorre una tabla. Recordar, índice CLUSTERED
es una tabla ordenada de determinada manera.

Se da cuando el optimizador elige mal. Es raro que el optimizador use esta
opción.

# Operaciones CLUSTERED INDEX SEEK

Busca el dato efectivamente en el índice CLUSTERED. Si usa esto podemos estar
contentos.

Usa este cuando hay muchos registros.

# Operaciones INDEX SEEK

Similar a CLUSTERED INDEX SEEK. Pero usa NON CLUSTERED. Determinamos
explícitamente el objeto en que se guarda el índice NON CLUSTERED. (Recordar
que no es la tabla ordenada de cierta forma, porque no es un índice CLUSTERED).

# Operaciones INDEXSCAN

Generalmente pasa en tablas muy grandes. Es preferible a un Table Scan. Leer un
índice es más sencillo que leer una tabla.

Es un síntoma de mal uso de un índice.

# Diferencia SCAN y SEEK

SCAN va uno por uno. SEEK va directo al registro que quiero.

# Bookmark Lookup

SQL Server necesita saltar del puntero, desde el índice, a la página donde está
el dato. Pasa siempre que tenemos un Non Clustered. Evitar traer datos que no
están en el índice. (Note: No es la función de un índice ir a buscar datos?).

Puedo tener el índice como _mini tabla_. (Note: ahí ya no sería un índice, sino
más como una _view_, no?).

# Operaciones JOIN

Cuando uno conecta distintas tablas. Se puede hacer de distintas formas.
Depende de las tablas. Esto es interno. Es para que sepamos qué hace el
optimizador.

- Nested Loop Join: el más simple. Cuando tenemos pocos registros. O
  CrossJoins.

- Merge Join: cuando tenemos JOIN grandes.

- Hash Join: útil para grandes conjuntos de datos. Se usa en Datawarehouses.
  Cuando tenemos grandes volúmenes de datos.
