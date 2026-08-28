# Notas de Clase, Programación Avanzada 2

# Temas y Condiciones
## Temas
Vamos a ver tecnologías web, tanto Frontend como Backend.

## Condiciones de Aprobación
Las usuales en el resto de materias. Además tenemos un trabajo práctico grupal.
Grupos de 4 o 5 miembros.

# Clase 1
## HTML
Hasta ahora vimos un lenguaje de Backend (C#) y programamos servicios web con
Entity Framework.

Cada plataforma tiene tecnologías asociadas. MacOS tiene la suya, etc. Todos
tienen en común (incluyendo un televisor y otros) un **stack HTML**. Por eso el
*Frontend HTML-CSS-Javascript* nos permite alcanzar a la mayor cantidad de
clientes y plataformas posibles.

## Historia
Surge en los 80. Su objetivo era compartir docuemntos científicos. Está basado
en SGML. Básicamente consiste en definir la estructura de un documento con
etiquetas.

HTML significa HyperText Markup Language. Lenguaje de Etiquetado de HiperTexto.

## Hipertexto
Concepto anterior a HTML. Define un documento cuyos conceptos están vinculados
entre sí, más allá del propio texto. Es decir, más allá del uso usual de
conectores.

El idioma provee conectores para relacionar conceptos en el texto. El hipertexto
prevé el concepto de /enlace/ para relacionar conceptos entre si.

## Etiquetas
El uso de etiquetas como `<title>` permite definir elementos. Se basan en SGML,
pero incorpora el concepto de Hipertexto, con los enlaces.

Vienen generalmente en pares, como `<p>hola mundo!</p>`. La primera es una
**etiqueta de apertura**. Entre las etiquetas tenemos el **contenido**. Y al
final tenemos una *etiqueta de cierre*.
En el ejemplo se define un **elemento p** o párrafo.

Algunas etiquetas son auto-cerradas, como la etiqueta de imágen: `<img/>`.

## HTML5
Es el último estándar definido. No se esperan nuevas versiones, sino
modificaciones a esta última versión. Por lo que se prefiere usar directamente
la nomenclatura HTML.

## Lenguaje de Marcado
No es un lenguaje de programación. No permite definir lógica, flujo de
ejecución, definición de comportamiento. Es un lenguaje _presentacional_. Se
encarga de la estructura formal de un documento.

Su potencial radica en la difusión del **stack HTML**, presente en computadoras,
dispositivos smart, consolas de videojuegos, etc.

## Documento HTML
Es un conjunto de etiquetas y contenido asociado. Por ejemplo:

```html
<!DOCTYPE html>
<html lang="es">
    <head>
      <title>Documento</title>
    </head>
    <body>
      <p>hola mundo!</p>
    </body>
</html>
```

Podemos abrir un archivo de texto plano con el navegador. Y el navegador va a
tratar de renderizarlo de la mejor manera que pueda. Pero quedaría al criterio
de cada navegador. Para mejorar tanto la experiencia de nuestros usuarios, como
nuestro puntaje en un índice de un buscador, conviene cumplir con buenas
prácticas.

En primer lugar, debemos empezar con `<!DOCTYPE html>`, de acuerdo con el
estándar HTML5. Luego, todo documento tiene que comenzar con las etiquetas
`<html>`. Todo el resto de etiquetas serán /subelementos/ o /elementos hijos/ de
esta etiqueta.

Dentro de la etiqueta `<head>`, la etiqueta del _encabezado_, tenemos las
etiquetas referidos a los _metadatos_ del documento, como por ejemplo la
etiqueta de título `<title>`, o la etiqueta del encoding de nuestro documento
`<meta charset="UTF-8">`. Es información sobre nuestro documento que no será
renderizada, pero puede seer importante para nuestros usuarios o para los
buscadores.

## Comentarios en HTML
Se especifican con:

```html
<!-- Esto es un comentario -->
```

## Elementos en línea y elementos en bloque
En HTML se pueden distinguir los elementos en dos grandes grupos:

- Elementos en línea: son aquellos elementos que _no_ terminan en una nueva
  línea. Por ejemplo: `<span>`, `<img>`, `<a>`.
- Elementos en bloque: elementos que finalizan con un salto de línea, como:
  `<p>`.

## Atributos de elementos HTML
Se escriben como pares clave-valor, dentro de las etiquetas. Por ejemplo:

```html
<a href="www.google.com">Link</a>
```

Si un atributo es _booleano_, se puede indicar que es verdadero de cualquiera de
las siguientes formas.

```html
<input type="checkbox" checked>
<input type="checkbox" checked="">
<input type="checkbox" checked="checked">
```

# Clase 2
## CSS
Lenguaje de marcado cuyo rol es la especificación de estilos, que el navegador
se encargará de renderizar cuando cargue nuestra página web.

La regla recomendada es crear un único archivo `.css`, donde especifiquemos los
estilos para todas las páginass. Por ejemplo, `styles.css`.

```css
/* Cambiar el color de todos los h1 a rojo. */
h1 {
  color: red;
}
```

Linkeamos al archivo html con:

```html
<link rel="stylesheet" href="styles.css">
```

También se puede incorporar con una etiqueta `<style>`, dentre de `<head>`. Esta
es la alternativa _embebiendo en el encabezado_.

Por último, se puede incorporar en un atributo de una etiqueta puntual.

```html
<h1 style="color: red;">Título</h1>
```

## Orden de evaluación de las reglas

### Orden

La última definida es la que se aplica. Siendo las más cercanas las del atributo
`style`. Siempre que las reglas sean iguales.

```css
h1 {
  color: red;
}

/* son iguales, pero este es posterior */
h1 {
  color: blue;
}
```

### Especificidad

Ahora, si las reglas son distintas, Un selector de mayor especificidad tiene
prioridad sobre uno de menor especificidad. Selector de id > selector de clase >
selector de tipo de elemento.

```css
/* esto es una id, tiene mayor especificidad, aunque esté definida previamente */
.importante {
  color: red;
}

p {
  color: blue;
}
```

## Herencia

Si ponemos por ejemplo un color al `<body>`, los sublementos heredan ese color.
Sin embargo, si agregamos un borde, este no se hereda. Por qué. Porque algunas
propiedades se heredan y otras no.

## Documentación

En [Mozilla Developer Network](developer.mozilla.org) (MDN).

## Font-family

Ponemos una tipografía. Si no la encuentra, va a la segunda. Al final, hay que
poner una `font-family` como último _fallback_, como `sans-serif` por ejemplo.

## Box model

Se puede ver en las herramientas del desarrollador, dentro del _browser_.

El **box model** es un concepto para ubicar los elementos. Tenemos 4 zonas de
una caja. De adentro hacia afuera:

1. _Content_
2. _Padding_
3. _Border_
4. _Margin_

Por ejemplo, si seleccionamos `<h1>`:

```css
/* definimos alto de 100, ancho de 300 */
h1 {
  width: 300px;
  height: 100px;
}
```

Qué parte mide esto. En este caso, el _content_. Pero `<h1>` no ocupa 100 de
alto, porque el formato _predefinido_ por el navegador incluye `21.44px` hacia
arriba y hacia abajo, es decir, el alto total del elemento es `142.88px`.

# Clase 3

## Protocolo HTTP

**Protocolo.**

Pila de protocolos (Stack). Conjunto de protocolos que permiten el funcionamiento
de Internet.

**Modelo OSI vs. Modelo TCP/IP**. El modelo TCP/IP se corresponde mejor con 
Internet.

HTTP es un protocolo para obtener recursos. Como documentos HTML. Que a su vez 
pueden contener texto, imágenes, video, scripts. También pueden ser recursos en
otros lenguajes: JSON, XML. El servidor entrega _representaciones_ de estos 
recursos. Mediante HTTP enviamos una **solicitud**. Podemos pedir al servidor 
qué representación queremos y el servidor devuelve una **respuesta**.

La comunicación es **cliente-servidor**. El cliente es un navegador, que envía
la solicitud a una máquina destino, que es el **servidor**.

**HTTP** es _extensible_. Por encima de la capa HTTP tenemos otros lenguajes. 
Por debajo de HTTP tenemos capa de transporte TCP y capa IP.

## Cliente

En nuestra asignatura el cliente generalmente va a ser un _navegador_. Pero no 
es el único tipo de cliente. Por ejemplo, una aplicación de consola puede enviar
solicutdes HTTP. Para el servidor lo relevante no suele ser el cliente, sino la
solicitud.

## Servidor Web

No necesariamente es una máquina. Puede ser una instancia de _Software_, como
una máquina virtual. O varias máquinas. Pero a efectos prácticos, se lo
considera todo como **servidor**.

## Proxy

Entre el navegador y el servidor puede haber muchas máquinas a nivel de
transporte. Por lo general, para el cliente es igual. Esto se denomina como 
**transparente**. No es relevante si contesta _el_ servidor o un _proxy_.

## Características HTTP

- Es **simple**. Es relativamente simple de construir un cliente y de leer para
un humano.
- Es **extensible**. 
- Es **stateless**. Sin estado. No hay relación entre dos solicitudes sucesivas.
Pero _no es sessionless_, sin sesión. No puedo enviar una solicitud pensando en 
que la aplicación que recibe guarda registro de las interacciones. Cada
solicitud tiene que ser atómica.
- Protocolo HTTP y conexiones.

## Características comunes controladas por HTTP

**Caching**. Puede indicar a servidor o clientes qué y por cuánto tiempo se 
almacena. Esto permite guardar recursos, en primer lugar en el navegador, para 
mejorar la experiencia del usuario, reducción de tiempo, etc.

**Autenticación**. Puede proveer autenticación básica, por ejemplo con
encabezados o _Cookies_. (Las Cookies, en definitiva, se convierten en
encabezados). Permiten mantener las _sesiones_.

**Sesiones**. Permite mantener estados, como carritos de compra,
*configuraciones,

## Mensajes HTTP

**Solicitudes**. 
- Incluyen un método (generalmente GET, POST). 
- Path, la ruta.
- Versión HTTP. Hasta la 1.1 podemos leer.
- Encabezados
- Cuerpo

**Respuesta**. 
- No trae verbo/método.
- Incluye versión.
- Código de estado, si tuvo éxito. 200 es éxito. En los 300 redirecciones. Fuera 
de ese rango, errores. 400 del lado del cliente. Por ejemplo, solicitamos un 
recurso que no existe (404). En el rango de los 500, errores del lado del
servidor.
- Mensaje de Estado, traducción al inglés del código. Ejemplo, 200 Ok, 404 Not
Found.
- Encabezados, clave-valor, cada uno en línea nueva.
- Cuerpo, el recurso que solicitamos, por ejemplo un documento HTML que el 
navegador renderiza.

## HTTPS

Versión encriptada de HTTP. Utiliza TLS (anteriormente SSL). Se aseguran contra
ataques _Man in the Middle_. Requiere que el servidor provea un certificado
digital válido. TLS 1.0 y 1.1 ya no son soportados.

Utiliza **encriptación asimétrica**. Hay dos llaves públicas, una del cliente y 
una del servidor. Por otra parte, cliente y servidor tienen su llave privada.
Se usan una privada y una pública para encriptar y desencriptar, de manera tal 
que quien esté en el medio nunca tenga el par para desencriptar.

## Cache

Almacena una respuesta asociada a una solicitud y la usa para dar respuestas a
solicitudes subisiguientes. Hay muchas ventajas en usar cache. Por ejemplo,
agilizar velocidad de respuesta. No volver a usar el servidor para procesar algo 
que ya procesamos.

Puede ser controlada por el cliente y por el servidor.

## URL Forwarding

Permite redirigir una URL hacia otra. Permite que un mismo recurso tenga más de
una dirección URL.

## Cookies HTTP

Una **Cookie** es una porción de información que el navegador envía al usuario,
por medio de los encabezados de la respuesta. El navegador puede almacenar, 
modificar o eliminar esas Cookies. En cada solicitud puede volver a enviarlas.
Permiten _recordar información de estado_. Con las Cookies tenemos sesiones.

Se usan para:
- adminitrar sesiones 
- Personalizar productos 
- Seguimiento de los usuarios

## DNS

Cada servidor tiene su dirección IP. Pero suelen ser difíciles de recordar.
Para eso existen los servidores DNS (_Domain Name Service_), que almacena las
correspondecias entre dominios, como `google.com`, y direcciones IP, como
`8.8.8.8`.

Hay distintos registros DNS en servidores DNS.
- Tipo A, más comunmente usados
- AAAA (IPv6), igual a A pero para IPv6 
- CNAME, dirigen un dominio de alias a uno canónico. Ej., en lugar de
`google.com` y `www.google.com`, tenemos un `CNAME` enlazado al mismo registro
A. Esto permite actualizar en un solo _subdominio_.
- ALIAS, permite apuntar dominios distintos al mismo servidor.

## Dirección IP

Identifica a un dispositivo de forma única. Definida con una etiqueta numérica,
formada por un número de 32 bits, representado como 4 números de 8 bits
separados por puntos, por ejemplo, `108.174.10.10`.

## Alojamiento Web

Servidores. Tenemos distintos tipos.
- Alojamiento compartido, varios dominios comparten un mismo recurso.
- VPS, es compartido, pero cada uno tiene un servidor privado virtual
- Hosting dedicado, un servidor propio pero mantenido por un proveedor
- Hosting cloud, permite hostear en redes de servidores físicos y virtuales en
diversas ubicaciones geográficas. Permitiendo:
  - Escalabilidad
  - Disponibilidad
  - Relación costo-beneficio
  - Seguridad
