# Clase 5 de noviembre

Vemos muy rápidamente el apunte de paralelismo y concurrencia.

**Concurrencia**.
Dos líneas que se están ejecutando al mismo tiempo.
**Paralelismo**.
Es una misma tarea, pero dividida de forma tal que la ejecutemos al mismo tiempo.
Paralelismo implica concurrencia, pero hablar de concurrencia no necesariamente
implica paralelismo.

Históricamente la unidad de concurrencia era el proceso.
El sistema operativo asignaba tiempo a cada proceso.
El proceso debía avisar cuando terminaba.
Ahora tenemos los **hilos** (*threads*).
No son sencillos de utilizar pero tenemos *abstracciones* para trabajarlo en
`C#`.

Creamos un proyecto `C#` con

```bash
$ dotnet new console -o hilos --use-program-main
```
