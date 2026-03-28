---
title: Notas Segunda Clase
author:
- Daniel
date: 25/3/26
---

# Repaso

Símbolo: Unidad indivisible

Alfabeto: conjunto de símbolos

Palabras: combinaciones de los elementos de las palabras.
Se generan a partir del alfabeto.
Hay diferentes operaciones para generar las palabras:

* Concatenación

* Rotación

* Potenciación

Las operaciones _idempotentes_ se pueden simplificar:
las que se revierten entre si, como la potencia negativa aplicada dos veces.

Con las palabras se puede generar un conjunto infinito de combinaciones.

# Gramática

Es el concepto que vamos a trabajar hoy. Cierta equivalencia con la gramática
del lenguaje natural, pero no es lo mismo.

Los seres humanos nos entendemos _de milagro_, porque el lenguaje es
tremendamente ambiguo.

Las gramáticas: describen, validan, generan: un lenguaje.

Por ejemplo: la primer letra de cada oración va con mayúscula.

Las reglas permiten pasar de las palabras al lenguaje.

Así permiten _validar un lenguaje_, es decir, permite decir _qué palabras
son válidas_ y cuáles no, de forma sistemática.

Ejemplo: las variables en C no pueden empezar con un número.

Las **reglas** permiten _generar_ el lenguaje: qué palabras son válidas
y qué palabras no.

# Gramática formal

Definción: $G = (\Sigma_T, \,\Sigma_N, \,S, \,P)$

Es una tupla, o cuaterna.
No tiene llaves, sino paréntesis.
Eso quiere decir que tiene un orden.
Es la diferencia entre un conjunto (_set_) y una _tupla_.

Características:

$\Sigma_T$: Alfabeto de símbolos terminales

$\Sigma_N$: Alfabeto de símbolos NO terminales

$S$: Símbolo inicial (_axioma_), perteneciente a $\Sigma_N$

$P$: conjunto finito y acotado de reglas de producción

Define una regla para hacer reemplazos.
Arranco por el símbolo inicial y siguiendo las reglas de producción tengo las
palabras válidas e inválidas.

Con esto podemos definir un lenguaje de programación.
No alcanza para determinar si compila o no, pero alcanza para hacer una
validación **sintáctica** del lenguaje.

Esto se puede llevar a la electrónica para validar un circuito.

# Lenguaje asociado

La gramática permite llegar a un conjunto _set_ del lenguaje.

A partir de un lenguaje, ¿se puede deducir una gramática?

# Gramática de formal de ejemplo

$$G = (\Sigma_T, \Sigma_N, S, P)$$

$$\Sigma_T = \{a, b\}$$
$$\Sigma_N = \{S\}$$
$$P = \{S ::== aSb, S ::== ab\}$$

Este lenguaje se representa igualmente como $a^n \cdot b^n$.

# Forma abreviada

Las reglas de pueden expresar $P = \{S ::= aSb, \> S ::= ab\}$ o
$P = \{S ::= aSb | ab\}$.

# Recursividad

$$P = \{ N ::= CN | C, \> C ::= 0|1|2|3|4|5|6|7|8|9 \}$$

Puedo tener recursividad a derecha:

$$N \to CN \to 1N \to 1CN \to 12CN \to \cdots$$

# Jerarquía de gramáticas

Tipos de gramáticas según las resticciones que imponen.

Quedo 1:44
