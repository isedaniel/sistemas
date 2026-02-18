---
documentclass: article
classoption:
- twocolumn
---
# The Physics Two Official Machet

Trying MathJax.
<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

## Unidad 1

### Ley de Coulomb

$$F = k \frac{q_1q_2}{r^2}$$

La Fuerza Electrostática $F$ es el producto de las cargas $q_1$ y $q_2$,
multiplicadas por la Constante de Coulomb $k = 9 \times 10^{9} \frac{Nm^2}{C^2}$,
dividido por el cuadrado de la distancia $r$ entre las mismas.

$k$ se puede expresar como:

$$k = \frac{1}{4\pi\epsilon}$$

Siendo $\epsilon$ la permitividad en el vacío, de valor aproximado $\epsilon = 8.85 \times 10^{-12} \frac{C^2}{Nm^2}$.

### Campo eléctrico

$$E = \frac{F}{q_0} = k\frac{Q}{r^2}$$

El campo eléctrico $E$ es la fuerza electrostática $F$,
producida por una carga fuente $Q$,
dividida por una carga de prueba $q_0$.

### Flujo eléctrico - Ley de Gauss

$$\phi = E \, A \, \cos\alpha$$

El flujo es la cantidad de líneas del campo eléctrico $E$
que atraviesan una superficie $A$,
mientras mantienen entre ellas un ángulo $\alpha$.

Si la superficie es una esfera cerrada,
y la carga de origen $Q$ se encuentra dentro de la misma,
la expresión para el flujo es:

$$\phi = \frac{Q}{\epsilon}$$

Es decir, carga fuente $Q$ sobre permitividad $\epsilon$.


## Unidad 2

### Trabajo para trasladar una carga

$$W = qV$$

Donde el trabajo $W$ es el producto de la carga $q$
y la diferencia de potencial $V$ entre los puntos.

### Capacitancia

$$C = \kappa \epsilon \frac{A}{d}$$

Siendo capacitancia $C$,
de un capacitor de platos paralelos,
el producto de la constante dieléctrica $\kappa$ (1 en el vacío y en el aire),
permitividad del espacio $\epsilon$, 
área $A$ de los platos y distancia $d$ entre ellos.

Se mide en _faradios_ $F$.

### Capacitores en serie

Dados capacitores en serie, la capacitancia total es:

$$\frac{1}{C_T} = \frac{1}{C_1} + \frac{1}{C_2}$$


## Unidad 3

### Corriente

$$I = \frac{q}{t}$$

La corriente $I$, medida en _amperes_ $A$,
es el cociente entre la cantidad de carga $q$,
que atraviesa un punto en un intervalo de tiempo $t$.

### Ley de Ohm

$$V = IR$$

Relaciona el potencial eléctrico $V$,
la corriente $I$ y la resistencia $R$, en _ohms_ $\Omega$.

### Resistencia

$$R = \rho\frac{L}{A}$$

Resistencia $R$ de un conductor uniforme,
de resistividad $\rho$ (_ohms metro_),
largo $L$ y área transversal $A$.


## Unidad 4

### Fuerza magnética

$$F = qvB \sin\theta$$

Siendo la fuerza magnética $F$, medida en _newtons_,
el producto de la carga $q$,
la velocidad de la partícula $v$,
la fuerza del campo magnético $B$, medida en _teslas_ $T$,
y $\theta$ el ángulo entre el vector velocidad y el campo magnético.

### Magnitud del campo magnético de un cable

$$B = \frac{\mu_0 I}{2\pi r}$$

La magnitud del campo magnético $B$, en _teslas_,
es el producto de la permeabilidad del espacio $\mu_0$,
generalmente $4\pi \times 10^{-7}\,\text{Tm/A}$,
la corriente $I$ en el cable,
y la distancia perpedicular $r$ desde el cable hacia el punto.


## Unidad 5

### Equivalencia de transformadores ideales

$$V_1 / V_2 = N_1 / N_2$$

La relación entre los voltajes de un transformador ideal
es igual a la relación entre el número de sus respectivas espiras $N$.

### Equivalencia de potencias

Se basa en el principio de conservación de la energía,
que establece que en un transformador ideal la entrada de potencia es igual a la salida:

$$V_1 \times I_1 = V_2 \times I_2$$


## Unidad 6

### Inductancia

$$L = \mu \frac{N^2A}{l}$$

La inductancia, medida en _henry_ $H$,
resulta de la permeabilidad magnética $\mu$,
medida en _henrios por metro_ $H/m$,
el número de espiras $N$, valor adimensional,
el área transversal $A$ correspondiente al solenoide,
sobre la longitud $l$.

### Reactancia

$$X_L = 2\pi f L$$

La reactancia $X$, en _ohms_,
resulta del producto de la frecuencia $f$, en _hertz_,
y la inductancia, en _henrys_.

### Fuerza electromotriz

$$\mathcal{E} = B l v$$

La fuerza electromotriz $\mathcal{E}$, en _volts_,
es el producto del campo magnético $B$,
la longitud $l$ del conductor y la velocidad del conductor $v$,
perpendicular al campo.

### Fórmula de carga del capacitor

$$V_C = V_0 (1 - e^{-t/RC})$$

Siendo el voltaje $V_C$ el resultado del producto del voltaje inicial $V_0$,
y la diferencia entre 1 y $e$ elevado al tiempo $t$ sobre la resistencia $R$
y la capacitancia $C$.

$RC$ se conoce también como constante de carga $\tau$, en _segundos_.

### Ley de Inducción electromagnética

$$\mathcal{E} = -N \frac{d\Phi}{dt}$$

Siendo la fuerza electromotriz $\mathcal{E}$ el negativo del producto del 
número de espiras $N$, y la razón de cambio del flujo magnético,
en _webers_ $W$.
Es negativo por la ley de Lenz, porque la fuerza electromotriz inducida es opuesta
al cambio en el flujo magnético que la produce.


