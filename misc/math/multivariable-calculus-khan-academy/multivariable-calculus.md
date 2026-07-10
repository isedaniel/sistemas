---
title: Notes from Multivariable Calc, Khan Academy
---

# Vector-valued functions

Given a two-variable function $x$ and $y$, assume that both depend on a
parameter $t$, with $a \le t \le b$. This parametrized function can be
expressed in a two-axis graph.

This function can be written as: $\vec{r}(t) = x(t)\hat{i} + y(t)\hat{j}$.

Evaluating at $t = a + h$, with $h \to 0$, we approximate the concept of the
derivative of a vector-valued function.

# Curve described by a vector-valued function

A vector-valued function can describe a curve. Every vector points to a point
on the curve.

# Vector-valued function derivative example

Given a parametrized vector-valued function, $r(t) = (t, t^2)$. What does the
derivative mean? Given a second parametrization, $r_2(t) = (2t, 4t^2)$, the
graphic is the same, but gets to the same point with half the value of $t$. It
can be said that the second graph is *moving* faster than the first.

What happened with the derivative? $r' = (1, 2t)$. $r2' = (2, 8t)$.
The first derivative, evaluated at 1, returns a vector tangent to the curve.
The second derivative, evaluated at 1/2, returns the same direction. But the
second one got a bigger magnitude. So $r2$ is _faster_.

# Vector form of the multivariable chain rule

The multivariable chain rule can be written as a dot product of $\Nabla f|_v$
and $\vec{v}'(t)$.

This looks like a directional derivative. Instead of a vector, it uses a
derivative of a vector.

# Curvature of a Helix

It follows a vector-valued function: $\vec{s}(t) = (\cos(t), \sin(t), t/5)$.

The derivative is: $\vec{s'}(t) = (-\sin(t), \cos(t), 1/5)$.

The expression for the curvature is: $K = \frac{|dT/dt|}{|dS/dt|}$.

# Curvature cycloid

Vector-valued function: $\vec{S}(t) = (x(t), y(t)) = (t - \sin t, 1 - \cos t)$.

The expression for the curvature is:
$\kappa = \frac{x'y'' - y'x''}{((x')^2 + (y')^2)^{3/2}}$.

But the underlying idea is: derivative of the Tangent Unit Vector $\vec{T}$.

To solve any curvature, get: $x', x'', y', y''$ and solve the expression for
$\kappa$.

# Derivative of a vector-valued function

Given a vector-valued function, $V(t, s) = (t^2 - s^2, st, ts^2 - st^2)$, the
partial derivative can be computed for one or the other of the variables.

The partial derivative of a vector-valued fuction represent how the surface
$ts$ is transformed to a three-dimension surface in $xyz$, each coordinate 
resulting from its expression.

# Partial derivative of vector field

A vector field has the same number of input and output variable. E.g.: 
$\vec{V}(x, y) = (xy, y^2 - x^2)$.

A partial derivative in x will be: $\vec{v}_x = (y, -2x)$. A representation of
the partial derivative is a **Vector Field**.

# Compute curvature $\kappa$ for vector-valued functions

1. Compute function derivative: 
   $$\nabla \vec{S}$$

2. Normalize derivative: 
   $$T = \nabla s / |\nabla s|$$

3. Derivative of normalized vector:
   $$dT/dt$$

4. Magnitude of $T'$
   $$|T'|$$
   
5. Divide magnitude of $T'$ by $|\nabla|$

