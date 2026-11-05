# Arquitectura basada en componentes

Vemos el desarrollo de sistemas de información como evolución en el nivel de 
abstracción y desacoplamiento.
Por ejemplo, cuando pasamos de una **programación estructurada** a una 
**programación orienta a objectos** tenemos un desacoplamiento respecto de las 
funciones, un mayor nivel de abstracción.
Así llegamos a los **servicios** donde hay un desacoplamiento de la máquina en 
que se ejecuta.
Esa es la idea central del apunte.
En una arquitectura orientada a servicios vamos a construir nuestra aplicación
componiendo servicios.

Chequeamos que tengamos `node` y `npm`:

```bash
$ node --version
$ npm --version
```

Instalamos la herramienta `@angular/cli`, se puede buscar en la web de `npm`.

```bash
$ npm install -g @angular/cli
$ ng version
```

Creamos un proyect Angular:

```bash
$ ng new nombreproyecto
```

Para levantar el servidor de nuestro proyecto:

```bash
$ ng serve
```

Se detiene con `q`.
Cuando guardamos un cambio el servidor actualiza la página.

Angular es un *framework* basado en componentes.
El punto de entrada es `src/index.html`.
Es el único archivo `html` que carga el navegador.
Por eso decimos que Angular es un framework de *Single-Page Application* (SPA).
Eso no significa que va a tener una única ruta.
Desde `Typescript` vamos a manejar las rutas.
Pero sí implica que es un solo documento `html` sobre el que vamos a componer
nuestra aplicación usando `componentes`.

El **componente raíz** es `app`, definido en `app.ts`.
Allí definimos su *comportamiento*, su *template html* y su *template css*.
Cada componente debe tener su propia funcionalidad, estructura y estilos.
No es ideal compartir como era en `Vanilla JS`.

Un componente se define por el decorador `@Component({})`.
El decorador recibe un objeto, donde es importante especificar:

* `imports:`, los módulos que incoporamos.
* `selector`, cómo se representa en un template que lo componga
* `styleUrl`, la ruta del css del componente.

```bash
# quedo 
```