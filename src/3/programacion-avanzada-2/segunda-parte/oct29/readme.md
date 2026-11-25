# Clase 29 de octubre

Empezamos la clase.

## Proyecto de consola

Para arrancar la clase, creamos un proyecto de consola en `dotnet`.

```bash
dotnet new console -o testef --use-program-main
```
Los detalles del proyecto se guardan en el archivo `.csproj`.
Las carpetas `bin/` y `obj/` no se guardan en `git` y se pueden eliminar y 
volver a generar.

## Agregamos Entity Framework

Agregamos la versión 10 porque no tengo `.NET` 11.

```bash
dotnet add package Microsoft.EntityFrameworkCore.Sqlite --version 10.0.11
```

Las versiones se buscan en la web de `nuget`, el gestor de paquetes.

Antes de empezar a trabajar hacemos las migraciones con `dotnet-ef`.

```bash
dotnet ef migrations add PrimeraMigracion
```

Recordar agregar el paquete `Microsoft.EntitfyFrameworkCore.Design`.
Generada la migración, aplicamos la actualización a la base de datos.

```bash
dotnet ef database update
```

Se puede inspeccionar con `.schema` en `sqlite3`.

Cada vez que modifiquemos o queramos recrear la base de datos volvemos a llamar
`database update`.

Ahora integramos los dos, creando una `webapi` con `dotnet`.

