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
