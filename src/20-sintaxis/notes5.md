---
title: Quinta Clase de Sintaxis y Semántica del Lenguaje
date: 22 de abril
---

Por qué es relevante profundizar hoy en Sistemas. Porque no estamos estudiando
para ser usuarios. Estamos estudiando para ser ingenieros.

(Quedamos 00:05:00)

# Simplificación de Autómata Finito Determinístico (AFD)

Un autómata puede ser determinístico o no determinístico. Depende de si, dado
un nodo/estado, y una entrada, el nodo destino es siempre el mismo.

Tenemos grafo y representación en la matriz. Los dos dicen esencialmente lo
mismo.

Dado un grafo grande, la simplificación genera un AFD equivalente que soporta
el mismo lenguaje. (Es decir, una matriz o grafo redundante se reduce a uno no
redundante).

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

