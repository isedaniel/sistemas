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

- ¿Cuándo creamos un índice? Cuando la columna es `FOREIGN KEY`.

(00:11:00)
