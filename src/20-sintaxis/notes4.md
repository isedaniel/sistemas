---
title: Cuarta Clase de Sintaxis y Semántica del Lenguaje
date: 8 de abril
---

# Jerarquía de Chosmky

Permite clasificar gramáticas de acuerdo a sus reglas. Los lenguajes de
programación son de tipo 2 y algunas cuestiones de tipo 1.

De acuerdo a las reglas, genero los lenguajes. Puede haber un ida y vuelta.
Desde un lenguaje busco una gramática.

También están los autómatas. Son máquinas de datos que pueden procesar
símbolos. Las gramáticas se vinculan también con autómatas al igual que con los
lenguajes. Y los autómatas con los lenguajes.


# Autómatas

Son máquinas de datos que procesan símbolos.

Los autómatas también tienen niveles, al igual que la jerarquía de las
gramáticas. Cada nivel de las gramáticas se relaciona con un tipo de autómata.

Sigue habiendo cuatro niveles de lenguajes, gramáticas y autómatas. Cada nivel
se relaciona entre si.


# Tipos de autómatas

- Autómatas tipo 0: máquina de Turing

- Autómatas tipo 1: Autómatas limitados linealmente.

- Autómatas tipo 2: Autómatas de pila

- Autómatas tipo 3: Autómatas finitos

// TODO: investigar máquina de Turing

Es un autómata, pero una herramienta super importante en informática. Muchos
algoritmos se basan en la máquina de Turing para demostrarse. Es un elemento
teórico central de las ciencias de la computación.

Una máquina de Turing puede correr cualquier cosa. Aunque es complicada para el
trabajo cotidiano.


# Autómata

Se parece a las gramáticas. En este caso lo definimos como una tupla de 5
elementos. $A = (K, \Sigma, s, F, f)$

- K: conjunto finito de estados

- $\Sigma$: alfabeto de símbolos de _entrada_

- s: estado inicial, que pertenece a K $s \in K$

- F: conjunto de estados finales, $F \in K$

- f: funciones de transición, colecciones de reglas.


# Repaso de grafos

Tenemos nodos (estados) y aristas.

Qué sería un estado. Representa una condición del sistema. Por ejemplo,
representando un auto. Una condición del sistema puede ser `Apagado`. Otra
condición `Encendido y detenido`. Y la tercera `En movimiento`. Cada estado
representa _valores de los atributos del sistema_.

Cada nodo representa distintos estados del sistema. Cada estado representa
valores que asumen las variables del sistema.

Un estado cambia siguiendo una arista. Hay distintos tipos de aristas.


# Autómatas finitos

Estoy en el estado `i`. Si recibo `a`, me voy por arista `a`. Si recibo `b`, me
voy por arista `b`.

Un _autómata finito no determinístico_ me puede llevar, con entrada `a`, tanto
a nodo `j` como a `k`.

En un _autómata finito determinístico_, por cada entrada, me lleva a un estado.


# Autómata finito determinístico (AFD)

Tengo 3 estados. Un inicio. Un fin (o fines). Un intermedio (o intermedios).

Inicio: representa el estado inicial del autómata. Solo puede ser uno.

Fin: representa el estado final del autómata. Pueden ser varios.

Las transiciones, en el medio, pueden ser muchas.
Pero siempre hay un inicio y un fin.

Los estados finales pueden ser muchos, no necesariamente uno.

Esta representación de estados se conoce como _diagrama de transiciones._

Al _estado inicial_ hay que marcarlo, para saber dónde empieza. Siempre tiene
que estar explicitado. Se puede explicitar con una flecha que diga `INICIO`.

En las aristas nombramos las _transiciones_, que nos llevan de un estado a
otro.

# Actividad del autómata

Puede validar una palabra. Por ejemplo, tengo el autómata:

Inicio -> Estado 0 - a -> Estado 1 - b -> (Estado 2)

La palabra `ab` es válida. Porque puedo iniciar en 0. Ingresar `a`e ir 1.
Ingresar `b` y terminar en 2. `ab` es válida.


# Otro ejemplo

- Conjunto finito de estados: $K = \{ q1, q2, q3 \}$

- Alfabeto de entradas: $\Sigma = \{ a, b \}$

- Estado inicial: $q1$

- Estado final: $F = \{ q3 \}$

- Funciones de transición: $f = \{ ((q1, a), q2), ((q2, b), q1),
  ((q2, a), q3), ((q3, b), q1) \}$

Con las funciones de transición podemos definir un grafo.

La función de transición es una tupla, compuesta por: 
((estado, entrada), destino).

Aunque el autómata esté en el estado final, recibiendo la entrada adecuada
puede volver a salir del estado final.

