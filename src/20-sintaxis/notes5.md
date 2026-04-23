---
title: Notas quinta clase
author:
- Daniel
date: 22 de abril
---

# Simplificación de AFD

AFD es autómata finito determinístico. Están estos y los no determinísticos.
Ahora vamos a ver los determinísticos.
Tenemos grafo y representación en la matriz. Los dos dicen esencialmente lo
mismo. Tengo inicio, posiciones finales y caminos posibles. Si tenemos un grafo
grande (equivalente a matriz grande) la simplificación genera el AFD mínimo que
soporta el mismo lenguaje. (Es decir, esto plantea la posibilidad de grafos o
matrices redundantes para representar un lenguaje, puedo simplificarlo y que
sea equivalente).

Un *comportamiento* es una tupla con los posibles nodos a los que puedo ir.
Entonces, determino los comportamientos para cada nodo, en definitiva a qué
otro nodo puedo ir. Buscamos los *comportamientos equivalentes*.

Los *comportamientos equivalentes* cumplen con:

- Igual comportamiento

- Son compatibles

Decimos que dos nodos son compatibles porque son del mismo tipo: ambos son
finales o ambos *no* son finales. Decimos que son incompatibles cuando son
distintos, es decir, uno final y otro no final.
Voy haciendo divisiones. Sustituyo nombres de nodos por la clase en la que
están. Divido mientras haya nodos juntos que tengan clases distintas de
destino. Llego a una situación donde no puedo seguir dividiendo y unifico los
nodos que sean indivisibles. Ahí tenemos el autómata finito determinístico
simplificado.

# Algoritmo de equivalencia de AFD

En ingeniería aparece todo el tiempo.

