---
title: Notas primera clase
author:
- Daniel
date: 16 de marzo
---

# Origenes de un sistema

Diseño de un sistema es lidiar con algo que puede o no existir. Y tenemos que
lidiar con eso.

¿Dónde nace un sistema? 

Hay dos caminos posibles:

- Alguien nos solicita porque *cree* que necesita un sistema.

- Podemos diseñar un sistema porque vemos una oportunidad de negocio que
  podemos aprovechar.

# Primer paso de un diseño: entrevista

Un cliente nos llama porque necesita un sistema. ¿Qué hacemos?

Primera entrevista con el cliente, tomamos un cafe, escuchamos la idea.
Todo se cobra. Tratamos de indagar en la necesidad de esa persona. Ver si
necesita un sistema, capaz existe otra solución, que no requiere diseñar un
sistema nuevo.

Luego de esa entrevista, hacemos un informe, donde ponemos por escrito todo lo
que hemos hablado con esta persona. La volvemos a llamar y nos encontramos.
Charlamos sobre el **primer informe**. Llevamos dos copias, nos fijamos si está
de acuerdo, si está de acuerdo, lo firma. Nos quedamos con una copia y la otra
se la queda el cliente.

Pueden pasar dos cosas:

- Esto es lo que hablamos, lo firmo.

- Me olvide de contarte esto, lo otro, reelaboramos el informe y volvemos a
  elaborar.

¿Por qué hacemos esto? En el informe escribimos las necesidades, lo que nos
dice el cliente, la descripción *general* del sistema que quiere. Es para tener
un archivo al que remitirnos por si el cliente después cambia de opinión. Son
un *resguardo legal* de lo que vamos trabajando. El primero no es tan
importante, pero es un resguardo desde el principio. También es una forma de
mostrar profesionalidad. Mostramos documentación que avala el trabajo que
estamos por hacer. Todavía no mostramos requerimientos, no los tenemos, solo
una idea muy vaga de lo que el cliente quiere hacer.

Pasamos a la segunda etapa.

# Relevamiento (elicitación)

Un sistema siempre existe: es un conjunto de elementos que actúa de manera
coordinada para lograr un objetivo. Lo que podemos ver es si existe un *sistema
informático*. Con independencia de si hay o no un sistema informático, hay un
sistema *social*, una asociación de personas funcionando.

El objetivo del relevamiento es entender cómo funciona la empresa, qué tarea
hace cada uno, cómo se organizan.

¿Qué hago en el relevamiento? No importa el tamaño de la organización, primero
pedimos el *organigrama*. Muestra la estructura de la empresa. Cómo está
organizada. Pueden pasar dos cosas:

- Aquí está el organigrama.

- Aquí está pero está desactualizado: lo actualizamos

- No tenemos organigrama: lo armamos nosotros

¿Para qué necesito el organigrama? Para armar las entrevistas. Tenemos que
programar cómo vamos a hacer las entrevistas, si vamos a utilizar otras
técnicas de recolección de datos como cuestionario, utilizar otro medio, etc.
El organigrama es una herramienta para planificar nuestro relevamiento.
A niveles inferiores, generalmente es más sencillo acceder a relevar
información.

Tenemos entrevistas con todos los actores que se vinculan con el sistema. En
este paso podemos entrevistar, hacer observación directa, o cuestionario.
También podemos hacer un muestreo, mucha gente hace lo mismo, entonces tomamos
un subconjunto de los actores. Ese subconjunto es la muestra.

¿Cómo construyo la muestra? Voy con el jefe y pregunto: cuál es el más antiguo,
cuál es el más nuevo, y uno entre medio. Pregunto por el más antiguo porque es
el que más conoce a la empresa. Pregunto por el nuevo porque tiene ideas
diferentes al que tiene mucho tiempo en la empresa. El del medio sirve para
equilibrar un poco la balanza. (Nota: En definitiva, buscamos *experiencias*
distintas).

*Cosa fundamental*. Cómo hago las entrevistas.

¿Qué hago primero? Me *presento* de manera formal. El objetivo es *transmitir
tranquilidad*, no estamos para evaluar nada. Si no hacemos esto, la persona se
pone a la defensiva y dificulta nuestro trabajo.

En segunda instancia, cómo almaceno los datos de la entrevista. *Nunca
grabamos*. Jamás de los jamases bajo ningún punto de vista grabar las
entrevistas. A la vieja usanza. Lápiz y papel y vamos anotando. Los
desarrolladores a veces trabajamos de psicólogos, tenemos que escuchar cosas
que no son relevantes a nosotros. Pero tenemos que trabajar con eso. Tenemos
que *llevarlos a cosas que sean relevantes para nosotros*, de forma humana. La
grabación puede poner al entrevistado a la defensiva.

En tercera instancia, preguntamos: hay documento que utilices en tu trabajo. Si
hay por ejemplo, nota de pedido, remito. *Pedimos una copia de toda la
documentación*. Porque probablemente el sistema va a tener que generar esa
documentación.

Luego de hacer el laburo, vamos a tener los requerimientos.

# Requerimientos

Hay requerimientos funcionales y no funcionales. La forma más fácil de
entenderla es:

- Los requerimientos funcionales son aquellas cosas que tenemos que programar
  en un lenguaje de programación.

- Un requerimiento no funcional no necesita ser programado, tiene que ver con
  el entorno de nuestro sistema.

