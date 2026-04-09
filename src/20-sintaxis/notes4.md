---
title: Cuarta clase
author:
- Daniel
date: 8 de abril
---

# Jerarquía de Chomsky

Tipo 3 la más restrictiva a tipo 0 la menos restrictiva.

`Nota:
Los lenguajes de programación son tipo 2, con algunas cuestiones de tipo 1.`

# Autómatas

Máquinas de datos que pueden procesar símbolos.

Cada nivel de las gramáticas se relaciona con un tipo de autómata.

Sigue habiendo cuatro niveles de lenguajes, gramáticas y autómatas.

Cada nivel se relaciona entre si.

# Tipos de autómatas

- Autómatas tipo 0: máquina de Turing

- Autómatas tipo 1: Autómatas limitados linealmente.

- Autómatas tipo 2: Autómatas de pila

- Autómatas tipo 3: Autómatas finitos

TODO: investigar máquina de Turing.

Es un autómata, pero una herramienta super importante en informática.

# Autómata finito

Definición: tupla de 5 elementos. $A = (K, \Sigma, s, F, f)$

- K: conjunto finito de estados

- $\Sigma$: alfabeto de símbolos de _entrada_

- s: estado inicial, $s \in K$

- F: conjunto de estados finales, $F \in K$

- f: funciones de transición, colecciones de reglas.

El conjunto finito de estados se puede representar con un grafo.

Ejemplo, desde el estado `i`, puedo ir al estado `j`, o al estado `k`.

Recibo por entrada `b`, me voy a `j`, recibo por entrada `a`, me voy a `k`.

Un autómata finito _no determinístico_ me puede llevar, con entrada `a`, tanto
a `j` como a `k`.

Un autómata finito _determinístico_, por cada entrada, me lleva a un estado.

# Autómata finito determinístico (AFD)

Inicio: estado inicial del autómata.

Fin: estado final del autómata.

Las transiciones, en el medio, pueden ser muchas.
Pero siempre hay un inicio y un fin.

Los estados finales pueden ser muchos, no necesariamente uno.

Esta representación de estados se conoce como _diagrama de transiciones._

Al _estado inicial_ hay que marcarlo, para saber dónde empieza.
Siempre tiene que estar explicitado.
Se puede explicitar con una flecha que diga `INICIO`.

# Ejemplo

- $K = \{ q1, q2, q3 \}$

- $\Sigma = \{ a, b \}$

- Estado inicial: $q1$

- Estado final: $F = \{ q3 \}$

- funciones de transición: $f = \{ ((q1, a), q2), ((q2, b), q1),
  ((q2, a), q3), ((q3, b), q1) \}$

Con las funciones de transición podemos definir un grafo.
Tengo en la primera tupla el estado, la entrada y la transición.
Aunque estoy en final, puedo salir si recibo una entrada válida.

Con cada palabra podemos correr un programa, por ejemplo: `aa`, arranco en
`q1`, me voy a `q2` y de ahí a `q3`. Como arranco del inicio y llego al final,
la palabra es _válida_. La palabra `ab` por ejemplo me dejaría en el nodo `q1`,
por lo tanto no es una palabra válida.

Además del grafo se puede usar la matriz de transición, que tiene cada
entrada en las columnas y los nodos de estado en las filas.
En las celdas muestra el resultado de cada entrada en cada estado.
Es decir:

| f  | a  | b  |
|----|----|----|
| q1 | q2 | -  |
| q2 | q3 | q1 |
| q3 | -  | q1 |

Esto de usar matrices es natural para los sistemas.
De hecho, una `GPU` se especializa en esto.
A los seres humanos capaz nos confunde, pero a la máquina le gusta.

Para los sistemas, lo mejor es la matriz.
Para los seres humanos, lo más simple, el grafo.

De la expresión formal podemos ir al gráfico o la matriz.
Y respectivamente.

# Autómatas finitos y expresiones regulares

El objetivo es construir un autómata a partir de una `expresión regular`.

Tengo `(a|b)cd*`. Nodo de inicio es `I`, nodo final `Z`. For cada símbolo es
un camino para llegar de inicio a fin.

Entonces, arranco en `I`, puedo ir a `J` por `a` o `b`, de `J` voy a `Z`
por `c`, y `d` arranca y termina en `Z`. Ese sería el grafo.

Entonces, una palabra válida para este autómata sería: `acd`, `acddddd`, `bc`,
etc.

# Máquinas de Mealy y Moore

Hasta aquí los autómatas nos decían si una palabra era válida o no.
Ahora tendremos unos detalles más.
Estos son autómatas que generan _salidas_.

- S: alfabeto de símbolos de salida

- g: función de salidas, para cada par entrada-estado `s`

- Máquina de Mealy: salidas asociadas a transiciones

- Máquina de Moore: salidas asociadas a estados

A medida que hacemos una transición, tenemos una _salida_.

Ejemplo:

- $K = \{ q_1, q_2, q_3 \}$ `// nodos`

- $\Sigma = \{ a, b \}$

- $S = \{ 0, 1 \}$ `// salidas`

- $f = \{ ((q1, b), q2) \cdots \}$: funciones de transición

- $g \{ ((q1, b), 1) \cdots \}$: funciones de salida

La diferencia es que ponemos `b/1`, para referirnos a que con la entrada `b`
me muevo a `q2` y emito un `1`, esa es la idea central.

# ¿Cómo determino si es _Mealy_ o _Moore_?

Viendo todas las salidas de todas las transiciones.

Si la salida depende de la transición, es _Mealy_.

Si la salida depende del estado, es _Moore_.

La máquina en donde depende de donde vengo es la salida, es _Mealy_.

Si no depende de dónde vengo, es _Moore_.

Esta diferencia tiene consecuencias.

**Se puede pasar de una a otra**.

