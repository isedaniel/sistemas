# Notas Tercera Clase, Sistemas Operativos

Fecha: 25 de agosto

## Transiciones

**Transición A**. Cuando el programa necesita un elemento para continuar (sea 
dato, señal, etc.). El proceso se encuentra esperando que _algo_ pase. Como 
cuando un sistema nos pide contraseña. Se queda esperando que la ingresemos.

**Transición B**. Cuando el programa ha utilizado un tiempo asignado de
procesador y tiene que dejar el paso al siguiente proceso. El sistema frena ese 
proceso y deja que otro continue.

**Transición C**. El proceso se encontraba _preparado_.

Cuando se pasa de una transición a otra hablamos de un _cambio de contexto_. 

El **cambio de contexto** puede ser _parcial_ (entre hilos del mismo proceso) o
_completo_ ().

## Planificación

Los diferentes estados tienen una relación directa con lo que se denomina
_prioridades_. 

La planificación se puede hacer de tres formas posibles:

1. A largo plazo
2. A mediano plazo
3. A corto plazo

## Algoritmos de planificación 

Hay dos tipos de algoritmos de planificación y todo sistema aplica los dos,
dependiendo de lo que necesite.

**Round-Robin**. Rotativamente asigna tiempos de ejecución a distintos procesos.
Se conoce también como algoritmo de rueda, puesto que el orden de asignación es 
siempre la misma, de forma secuencial. Los procesos que terminan de ejecutarse 
salen del anillo. Los que todavía siguen en ejecución permanencen en el anillo.

**FIFO o FCFS (First Come First Serve)**.

## TODO

Tenemos dos prácticos más (aparte del primero), para completar. En quince días 
nos vemos para revisar las dudas que queden y entregamos.
