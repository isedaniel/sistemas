class CombinedBankAccount(string FirstName = "", string SecondName = "", int balance = 0)
{
    public string[] Names { get; set; } = [FirstName, SecondName];
    public int Balance { get; set; } = balance;

    public void Transfer(BankAccount recipient, int amount)
    {
        if (Balance > amount)
        {
            recipient.Balance += amount;
            Balance -= amount;
            Console.WriteLine("Transferencia exitosa");
        }
        else
        {
            Console.WriteLine($"Error: fondos insuficientes ({Balance} < {amount})");
        }
    }

    public void Transfer(CombinedBankAccount recipient, int amount)
    {
        if (Balance > amount)
        {
            recipient.Balance += amount;
            Balance -= amount;
            Console.WriteLine($"Transferencia exitosa a cuenta de {recipient.Names[0]} y {recipient.Names[1]}");
        }
        else
        {
            Console.WriteLine($"Error: fondos insuficientes ({Balance} < {amount})");
        }
    }

    public string GetInfo()
    {
        return $"Clientes: {Names[0]}, {Names[1]}, Saldo: {Balance}";
    }
}