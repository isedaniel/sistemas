---
title: Notas Clase Primera Presentacion
author:
- Daniel
date: 20 de abril
---

# Devoluciones a otros

Los requerimientos funcionales tienen que estar divididos: uno para agregar,
otro para eliminar, otro para actualizar.

La mejor base de datos trabaja como el *verdulero*: cada cosa va en su propia
bolsa, en su propio cajón. (Minuto 40)

# Devoluciones a nosotros

- La lista de requerimientos tiene que estar ordenada por:
  - Lógica
  - Importancia para el usuario

El primero tiene que ser el de cliente. En este caso, alumnos.

// TODO: Ver qué pasa con el resguardo de los datos personales.

// TODO: Dividir los requerimientos funcionales

// TODO: Para la clase que viene: documento SRS 830

// TODO: Factibilidad legal

Para la clase del 27 de abril tenemos que subir el documento.

# Parcial 4 de mayo

Entra todo lo que estamos haciendo.

- Incluye preguntas respecto de cómo solucionar problemas. Qué hacemos nosotros para resolver un problema. Hay que
encontrar los problemas en los requerimientos

- Un multiple choice

- Un verdadero falso

- Un análisis de requerimientos a corregir

# Gráfico de burbuja

Se supone que vimos todos los diagramas, salvo diagrama de flujo de datos.

A la hora de hacer un sistema lo podemos hacer:

- Desarrollo tradicional: diagrama de flujo de datos

- Desarrollo orientado a objetos: casos de uso, diagrama de secuencia

Desde un punto de vista tradicional, hacemos el diagrama de flujo de datos.

Las burbujas son una abstracción de una entidad del mundo real. Generalmente,
algo que existe en el mundo real. Por ejemplo, un módulo de clientes. Que lo
ponemos en una burbuja.

¿De dónde obtenemos los datos del cliente? Del propio cliente. Por lo tanto la
entidad cliente, representada por el rectángulo cliente, proporciona datos al
módulo de cliente, representado por una burbuja. Ese es el flujo de datos: de
la entidad al módulo.

Una vez que tenemos los datos, los guardamos: en una tabla, de una base de
datos. La tabla se representa con dos líneas paralelas. Una flecha va del
módulo a la tabla.

La entidad manda Datos de cliente al módulo. El módulo tiene una flecha que va
a la tabla, cuando guardo y consulto, y tiene una flecha que vuelve, que
representa la corrección. Si la tacho con una cruz, a la flecha que va y viene,
también implica eliminación. En este caso, el cliente se puede ingresar,
consultar, actualizar y eliminación. Flecha que va y viene <-x-> con cruz en el
medio.

Si tenemos otro módulo, por ejemplo el módulo Productos, módulo número 2, va en
una burbuja. Los productos se pueden dar de alta, de baja, modificar y
consultar: Flecha ida y vuelta con cruz. Quién me da los datos? Nadie, los
tengo que obtener yo. Entonces, no hay entidad que suministre los datos.

Tenemos la burbuja 3, el módulo de Ventas. De dónde toma sus datos. De
Productos y de Clientes. De dónde salen. De las tablas de la base de datos. Qué
datos viajan. En el caso de la boleta, lo que identifica al cliente. Por
ejemplo, el DNI, entonces en la flecha que va y viene escribimos DNI. En el
caso del producto, el código de barras. No siempre tenemos que incluir todos
los datos.

Qué sale de ventas. Una factura. Es una entidad, etnocnes va en rectángulo. La
factura lleva sus datos, por lo tanto la flecha dice "Datos Factura". Se lo
pone con un color distinto para que sepa que es un documento de salida.

Este diagrama representa el flujo de datos dentro del sistema. Representa lo
mismo que el diagrama de casos de uso.

Requisitos: todas las entidades tienen que estar conectadas. Las burbujas no se
conectan entre sí (por lo general, salvo que los módulos usen información en
memoria sin pasar por bases de datos). Pero por lo general, van a base de datos
y de ahí lo toma otro módulo.

Si hay una burbuja que hace muchas cosas, hay que dividirla en más burbujas.
Esto se denomina *explotar* una burbuja. Se hace porque no estamos cumpliendo
con el acomplamiento y la cohesión, dos reglas básicas.

- Acoplamiento: cada módulo dependa lo menos posible de otros. Cada uno lo más
  independiente posible. Que cada uno se modifique por separado.

- Cohesión: que cada uno haga una sola cosa.

Siempre recordar BACA: bajo acomplamiento, cohesión alta. (Note: filosofía
UNIX).

