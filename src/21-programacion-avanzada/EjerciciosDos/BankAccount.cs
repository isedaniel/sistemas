class BankAccount
{
    public string Name { get; set; } = "";
    public int Balance { get; set; } = 0;

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

    public CombinedBankAccount CombineAccounts(BankAccount other)
    {
        return new CombinedBankAccount(Name, other.Name, Balance + other.Balance);
    }

    public string GetInfo()
    {
        return $"Cliente: {Name}, Saldo: {Balance}";
    }
}