// Ejercicio 1
Console.WriteLine("Ejercicio 1");

System.Console.WriteLine("Creando cuenta bancaria mia");
BankAccount mia = new(){ Name = "Daniel", Balance = 1000 };

System.Console.WriteLine("Creando cuenta bancaria de Noe");
BankAccount noe = new(){ Name = "Noe", Balance = 2000 };

System.Console.WriteLine("Transfiriendo 100 de mi cuenta a la de Noe");
mia.Transfer(noe, 100);
System.Console.WriteLine(mia.GetInfo());
System.Console.WriteLine(noe.GetInfo());

System.Console.WriteLine("Creando cuenta combinada");
CombinedBankAccount combinada = mia.CombineAccounts(noe);
System.Console.WriteLine(combinada.GetInfo());

// Ejercicio 2
Console.WriteLine("\nEjercicio 2");

System.Console.WriteLine("Creando jugadores");
Jugador aguerre = new Jugador("Aguerre", PosicionJugador.Arquero, 1);
Jugador mansilla = new Jugador("Mansilla", PosicionJugador.Defensor, 6);
Jugador vera = new Jugador("Vera", PosicionJugador.Mediocampista, 5);
Jugador varaldo = new Jugador("Varaldo", PosicionJugador.Delantero, 9);

System.Console.WriteLine("Creando equipo");
Equipo e = new Equipo(4);

e.AgregarJugador(aguerre);
e.AgregarJugador(mansilla);
e.AgregarJugador(vera);
e.AgregarJugador(varaldo);

e.VerJugadores();

Jugador moyano = new Jugador("Moyano", PosicionJugador.Mediocampista, 33);
Equipo e2 = new(1);

e2.AgregarJugador(moyano);
e2.VerJugadores();

System.Console.WriteLine("Fusiono equipos");
Equipo e3 = e.Fusionar(e2);
e3.VerJugadores();
