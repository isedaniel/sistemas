---
title: Notas de la primera clase
author:
- Daniel
date: 17/3/26
---

# Condiciones

Tenemos clase sincrónica, todos los martes, 19 hs.
Las clases van a ser largas, en particular las prácticas.

Todos los viernes a las 21hs. se bloquea el contenido
y se desbloquea el cuestionario,
tenemos que resolverlo hasta el domingo a las 21hs.

Para desbloquear el contenido de la unidad siguiente tenemos que aprobar
el cuestionario, respondiendo bien 4 de 5 preguntas.

En particular las prácticas pueden ser complicadas, por lo cual
eventualmente se puede solicitar un segundo intento.

# Contenidos

- Modelo OSI.
- Protocolo TCP/IP.
- Topología de red.
- Direccionamiento.
- Datagrama IP.
- Dirección IP.
- Subredes.
- Elementos básicos de enrutamiento.
- Selección de rutas.
- Protocolos dinámicos y estáticos.
- Protocolos vector distancia.
- Protocolos de estado del enlace.
- Protocolos híbridos.
- Protocolos IGP y EGP.
- Ruteo estático y dinámico.
- Mecanismos de enrutado.
- Protocolo OSPF.
- Protocolo BGP.
- Elementos de red. Generalidades. Características. Componentes.
- Configuraciones de routers
- IPV6. Conceptos y direccionamiento.
- Virtualización

# Cronograma

Clases todos los martes.
Vemos un capítulo por semana.

El capítulo 9 y 10 van a ser los más intensivos en prácticas.

# Capitulo 1. Redes de comunicación

## Modelo OSI

Técnica de estructuración.

Se jerarquiza en capas.

Una capa proporciona servicios a la superior.

Se estructura para que cada capa no dependa de otras y sea más manejable.

La especificación ISO define:
conjunto de capas, servicios de cada una, número de capas.
Se trata que la complejidad sea pequeña pero con un número no muy elevado de 
capas para que no sea tan difícil el procesamiento.

Esquema de 7 capas.
#. Física
#. Enlace
#. Red
#. Transporte
#. Sesión
#. Presentación
#. Aplicación

En la jerga _error en capa 8_ refiere a un error humano,
haciendo referencia a estas 7 capas.

La aplicación *X* envía un mensaje a la aplicación *Y*.

Cada capa utiliza un protocolo propio para comunicarse entre cada una.
7 a 7, 6 a 6, y así sucesivamente.

La capa física es la que se comunica con la otra capa física.
El resto de capas le hablan a su capa inferior exclusivamente.

## Capa física

Tiene cuatro grupos de características importantes:

#. Mecánicas, relacionadas con las propiedades físicas de la interface y medio
de transmisin, incluye especificaciones de conector.
#. Eléctricas, espcifica la representación de los bits.
#. Funcionales
#. De procedimiento, especifican los eventos en el intercambio de bits

## Capa de enlace de datos

Proporciona seguridad al enlace físico.
Se dedica al control y prevención de errores primarios.
Si hay una serie de routers conectados,
la capa de enlace va a ser más compleja.

## Capa de red

En esta nos focalizamos en la materia,
realiza la transferencia y libera a las capas superiores de la necesidad de
tener conocimiento sobre la transmisión de datos subyacente y las tecnologías
de conmutación usadas.

Esta capa establece un diálogo con la red para especificar dirección,
solicitar facilidades y gestionar prioridades.

## Capa de transporte

ISO desarrolla 5 estándares.
TCP y UDP.

## Capa de sesión

Controla la comunicación,
establece, gestiona y cierra conexiones. Establece aplicaciones cooperadoras.
La capa de sesión proporciona, controles de diálogo,
agrupamientos, esto es, flujo de datos, y recuperación, un procedimiento
ante la pérdida de datos.

En muchos casos no es necesaria.

## Capa de presentación

Proporciona independencia a las aplicaciones.

Define el formato de los datos, define la sintacis, formateado y condificación
de datos, la comprensión semántica de datos y el encriptado.

## Capa de aplicación

Proporciona un medio para que las aplicaciones accedan a OSI,
se encarga de las funciones de administración.

# Protocolos TCP/IP

Vemos el stack del protocolo TCP/IP.

Reconoce que las comunicación es compleja y diversa como para realizarla en 
una unidad.

El OSI parte del mismo razonamiento.

El OSI, dicen los que proponen TCP/IP, que es más prescriptivo que descriptivo.
No hay un modelo de referencia TCP/IP.

