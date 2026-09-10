
// Ejercicio 1
Console.WriteLine("Ejercicio 1");
Person p = new Person();
p.Name = "Daniel";
p.Age = 35;
Console.WriteLine($"Persona 1: Nombre: {p.Name}, Edad: {p.Age}");

// Ejercicio 2
Console.WriteLine("\nEjercicio 2");
Person p2 = new Person();
p2.Name = "Noelia";
p2.Age = 34;

Person p3 = new Person();
p3.Name = "Eduardo";
p3.Age = 33;

Console.WriteLine($"Persona 2: Nombre: {p2.Name}, Edad: {p2.Age}");
Console.WriteLine($"Persona 3: Nombre: {p3.Name}, Edad: {p3.Age}");

// Ejercicio 3

Console.WriteLine("\nEjercicio 3");
BankAccount b = new();
b.Client = p;
b.Balance = 1000;

Console.WriteLine($"El titular de la cuenta es {b.Client.Name}, su saldo es {b.Balance}.");

// Ejercicio 4
Console.WriteLine("\nEjercicio 4");

Car c = new() { Brand = "Ford", Model = "F150 Raptor" };
Car c2 = new();

Console.WriteLine($"Primero tenemos una {c.Brand} {c.Model}.");
Console.WriteLine($"Y en segundo lugar un {c2.Brand} {c2.Model}.");

// Ejercicio 5
Console.WriteLine("\nEjercicio 5");

Car c3 = new() { Brand = "RAM", Model = "1500" };
Console.WriteLine(c3.GetInfo());

// Ejercicio 6
Console.WriteLine("\nEjercicio 6");

Calculator calc = new();
Console.WriteLine($"123 + 456 = {calc.Add(123, 456)}");

// Ejercicio 7
Console.WriteLine("\nEjercicio 7");

Console.WriteLine($"El titular de la cuenta es {b.Client.Name}, su saldo es {b.Balance}.");
Console.WriteLine("Depositando $ 100");
b.Deposit(100);
Console.WriteLine($"Nuevo saldo: $ {b.Balance}");

Console.WriteLine("Extrayendo $ 1100");
b.Withdraw(1100);
Console.WriteLine($"Nuevo saldo: $ {b.Balance}");

// Ejercicio 8
Console.WriteLine("\nEjercicio 8");

Engine Hemi = new(){ HorsePower = 395 };
c3.CurrentEngine = Hemi;
Console.WriteLine($"El motor de la {c3.Brand} {c3.Model} tiene {c3.CurrentEngine.HorsePower} caballos");

// Ejercicio 9
Console.WriteLine("\nEjercicio 9");
Course cs = new(5, "Programación Avanzada");
Student s = new() { Name = "Daniel", Age = 35 };
Console.WriteLine($"Inscribiendo a {s.Name}");
cs.AddStudent(s);
Console.WriteLine($"Inscribiendo a Noelia");
cs.AddStudent("Noelia");
Console.WriteLine($"Inscribiendo a Eduardo");
cs.AddStudent("Eduardo");

// Ejercicio 10
Console.WriteLine("\nEjercicio 10");
cs.PrintStudents();
