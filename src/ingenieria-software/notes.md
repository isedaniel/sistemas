# Notas de Clase, Ingeniería de Software.

Aquí vamos a ir tomando las notas de _todas_ las clases.

# Primera Clase

# Segunda Clase, 22 de Agosto

## Metodologías Ágiles

Vamos a revisar 5 metodologías ágiles: SCRUM, KANBAN, SCRUMBAN, LEAN y XP.

Qué es AGILE. Es el nombre genérico que reciben.

Las metodologías ágiles tienen mucho tiempo. Por ejemplo, Kanban es de 1940,
proviene de Toyota.

Qué pasa generalmente. La mayoría suele declarar que usa SCRUM. Ahondando, se
suele ver que no emplean una metodología ágil, sino que mezclan varias. Cada una
tiene sus particularidades. Por ejemplo, usar un tablero (proviene de KANBAN) en
SCRUM. La combinación de metodologías tiene que estar bien pensada.

## Filosofía Agile

Filosofía de trabajo asociada con el desarrollo de software, desde la década
del 2000. Hay más de 50 metodologías ágiles. Un punto fuerte es el _trabajo en
equipo_. Algunas permiten aplicarlas individualmente, pero en general se pone
el foco en el trabajo en equipo. Además, tienen en común el uso de _iteraciones_,
que son ciclos de trabajo corto.

Es decir:
- Trabajo en equipo
- De forma iterativa
- E incremental (vamos entregando un pedacito de lo que nos están pidiendo)

Los equipos tiene 2 características:
- Son equipos multifuncionales, con integrantes especializados en cosas
diversas.
- Son equipos _auto-organizados_, cada uno decide qué es lo que va a hacer, no
hay jefes.

La filosofía nace en el 2001. Un grupo de 17 representantes se reune en Utah.
Como resultado, desarrollaron el "Manifiesto Ágil". En el manifiesto se explican
los principios de las metodologías ágiles. La aparición del manifiesto en el
2001 no implica que no existieran antes. Es un conjunto de principios.

Son 12 principios agrupados en 4 valores fundamentales:
1. Los individuos y su interacción está por encima de los procesos y las
herramientas.
2. Un producto funcionando por encima de la documentación exhaustiva. Solo se
documenta lo importante. Es un error decir que _no_ se documenta.
3. La colaboración con el cliente por encima de la negociación contractual. El
cliente participa del desarrollo del _software_. El cliente no desaparece luego
del diagnóstico, sino que forma parte de todo.
4. La respuesta al cambio por encima del seguimiento a un plan. Nos tienen que
permitir adaptar rápidamente cambios que surjan durante el proceso de
desarrollo. Esto es difícil en los métodos tradicionales como cascada.

Luego están los 12 principios:
1. Satisfacción del cliente gracias a la entrega continua del producto.
2. Trabajadores motivados y entorno de confianza.
3. Líderes y trabajadores colaborando juntos.
4. Comunicación cara a cara y reuniones periódicas entre el equipo y el cliente.
5. Equipos _auto-organizados_.
6. Desarrollo evolutivo y flexible. Realizar cambios necesarios según las
condiciones del proyecto.
7. Entregas de partes del proyecto en bloques de tiempo fijo y fases
productivas.
8. Excelencia técnica y buen diseño.
9. Simplicidad y planificación.
10. Desarrollo sostenible.
11. Medir progreso con indicadores específicos.
12. Inspeccionar y adaptar a las particularidades que surjan.

Profundizamos algunas. La satisfacción del cliente va a estar garantizada,
porque va dando _feedback_ en cada etapa de desarrollo.

Trabajadores motivados y entorno de confianza. Cómo se logra.

## Ventaja de la gestión ágil

1. Mejora la calidad del producto
2. Aumenta la satisfacción del cliente
3. El equipo de trabajo está más motivado
4. Promueve el trabajo colaborativo
5. Permite el uso de métricas relevantes
6. Reduce los costos. Trabajamos más rápido y hay menor desperdicio.
7. Mayor capacidad de adaptación a los cambios

Hasta aquí vimos la filosofía de trabajo. Ahora deberíamos comprender de qué se
trata la agilidad. No es solo hacer todo más rápido.

Cuando vamos a hacer un proyecto, entramos en dos categorías:
1. Producto repetitivo, siempre hacemos lo mismo. Nuestra empresa vende un
_software_ particular. Por ejemplo, desarrollamos _Tango_. Siempre desarrollamos
el mismo producto, que vamos mejorando.
2. Producto único, un cliente pide una cosa distinta y tenemos que desarrollar
eso.

Cuando hacemos un producto repetitivo podemos aprender del pasado. A medida que
pasa el tiempo pensamos. Cómo nos fue. Cuánto tardamos. Cómo podemos mejorar el
proceso. Cómo podemos reducir tiempos. Cómo reducimos costos. Esto se piensa
con el triágnulo de calidad fija, que tiene por aristas alcance, tiempo y costo.

El problema aparece cuando queremos aplicar lo mismo a un producto nuevo. Los
problemas:
- No tenemos una idea clara de lo que vamos a hacer
- No sabemos qué cambios necesitaremos
- Pueden pasar imprevistos

El triángulo de calidad fija ya no es un triángulo de calidad fija.

