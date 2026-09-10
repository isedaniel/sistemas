---
title: Quinta Clase, Programación Avanzada I
date: 24 de abril
---

# Creando proyecto nuevo

Creamos proyecto con clase `program` y función `main` explícita.

`dotnet new console -o ejercicio1 --use-program-main`

# Clases

Por convención en C# cada clase va en su propio archivo. El archivo lleva el
mismo nombre de la clase.

Hacemos explícito el espacio de nombre de `Program.cs`, encabezando con
`namespace ejercicio1;`.

Editamos la configuración del proyecto y deshabilitamos _namespace implícito_.
`<ImplicitUsings>disable</ImplicitUsings>`.

Para los ejercicios de esta materia, por lo general, vamos a crear clases
públicas.

# Propiedades

Las creamos con `public string Marca { get; set; }`

# Métodos

`void Encender() { Console.WriteLine($"Encendido, {Marca}.");}`

# Testeamos

Con `dotnet run`, que compila, corre y limpia.

# Requerimientos para el parcial

- Figurar en el acta.
- Cámara encendida.
- Micrófono disponible.
- Resolvemos los ejercicios y subimos.
- El parcial se hace en el aula virtual.
- Hacemos un proyecto C# y entregamos un `.zip` del mismo.

# Polimorfismo

Mensaje es la comunicación entre objetos. Un objeto llama un método de otro
objeto. Es decir, por ejemplo, el método `main` llama al `Encender()` de
`Heladera`.

Polimorfismo implica que tenemos distintas clases, por medio de la _herencia_,
redefinan métodos. Un método, con el mismo nombre, se comporta de dos formas
diferentes.

En la clase base, por ejemplo `pulic class Electrodomestico`, declaro un método
como suceptible de ser sobreescrito, con `public virtual void Encender() {}`.

Luego, en la subclase, sobreescribo con `public void override Encender() {}`.
Declaro la subclase con `public class Heladera : Electrodomestico {}`.

Entonces, puedo tener clase base `Electrodomestico`, subclases `Heladera` y
`Microondas`. Y que `Encender()`, el mismo mensaje, se comporte de forma
distinta para cada objeto.

Puedo declarar un `Mamifero` con `Mamifero m = new Perro()`. Si tengo un
comportamiento propio del perro, pero no está en mamífero, tengo que hacer
_casting_. `((Perro)mamifero).rascarse()`. (Similar a C).

# Clase abstracta

Podemos definir comportamientos generales. Después la clase que hereda tiene
que especificar el comportamiento.

Una clase abstracta _no puede_ ser instanciada.

# Herencia de interfaz

Revisar en apunte.

# Sobrecarga de métodos

Mientras tenga firmas distintas, puedo volver a declarar métodos con el mismo
nombre.

La firma está compuesta por el identificador del método y los tipos de sus
argumentos. Ejemplo `int Sumar(int a, int b) {}` tiene firma `Sumar(int, int)`.

Puedo declarar un sumar que sume doubles. `double Sumar(double a, double b)`.
Tenemos firma `Sumar(double, double)`. Esta posibilidad de reutilizar el
identificador, cambiando la firma, se conoce como **sobrecarga** de un método.

# Sobrecarga de operadores

Podemos (re)definir los operadores. Esto se conoce como **sobrecarga de
operadores**.

Para eso sobrecargamos con `public static int operator +(int a, int b)`.

# Método .ToString()

Todas las clases tienen este método. Puedo sobreescribir cómo convertir nuestro
objeto en cadena.

`public override string ToString() { return "string"; }`

Cuando paso el objeto en `Console.WriteLine()` va a llamar a este método.

# Clases y métodos estáticos

No puedo instanciar una clase estática. Pero por un motivo distinto a una clase
abstracta.

Una clase abstracta está pensada para ser clase base de otras clases que van a
herdar de ella.

Una clase estática es para definir y llamar métodos auxiliares. Por ejemplo:

```csharp
public static class Matematica
{
    public static int Sumar(int a, int b) {}
}
```

Depués llamo con `Matematica.Sumar(1, 2)`. Defino métodos auxiliares que voy a
utilizar en mi programa.

# Genéricos

Vimos el tipo Lista. Por ejemplo, lista de racionales.
`List<Racional> racionales = new List<Racional>();`

Para usarla tenemos que encabezar con `using System.Collections.Generic`.

Pero podemos hacer nuestra propia lista con genéricos.

