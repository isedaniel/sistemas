---
title: Notas Tercera Clase
author:
- Daniel
date: 1/4/26
---

# Elementos que forman una gramática

- Alfabeto de símbolos terminales

- Alfabeto de símbolos no terminales

- Axiomas

- Reglas de producción

- TODO: Resolver ejercicios de gramáticas

# Jerarquías de Chosmky

1. Gramáticas regulares, tipo 3

2. Gramáticas independientes del contexto, tipo 2

  - Cuando una de las reglas tiene más de un símbolo no terminal:
  $A \to a\>|aS\>|bAA$

3. Gramáticas sensibles al contexto, tipo 1

  - Cuando en las reglas hay más de un no terminal a la izquierda.

4. Gramáticas irrestrictas, tipo 0

# Expresiones regulares

Son gramáticas tipo 3.

Representan un lenguaje regular.

$$\Sigma = \{a, b, c \cdots z\}$$

- $|$ unión: $a|b \to L = \{a\} | \{b\} = \{a, b\}$
  - Me hace un conjunto con la unión de los dos *conjuntos* anteriores

- $\cdot$ concatenación
  - Une dos símbolos. Se puede omitir el símbolo y se sobreentiende la
  concatenación: $abc = a \cdot b \cdot c$

- $^{*}$ clausura de Kleene
  - Genera todas las palabras que se pueden generar usando solo ese símbolo,
  incluido $\lambda$.

Ejemplo de expresión regular:
$$\{a | b\} \cdot c = \{a, b\} \cdot c = \{ac, bc\}$$