Qué plantean las metodologías tradicionales. Tenemos una fecha de inicio y una
fecha de finalización. Qué hacemos. Elicitación, análisis, diseño, construcción
y puesta en marcha. Cuando llegamos al final el cliente puede no estar conforme.
Por qué. Porque hubo atrasos, porque no se ajusta a lo que quería, porque no
está en el presupuesto que esperaba. Los atrasos muchas veces llevan a las
culpas y nadie asume la responsabilidad. El responsable termina siendo el que
está más abajo.

Qué plantean las metodologías ágiles. Visualizamos un proyecto pero sin detallarlo.
Nos interesa el qué, _no_ el cómo. Segundo paso, encontramos lo más importante.
Por dónde tenemos que empezar. Una vez detectado, detallamos ese pedacito, lo
construimos, lo ponemos en funcionamiento, se lo mostramos al cliente y volvemos
a encontrar _el siguiente paso más importante_.

Qué logramos. 1 de 3 cosas. En el tiempo estipulado, con el dinero estipulado,
entregamos algo mejor que lo que pide. Es decir, en el triángulo de calidad
fijamos tiempo y costo. Tratamos de encontrar el mejor alcance posible.
Segunda cosa, entregamos lo que quería. Coincide con las tradicionales pero es
casualidad. La tercera y peor, que entreguemos menos de lo que el cliente pide.
Como el cliente está involucrado en todo el proceso, no se va a llevar una
sorpresa. Participa del proceso.

Ya sabemos qué es trabajar con agilidad: hacer lo mejor posible, con tiempo
definido y costo establecido. Fijamos esas dos aristas del triángulo de la
calidad.

Agilidad es:
- Hacer lo mejor posible con tiempo y costo fijo
- Trabajar en equipo motivado y tratar de hacer más de lo que se puede
- Entregar productos funcionales desde el primer momento

## Cómo empezar un proyecto Agile

Existe una técnica que se llama _Agile Inception_. Qué es. La fase inicial para
alinear al equipo. Se define visión, objetivos y alcance. Esencial para empezar
de forma clara.

Segundo, definimos el por qué. Por qué estamos aquí. A quién benificia el
proyecto. Cómo lo vamos a medir.

Para eso hacemos dos cosas.
- Elevator Pitch. Es una breve presentación del proyecto, de 30 segundos, que
debe ser claro, inspirador y convincente. Tiene 3 etapas. La primera es una
pregunta motivadora. La segunda es una descripción del proyecto o lo que
hacemos. La tercera es una llamada a la acción: pedirle a alguien que desarrolle
una cosa. Ejemplo, las publicidades de OpenEnglish. Empieza con una pregunta
motivadora. ¿Aprender inglés después de los 30 es difícil? Después explica el
producto. Termina una llamada al acción: si te anotas con este código, tenemos
este descuento.
  - Pregunta
  - Descripción del producto
  - Llamada a la acción
- Caja del producto. Lo otro que hacemos. Imaginamos el producto como si se
promocionara en una revista. Visualizar beneficios, atributos clave, valor. En
lugar de una plublicidad televisiva, una publicidad gráfica.

Lo tercero que definimos en la primera reunión: delimitar lo que no incluye el
proyecto. Delimitamos desde el primer momento cuál es el alcance. Que el cliente
y el equipo entienda hacia dónde vamos.

Luego, involucramos a los "vecinos". Actores involucrados, recursos con que
contamos, qué restricciones hay. Estos actores incluye el equipo de trabajo,
_stakeholders_, los que ponen la plata, cuál es el presupuesto y el tiempo.

_Inception_ permite empezar con claridad el proyecto. Se define lo esencial
antes de empezar a desarrollar. Se reduce las chances de que las cosas salgan
mal.

## SCRUM

Qué es un SCRUM. Una posición específica en un partido de Rugby. En la que
disputamos la pelota. El objetivo es _entregar un producto lo más rápido
posible._ La calidad del producto está en segundo lugar, lo más importante es el
tiempo. Es decir, fijamos costo y fijamos alcance. Tratamos de minimizar tiempo.

Ideal para: necesidad de obtener resultados pronto, donde innovación,
competitividad, flexibilidad y productividad son fundamentales. Para entornos
complejos, pero no tanto. Si hay mucha complejidad hay otras metodologías que
son mejores.

Roles. Hay tres.
- Product Owner
- Scrum Master
- Team

Tiene 4 tipos de reuniones posibles.
- Sprint planning, qué vamos a entregar en la próxima iteración.
- Sprint review, cómo venimos
- Sprint retrospective, cómo fue la iteración
- Daily, 15 minutos, cada uno cuenta qué hizo, qué hace hoy y qué necesita

4 artefactos.
- Producto backlog, la lista de los requerimientos funcionales
- Sprint backlong, de esa lista, cuáles hacemos en este _sprint_.
- Burndown charts es un gráfico para medir el avance del proyecto
- User stories, los requerimientos funcionales en esta metodología, se escriben
distinto.

De acuerdo a los roles, quién es el más importante. El Product Owner.

Nos una metodología flexible. Puesto que los _sprint_ son fijos. Una tarea que
aparece en el medio se incorpora más adelante. Una vez que un _sprint_ comienza
no hay espacio para cambios.

Qué cosas pueden pasar. Una empresa que trabaja con SCRUM no siempre está
conformada de la misma manera. En un proyecto ocupamos unos roles y en el
próximo proyecto cambiamos. Todas las decisiones se toman en equipo y se puede
probar personas ocupando distintos roles. Sin embargo, cuando arrancamos un
proyecto con unos roles, estos se mantienen hasta el final.

## KANBAN

## SCRUMBAN

## LEAN

## XP