```csharp
public class ListaEnlazada<T>
{
    public T valor; // C# pone aquí lo que pasemos
    public ListaEnlazada<T> siguiente = null;
}
```

Creamos con:

```csharp
ListaEnalzada<Racional> nodo1 = new ListaEnlazada<Racional>();
nodo1.valor = new Racional(1, 2);

// Creamos otro nodo

ListaEnlazada<Racional> nodo2 = new ListaEnlazada<Racional>();
nodo1.siguiente = nodo2;

// Recorremos

ListaEnlazada<Racional> actual = nodo1;
while (actual != null)
{
    Console.WriteLine(actual.valor);
    actual = actual.siguiente;
}
```

También podría definir un método dentro de la lista para agregar elementos:

```csharp
public class ListaEnlazada<T>
{
    // ...
    public void Add(T elemento)
    {
        siguiente = new ListaEnlazada<T>() { valor = elemento.valor }
    }
}
```

# Excepciones

Permiten controlar el flujo de programa. Particularmente cuando pase algo
inesperado.

Hasta ahora controlamos con las estructuras tradicionales: `if`, `for`,
`while`.

Las excepciones se usan cuando pasa algo inesperado: disco lleno, no tengo
conexión, hubo un error, etc.

Una muy común es cuando dividimos un número por 0. Si tenemos una excepción no
controlada, el programa se termina, como en este caso. Para manejarla usamos un
bloque `try-catch`.

```csharp
try
{
    Matematica.Dividir(1, 0);
}
catch
{
    Console.WriteLine("No se puede dividir por 0.");
}
```

El programa continua su funcionamiento normal. Controlamos la excepción y el
flujo del programa sigue.

Siempre que vayamos a usar recursos del sistema: archivo, socket de red, etc.
Tenemos que gestionar estas excepciones.

Muchas veces, teniendo éxito o no, tenemos que devolver recursos al sistema.
Hacemos eso con un bloque `finally`.

```csharp
try
{
    // ...
}
catch
{
    // ...
}
finaly
{
    if (reader != null)
    {
        reader.Dispose();
    }
}
```

Otra forma de hacer esto es con un bloque `using`:

```csharp
using (StreamReader reader = File.OpenText("archivo.txt"))
{
    // ...
}
```

También podemos usar `throw` para lanzar una excepción. Hay muchos tipos de
excepciones que podemos lanzar. Por ejemplo:

```csharp
throw new InvalidOperationException("No se puede dividir por 0");
```

Después hago un `try-catch` que maneje la excepción:

```csharp
try
{
    // ...
}
catch (InvalidOperationException ex)
{
    // Gestiono InvalidOperation
    Console.WriteLine(ex);
}
catch
{
    // Gestiono el resto de excepciones
}
```

# Cast condicional

Puedo checkear el tipo de un objeto sobre una clase base. De ahí, según el
tipo, casteo y opero. (Se me ocurre que puedo también hacer un método virtual y
meter override en las subclases).

```csharp
if (empleado is Desarrollador)
{
    ((Desarrollador)empleado).Desarrollar();
}
else if (empleado is Disenador)
{
    ((Disenador)empleado).Disenar();
}
```

# Excepciones propias

Creamos una excepción propia `EdadInvalidaException`. Por convención, todas
terminas en `Exception`. Hereda de la clase base `Exception`.

```csharp
using System;

public class EdadInvalidaException
{
    public EdadInvalidadException : base() {}

    public EdadInvalidaException(string mensaje) : base(mensaje) {}
}
```

Tenemos 2 constructores. Uno por defecto que llama al constructor de
`Exception` y otro que manda le mensaje al constructor de `Exception` que
recibe una string.

La usamos:

```csharp
public class Validador
{
    public static void ValidarEdad(int edad)
    {
        if (edad < 18)
        {
            throw EdadInvalidaException("No puede ser menor a 18 años");
        }
    }
}
```

Por último, en `Main`, la manejamos con un bloque `try-catch`.

# Excepción interna

Cuando una función tira una `Exception`, puedo pasarle otra excepción, que
sería la _excepción interna_.

```csharp
try
{
    // ...
}
catch (InvalidOperationException ex) // Capturo en ex
{
    throw new Exception("Excepción!", ex); // Paso ex
}
```

Con una `InnerException`, puedo llamar luego `ex.InnerException.Message`, para
escalar una excepción entre niveles.

