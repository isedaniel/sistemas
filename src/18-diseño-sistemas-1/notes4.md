---
title: Notas Clase Primera Presentacion
author:
- Daniel
date: 20 de abril
---

# Devoluciones a otros

Los requerimientos funcionales tienen que estar divididos: uno para agregar,
otro para eliminar, otro para actualizar.

La mejor base de datos trabaja como el *verdulero*

# Devoluciones a nosotros

- La lista de requerimientos tiene que estar ordenada por:
  - Lógica
  - Importancia para el usuario

El primero tiene que ser el de cliente. En este caso, alumnos.

// TODO: Ver qué pasa con el resguardo de los datos personales.

// TODO: Dividir los requerimientos funcionales

// TODO: Para la clase que viene: documento SRS 830

Estudio de factibilidad legal.

Para la clase que viene hay que subir.

Parcial el 4 de mayo. Entra todo lo que estamos haciendo. Incluye preguntas
respecto de cómo solucionar problemas. Qué hacemos nosotros para resolver un
problema. Hay que encontrar los problemas en los requerimientos. En eso
consiste el primer parcial. Verdadero o falso, preguntas para desarrollar,
análisis de archivos.

# Gráfico de burbuja

Nombre, numeramos. Entidades con un rectángulo. El ciente le proporciona al
sistema sus datos.

Metemos entonces: rectángulo de Cliente, va a óvalo Clientes. Tenemos una
flecha que va del rectángulo al óvalo clientes. Esta flecha muestra cómo
circulan los datos por el sistema. Una vez que tenemos los datos, hay que
guardarlos.

Los guardamos en una *TABLA* de una base de datos. Se lo representa con líneas
paralelas. Con el nombre de la entidad, en este caso Clientes. El alta del
cliente se representa con flecha de burbuja hacia la tabla de almacenamiento.

En una flecha que va y viene del óvalo, tengo una cruz. Ahí represento alta,
actualización y baja.

Supongamos que nuestra empresa vende productos. Tenemos la burbuja 2 que son
los productos, tenemos una tabla que se llama también Productos. Como estos se
pueden dar de alta, baja, consulta y modificación, tenemos flecha que va,
vuelve y tiene cruz por arriba. Quién me da los datos? Nadie.

Tenemos una tercer burbuja, ventas 3, cómo tenemos las ventas? Tomamos datos de
cliente, que es quien compra, y datos de productos, que son los productos que
compra. Tenemos flechas ida y vuelta a las tablas, respectivamente clientes y
productos. Como al cliente lo identificamos por DNI, como `foreign key`, y
código de producto, también como `FK`, ponemos `DNI` y `cod_prod` como
características de la flecha.

¿Qué sale del óvalo? Una factura, que sería un rectángulo.

Esto es más o menos lo mismo que el diagrama de casos de uso. En casos de uso
cliente será una persona dibujada, las flechas serán `extend` o `include`. Pero
representa lo mismo.

No puede haber nada suelto. TODO tiene que estar conectado. Ese es el DFD.
Diagrama de Flujo de Datos.

# Acomplamiento y cohesión

BACA con b larga. Significa: Bajo Acomplamiento Cohesión Alta.

Bajo Acomplamiento es que cada módulo sea lo más independiente posible de los
demás. Si un módulo depende de otros cuatro, tenemos un acomplamiento alto. Hay
que hacer cada módulo lo más independiente posible. De manera tal que si
modifico uno, no tenga que modificar otros.

Cohesión alta significa que cada módulo haga una sola cosa.

(Note: es la filosofía UNIX, módulos que hagan una sola cosa cada uno).

Esto es la base para un sistema bien diseñado.

# Diagrama de flujo de datos - Nivel 0

DFD de nivel 1: Diagrama de sistema.

Una vez que tenemos el de nivel 1, hacemos el de nivel 0: el DFD de nivel 0.
Se llama Diagrama de Contexto. El diagrama de contexto es una sola burbuja,
grande, que representa a todo el sistema.

Por ejemplo, una sola burbuja que dice "sistema de ventas", solo se pone
aquellas cosas que son externas al sistema, en este caso, la entidad cliente,
si hubiera entidad proveedor, entidad proveedor. Representamos con flechas el
flujo de datos desde las *entidades* al sistema.

En definitiva, el sistema como una caja negra.

# DFD

Armando el DER nos damos cuenta que nos faltan o sobran almacenamientos,
entonces volvemos al DFD y actualizamos.

