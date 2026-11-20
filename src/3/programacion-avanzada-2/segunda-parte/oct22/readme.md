# Angular

Arrancamos nuevo proyecto, que recrea lo que ya trabajamos, con:

```bash
ng new tareas-app
```

Generamos una interfaz para representar las tareas e interactuar con al base de
datos.

```bash
ng generate interface ITask
```

Generar una interfaz crea un archivo `ts` en el directorio raíz de la aplicación.
El archivo representa el esquema que vamos a usar para leer y escribir la base
de datos.

## Creamos un componente para listar tareas

```bash
ng generate component taskList
```

El componente consta de 4 archivos:

- Un archivo `html` para el template.
- Un archivo `css` para los estilos del componente.
- Un archivo `ts` para el comportamiento.
- Un archivo `spec.ts` para la especificación.

Creamos componentes para crear nuevas tareas e item de tareas:

```bash
ng generate component taskItem
ng generate component newTask
```

## Rest API

Instalo como requerimiento de desarrollo `json-server`.

```bash
npm install --save-dev json-server
```

Ejecuto con:

```bash
npx json-server db.json
```

Generamos un servicio para poder acceder a la Rest API:

```bash 
ng generate service taskAPIClient
```

Para poder comunicarnos por protocolo `http` con la base de datos tenemos que
incorporar el proveedor en `angular`, modificando el archivo `app.config.ts`,
incorporando:

```ts
export const appConfig: ApplicationConfig = {
  providers: [
    // ...
    provideHttpClient()
  ]
};
```

## Rest API

Pasamos a la parte de desarrollar la Rest API con `ASP.NET`.
Creamos el proyecto:

```bash
dotnet new webapi -o tareasappapi --no-openapi --use-program-main --use-controllers
```

Creamos una ruta `/tareas`, copiado el controlador
`WeatherForecastController.cs`, renombrándolo como `TareasController.cs`.

Con el *Endpoint* levantado, necesitamos crear un modelo.
En `Models/`, creamos `Tarea.cs`, con una clase `POCO` que los describa.

