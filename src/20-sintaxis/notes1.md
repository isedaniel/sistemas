---
title: Notas de clase
author:
- Daniel
date: 18 de marzo
---

# Condiciones de cursado

Todos los miércoles encuentros sincrónicos a las 18.30hs. Evaluación práctica
grupal. Dos parciales teóricos individuales. Se recomienda no usar IA, porque
nos perdemos la chance de aprender. La parte práctica trabajamos en el lenguaje
que estemos más cómodos. En la segunda parte de la materia vamos a enfocarnos
en la práctica, con un trabajo práctico grupal.

# Contenido de la materia

Es una materia bastante teórica. No difícil, pero abstracta. La teoría no suele
ser un problema, pero se recomienda ejercitarse con la práctica disponible. Los
ejercicios no son obligatorios, pero son recomendables.

Es una materia fundamental, para todas las ciencias de la computación. Es
importante que la manejemos bien. Se nota cuando no es así. Es todavía más
importante en la era de la inteligencia artificial.

Vamos a ir subiendo:

1. Símbolos $\to$ 2. Lenguajes $\to$ 3. Gramáticas $\to$ 4. Autómatas

Esto está por debajo de los lenguajes de programación en términos de
abstracción.

# Lenguajes naturales

Cada elemento en un lenguaje natural tiene un significado. Hasta las imágenes y
dibujos.

Características.

1. Son ambiguos. Tanto en significado (semántica) como en gramática.

2. El significado es más importante que la sintaxis: un mensaje mal escrito (en
   términos sintácticos) puede entenderse bien.

3. Evolucionan con el tiempo.

4. Las reglas aparecen después, para sistemtizar el uso del lenguaje.

Esto NO es lo que vamos a estudiar.

# Lenguajes formales

Estos vamos a estudiar.

Características.

1. No pueden ser ambiguos.

2. Solo tienen sintaxis, no semántica: sintaxis > semántica

3. No evolucionan. Si un lenguaje formal cambia, se trata de dos lenguajes
   distintos.

4. Primero se definen las reglas $\to$ luego se define el lenguaje.

La matemática es un ejemplo. Un lenguaje de programación es otro.

# Conceptos básicos

**Símbolos.** Elementos básicos. Son fundamentales e indivisibles. Forman
alfabetos —e. g.: $/$, $A$, $\Lambda$.

**Alfabeto.** Conjunto finito, no vacío, no ordenado, de símbolos —e. g.:

$\Sigma_1 = \{a, b, \dots z\}$

$\Sigma_2 = \{1, 2, \dots 9, 0\}$

$\Sigma_3 = \{ /, *, +, - \}$

**Palabra.** Secuencia finita de símbolos. Con un alfabeto puedo hacer infinitas
palabras.

**Palabra vacía:** se simboliza $\lambda$.

# Operaciones con palabras

**Longitud:** Cantidad de símbolos que tiene:

$$|\text{perro}| = 5$$

$$|\lambda| = 0$$

**Concatenación:** produce una nueva palabra uniendo la primera cadena con la 
segunda:

$$\text{Buenos} \cdot  \text{Aires} = \text{BuenosAires}$$

$$\text{Perro} \cdot \lambda = \text{Perro}$$

Es asociativa pero no conmutativa.

**Potenciación:** concatena una palabra consigo misma una determinada cantidad de
veces:

$$(\text{bla})^3 = \text{blablabla}$$

$$(\text{Perro})^0 = \lambda$$

**Inversión, reflexión, transposición:** 
inversión del orden de los símbolos que componen una palabra:

$$(\text{arbol})^{-1} = \text{lobra}$$

Si invierto el resultado, vuelto a la palabra original:


$$(\text{lobra})^{-1} = \text{arbol}$$

# Lenguajes

**Lenguaje universal, clausura de Kleene:**
todas las combinaciones posibles de símbolos dado un alfabeto.

Este conjunto es infinito,
dado que las combinaciones posibles de símbolos son infinitas.

**Lenguaje:**
es un subconjunto del lenguaje universal,
por ejemplo, determinamos las palabras reservadas y las reglas
para nombrar variables.

# Operaciones con lenguajes

**Unión:**
genera un nuevo lenguaje uniendo las palabras de ambos:

$$L_1 \cup L_2 = \{aa, ab, bb, ba\}$$

**Concatenación:**
genera un nuevo lenguaje concatenando cada palabra de uno con cada 
palabra de la del otro:

$$L_1 \cdot L_2 = \{aabb, abbb, aaba, abba\}$$

**Potenciación:**
concatena un lenguaje consigo mismo _n_ veces.

$$(L_1)^2 = L_1 \cdot L_1 = \{aa,ab\} \cdot \{aa, ab\}$$

# Ejercitación

Leer el apunte teórico.

Hacer los ejercicios del punto 6.

