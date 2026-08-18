# Notas Segunda Clase Sistemas Operativos
Fecha: 18 de agosto

## Procesos e Hilos

Se trata de cómo el sistema organiza y ejecuta el trabajo.

**Proceso**. Es un programa en ejecución. Tiene su propio espacio de memoria
aislado del resto. Tiene un espacio de memoria propio, recursos asignados como
archivos abiertos, conexiones de red, identificadores de sistema. Tiene un
_Process ID_ que el sistema usa para identificarlo.

**Hilo**. Es una unidad de ejecución dentro de un proceso. Varios hilos
comparten la misma memoria. Como una familia comparte una casa. Hay una memoria
compartida, donde está el código, los datos, heap comunies. Solo la pila es
propia de cada hilo. Lac reación es más liviana. Y hay riesgo de
_sincronización de carrera_. Tema que veremos más adelante.

**Procesos vs. Hilos**

| Aspecto           | Proceso                                        | Hilo                               |
| ----------------- | ---------------------------------------------- | ---------------------------------- |
| Memoria           | Espacio propio, Aislado                        | Compartida entre Hilos del proceso |
| Costo de creación | Alto                                           | Bajo                               |
| Comunicación      | Requiere IPC (pipes, sockets)                  | Directa, mismo espacio de memoria  |
| Aislamiento       | Alto:un fallo en un proceso no afecta al resto | Bajo                               |

El proceso es la casa. Sus hilos son sus habitantes.

