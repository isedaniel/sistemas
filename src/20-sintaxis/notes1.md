---
title: Notas Primera Clase
author:
- Daniel
date: 18/3/26
---

# Condiciones de cursado

Todos los miércoles encuentros sincrónicos a las 18.30hs.

Evaluación práctica grupal.

Dos parciales teóricos individuales.

No usar IA, porque nos perdemos la chance de aprender.

La parte práctica trabajamos en el lenguaje que estemos más cómodos.

# De qué se trata la materia

Vamos a ir subiendo:
1. Símbolos
2. Lenguajes
3. Gramáticas
4. Autómatas

# Lenguajes naturales

Cada elemento tiene un significado.
Hasta las imágenes y dibujos.

Características.

1. Son ambiguos.
Tanto en significado (semántica) como en gramática.

2. El significado de las palabras pesa más que la sintaxis en la comunicación.

3. Evolucionan naturalmente con el tiempo.

4. Las reglas aparecen después del uso del lenguaje.

Esto NO es lo que vamos a estudiar.

# Lenguajes formales

Estos vamos a estudiar.

Características.

1. No pueden ser ambiguos

2. Solo tienen sintaxis, no semántica: sintaxis > semántica

3. No evolucionan/evolucionan muy lentamente

4. Las reglas preceden al lenguaje

La matemática es un ejemplo.
Un lenguaje de programación.

# Conceptos básicos

**Símbolos:** Elementos de un alfabeto.
Son fundamentales e indivisibles.

**Alfabeto:** Conjunto finito, no vacío, de símbolos:

$\Sigma_1 = \{a, b, \dots z\}$

$\Sigma_2 = \{1, 2, \dots 9, 0\}$

$\Sigma_3 = \{ /, *, +, - \}$

**Palabra:** Secuencia finita de símbolos. Con un alfabeto puedo hacer infinitas
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

