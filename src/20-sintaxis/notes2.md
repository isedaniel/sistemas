---
title: Segunda Clase de Sintaxis y Semántica del Lenguaje
date: 25 de marzo
---

# Repaso

- Símbolo. Es unidad indivisible.

- Alfabeto. Conjunto finito, no vacío, de símbolos.

- Palabra: Combinaciones de símbolos concatenados. Se generan partiendo por un
  alfabeto. Hay diferentes operaciones para generar las palabras:
  * Concatenación
  * Rotación
  * Potenciación

Las operaciones _idempotentes_ se pueden simplificar: las que se revierten
entre si, como la potencia negativa aplicada dos veces.

Con las palabras se puede generar un conjunto infinito de combinaciones.

# Gramática

Es el concepto que vamos a trabajar hoy. Cierta equivalencia con la gramática
del lenguaje natural, pero no es lo mismo.

Los seres humanos nos entendemos _de milagro_, porque el lenguaje es
tremendamente ambiguo.

Las gramáticas son reglas. Que permiten describir, generar o validar un
lenguaje. Por ejemplo:

- La primer letra de cada oración va con mayúscula.
- Una variable en Python no puede empezar por un número.

Permiten _validar un lenguaje_. Esto es, distinguir _qué palabras son válidas_
y cuáles no, de forma sistemática.

Las *reglas gramaticales* permiten _generar_ un lenguaje. Y validar: determinar
qué palabras son válidas y qué palabras no.

Ejemplo: defino un lenguaje. Mi alfabeto es $\Sigma = \{ 0 \dots 9 \}$, y las
reglas, que $dd/mm/AAAA$. Definimos ese formato y algunas reglas para los
símbolos que puede tener.

Ejemplo 2: generar passwords a partir de reglas de generación.

# Gramática Formal

Para hacer las reglas establecemos la gramática formal. Para definir una
gramática formal utilizamos una tupla que incluya cuatro elementos:

- $G = (\Sigma_T, \Sigma_N, S, P)$

Es una tupla(técnicamente, cuaterna). La diferencia es que un conjunto
(_set_) no es ordenado, y una _tupla_ por definición es ordenada.

Elementos de la gramática formal:

$\Sigma_T$: Alfabeto de símbolos terminales

$\Sigma_N$: Alfabeto de símbolos NO terminales

$S$: Símbolo inicial (_axioma_), perteneciente a Símbolos no terminales
$\Sigma_N$

$P$: conjunto finito y acotado de reglas de producción

# Proceso de transformación.

- Símbolos terminales $\Sigma_T = \{ a, b \}$.
- Símbolos No terminales $\Sigma_N = \{ S, T \}$.
- Símbolo inicial: $S ::= aT$.
- Reglas: $P = \{ S::= aT, T ::= a, T ::= b \}$

Tengo los símbolos terminales y no terminales. Notar que son disjuntos. En las
reglas defino el _axioma_ o símbolo inicial. Arranco por ahí. $aT$. La $T$ hay
que sustituirla por alguna de las reglas: $T::=a$ o $T::=b$. 

Entonces, las palabras válidas para esta gramática serían $\{ aa, ab \}$.
Notar que son palabras compuestas exclusivamente por símbolos terminales.

Con reglas gramaticales se puede definir un lenguaje de programación. No
alcanza para determinar si compila. Pero alcanza para validar
*sintácticamente*.

También se puede llevar a la electrónica para validar un circuito.

# Lenguaje asociado

La gramática permite llegar a un lenguaje $L$. En el ejemplo, llegamos a
$L=\{aa, ab\}$.

Los símbolos no terminales no aparecen en el lenguaje. Por convención, los
símbolos no terminales se escriben en mayúscula y los terminales en minúscula.

A partir de una gramática se puede definir un lenguaje. A partir de un
lenguaje, se puede _inferir_ una gramática.

# Otra gramática de formal de ejemplo

$$G = (\Sigma_T, \Sigma_N, S, P)$$

$$\Sigma_T = \{a, b\}$$
$$\Sigma_N = \{S\}$$
$$P = \{S ::= aSb, S ::= ab\}$$


Notar que usando una sola regla $S$, de forma _recursiva_, podemos definir un
lenguaje. Tenemos un caso base $S ::= ab$ y un caso recursivo $S ::= aSb$.

Notar también que Este lenguaje se puede representar como la concatenación:
$a^n \cdot b^n$.

# Forma abreviada

Las reglas de pueden expresar $P = \{S ::= aSb, S ::= ab\}$ o
$P = \{S ::= aSb | ab\}$.

Permite expresar un símbolo no terminal con todas sus variantes.

# Gramática formal y recursividad

- $P = \{ N ::= CN|C, C ::= 0|1|2|3|4|5|6|7|8|9 \}$

Con estas reglas puedo tener recursividad a la derecha:

- $N \to CN \to 1N \to 1CN \to 12CN \to \cdots$

También podríamos tener recursividad a la izquierda, mediante la regla:
$N ::= NC$

# Jerarquía de Gramáticas

Las gramáticas se clasifican de acuerdo a las restricciones que se imponen.

Tipos de gramáticas. Establecidas por Chomsky. Hizo una jerarquía. Que
clasifica en cuatro conjuntos.

- Gramáticas regulares o Tipo 3

Las más restrictiva. A través de las reglas de producción, se definen las
palabras. Hay palabras no válidas.

- Gramáticas independientes del contexto o Tipo 2

Permiten un conjunto mayor de reglas para generar más palabras. Un poco más
laxa.

- Gramáticas sensibles al contexto o Tipo 1

Más laxa.

- Gramáticas irrestrictas o Tipo 0

Básicamente se puede definir cualquier cosa en esta gramática.

En el parcial podría aparecer: dadas estas reglas, ¿de qué tipo de gramática
estamos hablando? ¿Dadas estas reglas, de qué jerarquía es?

Viendo las reglas tenemos que saber determinar de qué tipo de jerarquía
estamos hablando.

# Ejemplos de gramáticas

Recordar: formado por cuatro elementos. Con eso podemos definir una
gramática. Con un _proceso de derivación_ vemos las combinaciones
posibles. Con eso llegamos a un _lenguaje_.

(Lo más interesante es ir del lenguaje a la gramática).

Este tema es clásico. Quedaría leer la teoría y resolver los ejercicios. Se
puede encontrar explicado de formas muy complicadas. No deja de ser lo mismo.
Una tupla que define una gramática que permite construir un lenguaje, haciendo
los ejercicios de derivación.

# Expresiones regulares

Es una aplicación práctica de las reglas gramaticales.
Es una forma de usar las reglas gramaticales.

Las expresiones regulares son una forma (rebuscada) de escribir una variación,
como la que hacemos para ir desde una gramática a un lenguaje.

En este caso, las expresiones regulares se usan para buscar y _validar_ datos.

# Definir un lenguaje

(Por ejemplo Java). Se puede definir un lenguaje con las reglas gramaticales.

(1:51:00)
