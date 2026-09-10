---
title: Notas de clase, Diseño de Sistemas I
date: 11 de mayo
---

# Devolución del parcial

- Lenguaje informal baja puntos. Tenemos que ser claros. Utilizar argumentos
  técnicos.
- Documentación no es una técnica. Recabar documentación es una técnica.

Cómo me doy cuenta viendo un DFD si hay bajo acomplamiento cohesión alta. Alta
cohesión implica que cada burbuja hace una sola cosa.
Y bajo acoplamiento: que no haya una burbuja que dependa directamente de otra.
Que no hubiera una flecha entre burbujas. Si o si pasar por almacenamiento.

# Nueva entrega

Hay que profundizar en el SRS. Corregirlo. Incorporar PERT y Gantt. Y
factibilidad. DESPUÉS que el profe corrija. Eliminamos la entrega que está.
Subimos la nueva.

# Diagrama de Entidad Relación

Es el diseño en papel de la base de datos.

Siempre arrancamos por el cliente. Porque si no tenemos clientes, la empresa no
tiene sentido.

Una entidad se puede representar con un rectángulo. Se pone el nombre de la
entidad arriba. En el cuerpo se incluyen los atributos. El atributo principal
va con otro color.

O como un rectángulo como en el DFD. Cada atributo como una burbujita a la
vuelta del rectángulo. A la clave primaria se le pone una burbujita con otro
color.

(Prefiero un generador ER diagram.)

# Vemos multivaluados

Por ejemplo, el teléfono. Tenemos varios teléfonos. Entonces, hacemos otra
tabla para guardar varios teléfonos.

# Vemos derivables

Ejemplo, guardamos fecha de nacimiento y edad. Es redundante. Entonces
eliminamos un campo.

# Regla del verdulero

La papa va en la bolsa de papa. La cebolla va a en la bolsa de cebolla. La
manzana en el cajón de la manzana.

**Cada cosa está en un lugar distinto. No se mezclan jamás.**

Esa es la regla que tenemos que tener en mente para construir nuestras DB.

# Entrega 3

DFD o Diagrama de Casos de Uso. Y DER.

