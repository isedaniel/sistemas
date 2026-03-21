
Persona p = new Persona { 
    Nombre = "Daniel",
    Apellido = "Ise",
    Edad = 35,
    Dni = 123456 
};

Persona p2 = new Persona();
p2.Nombre = "Noelia";
p2.Apellido = "Ibarra";
p2.Edad = 34;
p2.Dni = 456789;

p.Presentarse();
p2.Presentarse();

Console.Read();