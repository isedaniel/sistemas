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

# Sobrecarga de operadores

(00:53:00)
