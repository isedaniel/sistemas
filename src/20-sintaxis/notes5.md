---
title: Quinta Clase de Sintaxis y Semántica del Lenguaje
date: 22 de abril
---

Por qué es relevante profundizar hoy en Sistemas. Porque no estamos estudiando
para ser usuarios. Estamos estudiando para ser ingenieros.


# Simplificación de Autómata Finito Determinístico (AFD)

Si una matriz es muy grande, puede repercutir en la _performance_ de mi
proceso.

Si un nodo tiene que bajar a una placa también. Si representa un proceso
organizacional ni hablar. Una matriz complicada incrementa los costos.

Por eso vamos a ver cómo se **simplifica** una matriz.

Recordar que un autómata puede ser determinístico o no determinístico. Depende
de si, dado un nodo y una entrada, el nodo de destino es siempre el mismo. Si
no es siempre el mismo, sería un _autómata no determinístico_.

Para cualquier AFD, existe un AFD mínimo. La simplificación genera este mínimo.
(Al nodo final le ponemos un `+` en la columna de nodos).

# Comportamiento

Un *comportamiento* es una tupla con los posibles nodos a los que puedo ir
desde un estado. Ejemplo, estoy en `q0`. El comportamiento será `q0 = (q1, q0)`

Determino comportamientos para cada nodo. Una vez determinados, buscamos
_comportamientos equivalentes_.

Los *comportamientos equivalentes* cumplen con:
  - Igual comportamiento
  - Son compatibles

Dos nodos son compatibles: Ambos son finales o no finales.
Son incompatibles cuando: uno es final, el otro no final.

Los agrupo por finales y no finales. Es decir, agrupo compatibles. Por ejemplo,
nodos `clase 0` los no finales. `clase 1` los finales.

Sustituyo comportamientos: `q0 = (clase 1, clase0)` `q1+ = (clase 1, clase 0)`.
`q2 = (clase 0, clase 1)` `q3+ = (clase 1, clase 0)`.

Notar que `q0` y `q2` quedaron en la misma clase, pero tienen comportamientos
diferentes. Por tanto, vuelvo a dividir sus clases. En `q1+` y `q3+` no hago
nada, porque su comportamiento quedó igual.

Sustituimos de nuevo.
```
q0  = (clase 1, clase 0) // clase 0
q2  = (clase 2, clase 1) // clase 2
q1+ = (clase 1, clase 2) // clase 1
q3+ = (clase 1, clase 2) // ...
```

De aquí en adelante no puedo clasificar más. Están divididos por comportamiento
y compatibilidad. Como no puedo separar, los de la misma clase son
*equivalentes*.

Desaparece `q3+`. Las apariciones de `q3+` se convierten en su equivalente
`q1+`.

Así llego al famoso AFD mínimo, luego del proceso de simplificación.

Tanto original como mínimo validan las mismas palabras.


# Autómatas Finitos Determinados (AFD) equivalentes

Dados dos grafos, determinar si son equivalentes. Usar fuerza bruta con
palabras parecería no ser el mejor método.

Por ello tenemos un método formal.

- Teorema de Moore

Construyo un árbol de estados.

Característica del árbol: no hay ciclos. No hay un camino que permita volver al
punto de partida. Tenemos un nodo *raíz* y, a medida que vamos bajando,
llegamos a las *hojas*.

A medida que lo armo incluyo los nodos. Si encuentro un nodo con estados
incompatibles: autómatas distintos. Si **no** encuentro estados incompatibles:
son autómatas equivalentes.

```
 s0,q0 // Armo primer nodo mezclando los nodos iniciales
/
a // Entra la A, qué nodos obtengo.
|
s1,q1 // Ambos son finales, por lo tanto no con incompatibles.

 s0, q0 // pruebo con b
/
b
|
sq,q0 // Es el mismo nodo. En Moore se admiten rulos a pesar de árbol

// Buscamos en s1,q1

s1,q1 -a-> s1,q1 // Nuevo rulo, probamos con b

s1,q1 - b -> s0, q2 // Son compatibles, no son finales
```

Una vez que analizamos todos los nodos, y no encontramos nodos incompatibles,
es decir, uno intermedio y otro final, demostramos que los autómatas son
equivalentes.


# Método de conversión de autómatas finitos NO determinísticos (AFND) en AFD

Para salvar las ambigüedades, agregamos nodos. No vamos a profundizar para
enfocar en otras cosas. Pero básicamente involucra incorporar más nodos o
aristas.


