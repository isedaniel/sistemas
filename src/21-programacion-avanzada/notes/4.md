---
title: Notas Cuarta Clase
author:
- Daniel
date: 17 de abril
---

# Herencia

Segunda relación que estamos viendo. Tenemos *clases* y *subclases* o clases
*hijas*. Las subclases comparten características en común con sus clases. Cada
subclase va *agregando* comportamientos a los que la clase ya tenía. De esta
manera se establece una *jerarquía de clases*.

C# no tiene implementación de herencia múltiple. Solo podemos heredar de una
clase.

# Clase abstracta

Definimos una clase que no puede ser instanciada, sino que se usa para la
jerarquía de clases exclusivamente.

Aunque no pueda ser instanciada, la clase abstracta puede usarse como tipo en
las declaraciones de variables o en las firmas de los métodos, como parámetro de
los mismos.

# Método abstracto

Mismo concepto pero para un método: la subclase es encargada de implementar el
método abstracto de una clase. Para implementarlo usamos la palabra clave
`override`.

# Herencia de constructores

Podemos definir un constructor en una clase base, y llamarlo desde una subclase:

```csharp
public Perro(string nombre) : base(nombre)
{
}
```

# Interfaz

Se puede heredar una interfaz, que implica que la clase cumpla con un
*contrato*, esto es, que implemente una serie de funciones.
Por convención, el identificador de una interfaz empieza con `I`.

```csharp
public interface IVolador
{
    void Volar();
}
```

De esta manera, una clase que implemente la interfaz `IVolador` tiene que
implementar el método `void Volar()`

```csharp
public class Insecto : Animal, IVolador
{
    public void Volar()
    {
        Console.WriteLine("El insecto vuela");
    }
}
```

La clase pública insecto hereda de la clase base `Animal`, y además implementa
la interfaz `IVolador`. Como C# no implementa la herencia múltiple, solo podemos
heredar de una clase base, pero podemos implementar más de una interfaz.

Adicionalmente, `Volar()` tiene que ser un método `public` para poder cumplir
con la interfaz. No podemos cumplir con interfaces con métodos privados.

Las interfaces no se pueden instanciar. Pero se pueden usar para declarar
variables o en firmas de métodos.

# Listas

En general, en C# no trabajamos con *Arrays*, sino con *Listas*. Lo que vinimos
haciendo hasta ahora era una forma de trabajar a *bajo nivel*, que puede ser
importante cuando el objetivo es el rendimiento. Sin embargo, por lo general
simplemente trabajamos con listas.

Para utilizar las listas, tenemos que traer las colecciones, con:

```csharp
using System.Collections.Generic;
```

Entonces podemos declarar.

```csharp
public class Biblioteca
{
    private List<Libro> _libros;

    public Biblioteca()
    {
        _libros = new List<Libro>();
    }

    public void AgregarLibro(string titulo, int anio)
    {
        Libro libro = new Libro();
        libro.Titulo = titulo;
        libro.Anio = anio;
        _libros.Add(libro);
    }

    public void ImprimirInventario()
    {
        foreach (Libro libro in _libros)
        {
            Console.WriteLine($"Título: {libro.Titulo} Año: {libro.Anio}");
        }
    }
}
```

La ventaja que tiene usar *listas* es que podemos modificar su tamaño en tiempo
de ejecución, no como los *arrays* que tienen una dimensión inmutable. En todo
caso tendríamos que crear nuevos arrays. De esta manera, la librería estándar de
C# nos ayuda a manejarnos sin problema.

# Actividades

- Leer la teoría.

- Hacer los ejercicios.

