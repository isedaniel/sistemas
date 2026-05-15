---
title: Programación avanzada I Primera Clase
author:
- Daniel
date: 20/3/26
---

# Objetivos

Vamos a trabajar con C#. Trabajamos el Backend.
Pero se puede aplicar casi a cualquier lenguaje de programación orientado a 
objetos.

Tenemos que instalar .NET para la próxima clase.
Los ejercicios los vamos a resolver en C#.

# Contenidos

Unidades:

1. Programación orientada a objetos

2. Herencia

3. Base de datos

4. Servicios

# Instancias de evaluación

Dos parciales. Uno al final de la unidad 2. Uno al final de la unidad 4.

Cámara prendida, micrófono listo, DNI en mano, figurando en acta.

Promoción con promedio mayor a 7, nota mínima de 6. 

También hay trabajos prácticos en grupo que hay que resolver.

# Condiciones cursada

A las 18.30 comienza la clase. A las 18 hay consulta.

# Programación orientada a objetos. Introducción histórica.

Primero teníamos ensamblador. Este código está _acoplado_ a la arquitectura 
del procesador.

Después surge la programación estructurada,
sin `goto`,
dejando de estar acoplado a la arquitectura del procesador.

A mediados de los 80 hay una crisis en el desarrollo.

El desarrollo llevaba mucho tiempo. La mano de obra era lo más caro.
El nivel de complejidad era alto.
Se impide el mantenimiento y reutilización.
Se buscan soluciones.

Ya habían surgido soluciones en la década del 60, 
entre ellas,
la programación orientada a objetos.
Había surgido con el lenguaje `simula`.

Este lenguaje trataba de facilitar la simulación de situaciones.
Estas ideas se retoman en la década del 80.
Se le da un alcance más general.
Ya no se trata solo de simulación.
Se lleva a la programación de propósito general.

Así surgen lenguajes como `C++`. `Smalltalk`. 

# Paradigma OOP

4 pilares:

1. Encapsulamiento

2. Herencia

3. Polimorfismo

4. Abstracción

Son estrategias para facilitar el mantenimiento y reutilización del código.

**Abstracción:** Nuestros objetos tienen que ser lo mínimamente detallados 
posible. Tener en cuenta solo las características relevantes para el problema en 
cuestión.

**Encapsulamiento:** No hacer públicos los detalles, salvo que sea necesario.

## Unidad fundamental de construcción: la clase

Es un _blueprint_, un plano en que basamos nuestros objetos.

Una clase define la forma del objeto, pero _no es el objeto_.

Separamos el objeto en _atributos_ y _métodos_.

**Atributos:** características del objeto. Color, peso. Variables o constantes,
propias del objeto.

**Métodos:** comportamientos del objeto.

Ejemplo:
Gato: Atributos: Color, peso. Métodos: maullar(), saltar()

## Algunas características de C\#

Es un lenguaje que compila a código _bytes_ para una máquina virtual.
Propio del intérprete de la máquina virtual.

Tiene la misma idea de Java, de programar una vez y que funcione en cualquier
arquitectura.

El `runtime` le dice al procesador que hacer. Es distinto a compilar a código 
máquina como hace un compilador de `C` por ejemplo.

Lo **importante para poder compilar** es el archivo del proyecto y el archivo
\*.cs.

Para crear el proyecto: `dotnet new console -o PATH`

Para restaurar el proyecto: `dotnet restore`

Para compliar: `dotnet build`

Para correr: `dotnet run`

Generalmente mandamos directo `dotnet run` que corre incluye a los otros dos.

## Clase de ejemplo

```csharp
class Persona
{
    public string Nombre = "";
    public string Apellido = "";
    private int _edad = 0;
    private int dni = 0;
}
```

Snipet básico para crear una clase.
Ya vemos la Abstracción.
Estos no son los únicos atributos de una persona real.
Pero son los datos que serían relevantes para nuestro sistema.

Los atributos por defecto son privados.

Por convención, todo atributo público en C\# tiene nombre con `PascalCase`,
arrancan con mayúscula.

Los privados arrancan con `_`. Aunque también puede ser minúscula.

En C\# no se llaman atributos, sino campos o _field_.
Un atributo en C\# es lo que en Python sería un _decorador_.

## Métodos 

Se declaran en la clase.

Refieren a los comportamientos propios de una clase.

Un _mensaje_ es pedirle a un objeto que ejecute un método:

```csharp
class Persona
{
    public void Presentarse() { ... }
}

Persona p2 = new Persona();

p2.Presentarse(); // Mensaje a la instancia de la persona
```

También se puede declarar:

```csharp
var p3 = new Persona();

Persona p4 = new();
```

# Condiciones uso de IA

Se puede usar, pero la condición es que hay que entender todo el output.

Si en la evaluación no sabemos defender el código, tenemos problemas.

