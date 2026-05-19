---
title: Notas de clase
author:
- Daniel
date: 16 de marzo
---

# Origenes de un sistema

Diseño de un sistema es lidiar con algo que puede o no existir. ¿Dónde nace un
sistema?

Hay dos caminos para el nacimiento de un sistema:

- Un cliente solicita un sistema porque *percibe* que lo necesita.

- Diseñamos un sistema porque vemos una oportunidad de negocio.

En el primer caso un cliente piensa que necesita un sistema. Nuestro trabajo,
en un primer momento, es determinar si eso es realmente así.

En el segundo caso, creemos que puede haber una oportunidad de negocio creando
un sistema que cumple una función novedosa. Y lo diseñamos.

# Primera entrevista

Un cliente nos llama porque necesita un sistema. ¿Qué hacemos?

Primera entrevista con el cliente, tomamos un cafe, escuchamos su situación
actual. Todo se cobra. Esta entrevista también. (NOTE(dan): depende).
Tratamos de indagar en sus necesidades. Ver si realmente necesita un sistema, 
capaz existe una solución que no requiere diseñar un sistema a medida.

Luego de la entrevista hacemos un informe. Ponemos por escrito todo lo
charlado. Nos volvemos a encontrar y analizamos el **primer informe**. 

Llevamos dos copias. Si está de acuerdo con el informe lo firma. Nos quedamos
una copia y la otra para el cliente.

Pueden pasar dos cosas:

- El cliente dice: esto es lo que hablamos, lo firmo.

- O dice: Me olvide de contarte esto, lo otro, reelaboramos el informe y
  volvemos a charlar.

En el informe escribimos las necesidades que el cliente manifiesta, lo que nos
dice, la *descripción general* del sistema que quiere. El objetivo es un
archivo al que remitirnos por si el cliente después cambia de opinión. El
informe es un *resguardo legal* de lo que vamos trabajando.

El primer informe no es tan importante en términos técnicos. Pero es un
resguardo. También es una forma de mostrar profesionalismo. Mostramos
documentación que avala el trabajo que estamos por hacer.

Todavía no especificamos requerimientos. No los tenemos. Ni los podemos tener.
El objetivo es plantea una idea a grandes rasgos sobre lo que el cliente quiere
hacer.

Pasamos a la segunda etapa.

# Relevamiento (o elicitación)

Notar que un sistema siempre existe: es un conjunto de elementos, actuando de
forma coordinada para lograr un objetivo.

Con independencia de si la empresa cuenta o no con un *sistema informático*,
siempre hay un sistema *social*, una asociación de personas funcionando, con
mayor o menor eficiencia y eficacia, en pos de un objetivo común.

La idea del relevamiento o elicitación es entender cómo funciona ese sistema,
cómo funciona la empresa, qué tarea hace cada uno, cómo se organizan.

¿Qué hago en el relevamiento? No importa el tamaño de la organización, primero
pedimos el *organigrama*. Muestra la estructura de la empresa. Cómo está
organizada. Pueden pasar dos cosas:

- Aquí está el organigrama.

- Aquí está pero está desactualizado: lo actualizamos

- No tenemos organigrama: lo armamos nosotros

¿Para qué necesito el organigrama? Para armar las entrevistas.

Tenemos que programar cómo vamos a hacer las entrevistas, si vamos a utilizar
otras técnicas de recolección de datos como cuestionario, utilizar otro medio,
etc. El organigrama es una herramienta para planificar nuestro relevamiento. A
niveles inferiores, generalmente es más sencillo acceder a relevar información.
Hablar con un gerente puede no ser tan sencillo.

Tenemos entrevistas con todos los actores que se vinculan con el sistema. En
este paso podemos entrevistar, hacer observación directa o cuestionarios.
También podemos hacer un muestreo, si muchas personas hacen lo mismo. Tomamos
un subconjunto de los actores. Ese subconjunto es la muestra.

¿Cómo construyo la muestra? Voy con el jefe y pregunto: cuál es el más antiguo,
cuál es el más nuevo, y uno en el medio. Pregunto por el más antiguo porque es
el que más conoce la empresa. Pregunto por el nuevo porque tiene ideas
diferentes al que tiene mucha experiencia. Y el del medio sirve para equilibrar
un poco la balanza. (Note(dan): En definitiva, buscamos *experiencias*
distintas).

*Cosa fundamental*. Cómo hago las entrevistas.

¿Qué hago primero? Me *presento* formalmente. El objetivo es *transmitir
tranquilidad*, no estamos para evaluar nada. Si no hacemos esto, la persona se
pone a la defensiva y dificulta nuestro trabajo.

En segunda instancia, cómo almaceno los datos de la entrevista. *Nunca
grabamos*. Jamás de los jamases bajo ningún punto de vista grabar las
entrevistas. A la vieja usanza. Lápiz y papel.

