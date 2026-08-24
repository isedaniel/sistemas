# HTML

HyperText Markup Language. Lenguaje de Marcado de Hipertexto. Sirve para
estructurar el documento.

## `<!DOCTYPE html>`

Es la primera etiqueta. Le indica al navegador que es un archivo HTML. Siempre
en la primera línea. Se entiende sin la etiqueta, pero es buena práctica
incluirlo.

## `<html>`

Etiqueta. Se usa generalmente el atributo `lang` para indicar el lenguaje. Cada
etiqueta puede contener otras. Así se _estructura_ el lenguaje. La etiqueta
`htmlz es la _etiqueta raíz_. _Todo_ va aquí dentro.

## `<head>`

Contiene los metadatos del documento y de la web. En esta anidamos etiquetas
que describen la página. Como `<title>` y `<meta>`. No hace falta conocerlas de
memoria.

Algunas etiquetas de metadatos importantes son:

- `<title>`, título de la página.
- `<meta charset="UTF-8" />`, para elegir el mapa de caracteres.
- `<meta name="description" />`, para especificar la descripción de nuestra
página. Sirve para los motores de búsqueda.
- `<meta name="viewport" content="width-device-width">`, hace que el sitio sea
adaptable al ancho de la pantalla.
- `<meta name="robots" content="index, follow">`, sirve para los motores de
búsqueda.
- `<link rel="icon" type="image/jpg" href="./img/icon.ico">`, para setear el
ícono.
- **Etiquetas OpenGraph**, sirven para definir cómo se va a ver nuestra página
cuando la compartan en redes.

Se pueden incluir con `emmet`, ejemplo: `meta:desc`.

## Etiquetas

Siguen la forma general `<elemento>contenido</elemento>`.
Salvo las autoconclusivas: `<img src="img.webp" />`.
`src=""` es un atributo. Las comillas son opcionales, pero se recomiendan.

Existen **atributos booleanos** que son verdaderos si aparecen. 
Ejemplo: `<img hidden src="img.webp" />`

El atributo **id** es especial. Funciona como identificador. Solo debe haber 
_una_ etiqueta que lo utilice.

## `<strong>`

Etiqueta para señalar énfasis.

## user agent stylesheet

Son los estilos por defecto que el navegador incorpora. Se lo puede (suele)
resetear, para que la visualización de nuestra página sea .

## Etiquetas semánticas

En lugar de utilizar solo `<div>` y `<span>` conviene utilizar las etiquetas 
semánticas que correspondan. Eso hace que nuestra página sea más comprensible
para motores de búsqueda y para la accesibilidad de nuestros usuarios. Ejemplo:

- `<aside>`
- `<section>`
- `<article>`
- `<header>`
- `<footer>`
- `<small>`

Si necesitáramos usar un `<div>`, podemos especificar el atributo `role=""` para 
incorporárle semántica por ese lado. Todo se consulta en `MDN`.

# CSS

Significa _Cascading Stylesheet_. Declaramos las reglas de estilo en archivos.
Su función: declarar los estilos de nuestra página web. 

## Enlazar

Para enlazar tenemos 3 posibilidades: 

- `<link>` en el header.
- `<style>` en el header.
- atributo `style` en cada elemento.
