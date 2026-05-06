
---
title: Tercera Clase de Sintaxis y Semántica del Lenguaje
date: 1 de abril
---


# Repaso gramática formal

- $(\Sigma_T, \Sigma_N, S, P)$
  * Alfabeto de símbolos terminales $\Sigma_T$
  * Alfabeto de símbolos no terminales $\Sigma_N$
  * Axioma $S$
  * Reglas de producción $P$


# Jerarquías de Chosmky

- Gramáticas regulares, tipo 3

- Gramáticas independientes del contexto, tipo 2
  - Cuando una de las reglas tiene más de un símbolo no terminal:
  $A ::= a|aS|bAA$

- Gramáticas sensibles al contexto, tipo 1
  - Cuando en las reglas hay más de un no terminal a la izquierda.

- Gramáticas irrestrictas, tipo 0
  - No puedo establecer reglas para estas gramáticas

La jerarquía de Chomsky se basa en las gramáticas formales. Según las
restricciones que la gramática impone.


# Gramática regular o de tipo 3

Las clasificaciones no son sobre reglas. Sino sobre toda la gramática.

- Gramáticas regulares a derecha: Un símbolo no terminal a la derecha

- Gramáticas regulares a izquierda: Un símbolo no terminal a la izquierda.


# Gramática independiente del contexto o tipo 2

Tiene más de un símbolo no terminal, a derecha o izquierda.


# Gramática sensible al contexto o tipo 1

$|lado\>izquierdo| <= |lado\>derecho|$


# Expresiones regulares

Son gramáticas tipo 3. Representan una gramática regular.

$$\Sigma = \{a, b, c \dots z\}$$

Las expresiones regulares (RE) tienen operaciones. Su _output_ es un Lenguaje.

- unión $|$: $a|b \to L = \{a\} | \{b\} = \{a, b\}$

La unión _une_ dos conjuntos de palabras.

- concatenación $\cdot$: $abc = a \cdot b \cdot c$

Ojo que es la concatenación de un lenguaje. Concateno cada palabra del primer
lenguaje con cada palabra del segundo lenguaje. La RE me devuelve un nuevo
lenguaje.

Normalmente el símbolo se omite y se asume concatenación cuando los símbolos
están uno al lado del otro.

- Clausura de Kleene $^*$: $a^* = \{\lambda, a, aa, \dots\}$

Genera todas las palabras que se puedan formar dado un lenguaje.

- Ejemplo de expresión regular:

$\{a | b\} \cdot c = \{a, b\} \cdot c = \{ac, bc\}$

Primero tengo el lenguaje de la unión entre a y b. Luego a ese lenguaje le
concateno el lenguaje c. El resultado es el lenguaje $\{ac, bc\}$.


# Ejemplo 2 de RE

$bba^* = \{bb\}\{\lambda, a, aa, \dots\} = \{bb, bba, bbaa, \dots\}$

Lo importante es recordar que con RE estamos trabajando con lenguajes, es
decir, conjuntos de palabras. Cada nivel tiene sus propias operaciones con sus
reglas a las que prestar anteción.


# Ejemplo 3

$((a|b)(a|b))^* = (\{a, b\}\{a, b\})^* = (\{aa, ab, ba, bb\})^*$

Entonces, Kleene con todas estas palabras:

$\{ \lambda, aa, ab, ba, bb, aaaa, aaab, \dots \}$

Notar que el símbolo concatenación está entre los lenguajes $\{a, b\}$, de
forma implícita.


# Ejemplo 4

Identificar todas las descripciones que corresponden a escuelas públicas.

El formato general es <escuela><numero><99><nombre>.


# Gramática tipo 3

Como las expresiones regulares son una gramática de tipo 3, no consideran lo
que tienen en su contexto. La potencia de las RE es que el algoritmo para
utilizarlas es muy sencillo.


# RE desde el punto de vista de la programación

Agrega operadores. Referidos, por ejemplo, a cómo comienza una cadena. Cómo
termina. Cuántas repeticiones de un símbolo esperamos. Símbolos para
representar conjuntos, como `\w`.

Si bien tienen sus coincidencias, cada biblioteca puede tener sus matices. Por
ejemplo, dependiendo del lenguaje de programación.

También van cambiado con el tiempo. En un programa viejo, con una versión de la
librería de RE, puede funcionar. Pero actualizas la librería y ya no corre.

Las RE pueden cambiar por los entornos también. La implementación de las
librerías para diferentes plataformas puede variar.