Los desarrolladores a veces trabajamos de psicólogos. Tenemos que escuchar
cosas que no son relevantes a para nuestro trabajo. Pero tenemos que trabajar
con eso. Tenemos que *llevarlos a cosas relevantes*, pero de forma humana.

En tercera instancia, preguntamos: qué documentos usas en tu trabajo. Si hay
notas de pedido, remitos, etc. *Pedimos una copia de toda la documentación*.
Porque es muy probable que el sistema tenga que generar esa documentación.

Después de las entrevistas y la elicitación, tenemos los requerimientos.

# Requerimientos

Hay requerimientos funcionales y no funcionales. La forma más fácil de
distinguirlos es:

- Los requerimientos funcionales son aquellos aspectos del sistema que tenemos
  que programar nosotros.

- Un requerimiento no funcional no necesita ser programado, tiene que ver con
  el entorno en que se despliega nuestro sistema.

Si tengo que programarlo, es requerimiento funcional.

Por ejemplo, en un cajero automático tenemos que programar toda la interfaz,
que solicite la tarjeta, que solicite la clave. La disponibilidad del cajero
las 24 hs. del día tiene que ver con el Hardware. Ese es un requerimiento no
funcional.

Requerimientos funcionales involucra qué hace el sistema. Los no funcionales
involucran cómo lo hace. Tiene que ver con el entorno, *no* con lo que el
sistema hace en sí mismo.

Los requerimientos, funcionales o no, *NO se agrupan*. Alta, baja, consulta,
listado, son cuatro requerimientos funcionales distintos. Porque cada uno se
programa por separado. (Note(dan): Lo que se programa por separado es un
requerimiento funcional separado).

# Informe + RF + RNF

Hacemos un informe, con el relevamiento, requerimientos funcionales, no
funcionales, lo presentamos. Si el cliente está de acuerdo, firma nuevamente.

# Cuándo cobramos

Hasta ahora no construimos nada, solo hicimos trabajo documental. Hay gente que
cobra cuando termina el sistema. Otra que cobra cada etapa. Otra que cobra
algunas etapas.

Como profesionales, no podemos hacer las cosas gratis. Tenemos que cobrar desde
la primera entrevista. Cada etapa del ciclo de vida se va cobrando. Si es un
sistema grande que lleva muchos meses de trabajo, puede que nunca cobremos,
puede pasar de todo, se puede fundir la empresa. Por lo tanto, se cobra por
etapa.

# Etapa de análisis. Estudio de factibilidad

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
imprevistos, lo entregamos en 9. Si no suceden imprevistos, lo entregamos
antes. De cualquier forma, el cliente va a estar contento.

Lo mismo con el costo: siempre presupuestar de más y devolvemos la plata
cualquier cosa. Así no pedimos más después. Pedir más después es una
complicación. Devolviendo dejamos al cliente contento.

Teniendo esto, empieza el diseño del sistema.

# Diagrama del flujo de datos (DFD)

El cliente da el Ok. Aquí empezamos a trabajar en el diseño del sistema.
Primero hacemos el diseño global, en papel. Qué hacemos.

Graficamos como se mueven los datos dentro del sistema que estamos diseñando.
Cómo se comunica una parte con otra.

# Diagrama de Entidad-Relación (DER)

Es el diseño de la base de datos. Se diseña por un lado el sistema y por otro
la base.

Una vez tenemos la base, la optimizamos, siguiendo las reglas de normalización,
para optimizar la base de datos. (Formas normales)

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
pasamos la prueba, vemos que todo funcione. Pasamos a mantenimiento.

# Mantenimiento

Regla número 1: Si algo funciona, no se toca. La etapa de pruebas está para
eso. La etapa de mantenimiento tiene que consistir en hacer *agregados*
(agregar funcionalidades).

El mantenimiento *no* incluye resolver errores. Si tiene errores es porque
hicimos algo mal.

# Desmantelamiento

Es cuando el sistema deja de usarse, por el motivo que fuere: cambio de rubro
de la empresa, cambios en políticas de la empresa, cambios en la dirección,
cambios en la normativa legal que implica cambiar un sistema (o directamente lo
deja obsoleto).

Un sistema viejo no necesariamente está obsoleto. La muestra son los sistemas
hechos en COBOL. Es decir, en ese caso, el problema es que no hay
programadores, no que los sistemas no funcionen.

Esos sistemas se llaman *sistemas heredados* (*Legacy*).

# Cursada

Cuando hay temas nuevos, estamos atentos al foro, el profe nos habla. Si el
profe no pone nada, no tenemos clase sincrónica, sino que nos encontramos luego
de desarrollar las prácticas.