Por ejemplo, en un cajero automático tenemos que programar toda la interfaz,
que solicite la tarjeta, que solicite la clave. La disponibilidad del cajero
las 24 hs. del día tiene que ver con el Hardware. Ese es un requerimiento no
funcional.

Requerimientos funcionales involucra qué hace el sistema. Los no funcionales
involucran cómo lo hace. Tiene que ver con el entorno, *no* con lo que el
sistema hace en sí mismo.

Los requerimientos, funcionales o no, *NO se agrupan*. Alta, baja, consulta,
listado, son cuatro requerimientos funcionales distintos. Por qué. Porque cada
uno se programa por separado. (Nota: Lo que se programa por separado es un
requerimiento funcional separado).

# Informe + RF + RNF

Hacemos un informe, con el relevamiento, requerimientos funcionales, no
funcionales, lo presentamos y se firma.

# Cuándo cobramos

Hasta ahora no construimos nada, solo hicimos trabajo documental. Hay gente que
cobra cuando termina el sistema. Otra que cobra cada etapa. Otra que cobra
algunas etapas.

Como profesionales, no podemos hacer las cosas gratis. Tenemos que cobrar desde
la primera entrevista. Cada etapa del ciclo de vida se va cobrando. Si es un
sistema grande que lleva muchos meses de trabajo, puede que nunca cobremos,
puede pasar de todo, se puede fundir la empresa, etc.

# Etapa de análisis

Después de analizar todo, hacemos el estudio de factibilidad, que consiste en
ver si es posible o no hacer el sistema.

Se lo ve desde dos puntos de vista:

- Desde el punto de vista del cliente

- Desde nuestro punto de vista

Tiene tres patas (a veces cuatro):

- Factibilidad técnica: qué equipos tiene el cliente, son útiles para el
  sistema. Lo mismo desde nuestro punto de vista: tenemos el hardware necesario
  para hacer el sistema que tenemos que hacer.

- Factibilidad operativa: tiene el cliente los recursos humanos para manejar el
  sistema. Lo mismo desde nuestra parte: tenemos los recursos para
  desarrollarlo.

- Factibilidad económica: el cliente tiene el dinero para desarrollar esto.
  Nuestra parte: tenemos el dinero para hacer esto, para contratar a la gente.

De ese análisis sale el informe con estudio de factibilidad, diagrama de Pertt,
Diagrama de Gantt, que sirven fundamentalmente para estimar tiempos.

El cliente va a hacer tres preguntas:

- Cuánto va a costar

- Cuánto tiempo vas a tardar (Diagrama de Pertt o de Gantt)

- Cuánto tiempo voy a demorar en recuperar la inversión (Nota: ecuación de
costo beneficio)

Siempre estimar de más. Si mi diagrama dice 7 meses, estimamos 9. Si suceden
imprevistos, lo entregamos en 9. Si lo entregamos antes, el cliente va a estar
más contento.

Lo mismo con el costo: siempre presupuestar de más y devolvemos la plata
cualquier cosa. Así no pedimos más después. Cliente y nosotros contentos.

Una vez está todo esto. Recién aquí hacemos el diseño del sistema.

# Diagrama del flujo de datos

El cliente da el Ok. Aquí empezamos a trabajar en el diseño del sistema.
Primero hacemos el diseño global, en papel. Qué hacemos.

Graficamos como se mueven los datos dentro del sistema que estamos diseñando.
Cómo se comunica una parte con otra. Cómo se mueven los datos por el sistema
que estamos diseñando.

# Diagrama de entidad-relación

Es el diseño de la base de datos. Se diseña por un lado el sistema y por otro
la base.

Una vez tenemos la base, la optimizamos, con las reglas de normalización, para
optimizar la base de datos. (Formas normales)

Si hacemos nuestro diseño orientado a objetos, usamos: casos de uso e historias
de usuario.

Hasta los casos de uso hacemos el diseño. Eso es lo que corresponde a esta
materia. No vamos a programar. Pero vamos a hacer todo el resto del trabajo. Se
lo damos al programador y él lo hace.

# Notas sobre programación orientada a objetos

No es lo más común. Frente a cada proyecto tomamos decisiones. Para algunas
cosas nos conviene. Para otras no. Hay casos en los cuales es imposible usar la
POO.

# Programación, pruebas, implementación

El programador programa. Pasamos a etapa de pruebas. Una vez que sabemos que
todo está bien vamos al cliente. Implementamos. Luego de la implementación,
pasamos la prueba, vemos que todo funciona. Pasamos a mantenimiento.

# Mantenimiento

Regla número 1: Si algo funciona, no se toca. La etapa de pruebas está para
eso. La etapa de mantenimiento tiene que consistir en hacer *agregados*
(agregar funcionalidades).

El mantenimiento *no* incluye resolver errores. Si tiene errores hicimos algo
mal.

# Desmantelamiento

Es cuando el sistema deja de usarse, por el motivo que fuere: cambio de rubro
de la empresa, cambios en políticas de la empresa, cambios en la dirección de
la empresa, cambios en la normativa legal que implica cambiar un sistema (o
directamente lo deja obsoleto).

Un sistema viejo no necesariamente está obsoleto. La muestra son los sistemas
hechos en COBOL. Es decir, en ese caso, el problema es que no hay
programadores, no que los sistemas no funcionen.

Esos sistemas se llaman *sistemas heredados* (*Legacy*).

# Cursada

Cuando hay temas nuevos, estamos atentos al foro, el profe nos habla. Si el
profe no pone nada, no tenemos clase sincrónica, sino que nos encontramos luego
de desarrollar las prácticas.