Para ser válida, una palabra tiene que empezar por el estado de origen y llegar
al estado final.

Con cada palabra podemos correr un programa, por ejemplo: `aa`, arranco en
`q1`, me voy a `q2` y de ahí a `q3`. Como arranco del inicio y llego al final,
la palabra es _válida_. La palabra `ab` por ejemplo me dejaría en el nodo `q1`,
por lo tanto no es una palabra válida.


# Matriz de transición

Es lo mismo que un autómata escrito como un grafo. O como una tupla. Pero
escrito como una matriz.

Esta matriz se denomina matriz de transición. Las entradas van en las columnas.
Los nodos de estado en las filas. Las celdas muestran el resultado de cada
entrada para cada estado. Representando el ejemplo como matriz de transición:

| f  | a  | b  |
|----|----|----|
| q1 | q2 | -  |
| q2 | q3 | q1 |
| q3 | -  | q1 |

Esto de usar matrices es natural para los sistemas. De hecho, una `GPU` se
especializa en esto. A los seres humanos capaz nos confunde, pero a la máquina
le gusta.

Además es fácil de implementar. La contra puede ser que ocupan mucha memoria.

Para los sistemas, lo mejor es la matriz. Para los seres humanos, lo más
simple y visual: el grafo.

De la expresión formal podemos ir al gráfico o la matriz. Y respectivamente.

# Autómatas

Hasta ahora vimos que un autómata valida o no una palabra. Más adelante vamos a
ver cómo son las salidas de los autómatas.


# Construir un autómata a partir de una Expresión Regular (RE)

Dada una RE, queremos ir a un grafo o matriz de transición.

- Concatenación:
  * RE: `ab`
  * Grafo: (I) -`a`-> (J) -`b`-> (K)

- Unión:
  * RE: `a|b`
  * Grafo: (I) -`a`-> (J) (tengo dos caminos)
               -`b`->

- Clausura de Kleene: 
  * RE: `a*`
  * Grafo:
    (I)>`a*` (sale y vuelve a entrar en el mismo nodo).

Tengo `(a|b)cd*`. Nodo de inicio es `I`, nodo final `Z`. For cada símbolo es
un camino para llegar de inicio a fin.

Entonces, arranco en `I`, puedo ir a `J` por `a` o `b`, de `J` voy a `Z`
por `c`, y `d` arranca y termina en `Z`. Ese sería el grafo.

Entonces, una palabra válida para este autómata sería: `acd`, `acddddd`, `bc`,
etc.

# Gramática regular a autómata finito

Tengo `G = (V_t, V_n, A, P)`. `V_t = {a, b, c}`, `V_n = {A, B, C}`.
`P = {A ::= aA|bB, B ::= aA|bC, C ::= aC|bC|c}`

Con esto podemos hacer el grafo.

| k | a | b | c |
|---|---|---|---|
| A | A | B | - |
| B | A | C | - |
| C | C | C | Z |


# Máquinas de Mealy y Moore

Hasta aquí los autómatas nos decían si una palabra era válida o no. Ahora
tendremos unos detalles más.

Las máquinas de Mealy y Moore son autómatas que generan _salidas_.

Tenemos elementos adicionales.

- `S`: alfabeto de símbolos de salida

- `g`: funciones de salida, para cada par Estado K y Entrada Sigma:
  `K x Sigma -> s`

- Máquina de Mealy: salidas asociadas a transiciones

- Máquina de Moore: salidas asociadas a estados

A medida que hacemos una transición, tenemos una _salida_.

Ejemplo:

- $K = \{ q_1, q_2, q_3 \}$ `// nodos`

- $\Sigma = \{ a, b \}$

- $S = \{ 0, 1 \}$ `// salidas`

- $f = \{ ((q1, b), q2) \cdots \}$: funciones de transición

- $g \{ ((q1, b), 1) \cdots \}$: funciones de salida

En la matriz de transiciones ponemos `q2/1`. para referirnos a que con la
entrada `b` me muevo a `q2` y emito un `1`, esa es la idea central.

En el diagrama de transiciones, en las _aristas_, ponemos `b/1`, para referirme
que, estando en `q1`, si recibo una `b`, me voy `q2` y emito `1`.


# ¿Cómo determino si es _Mealy_ o _Moore_?

Viendo _todas_ las salidas de _todas_ las transiciones.

Si la salida depende de la transición que _recibe_ mi nodo, es máquina de
_Mealy_.

Si la salida depende del estado de origen, es máquina de _Moore_. Si todo nodo
recibe igual salida, es Moore.

Esta diferencia tiene consecuencias.

Se puede pasar de una máquina a otra.

