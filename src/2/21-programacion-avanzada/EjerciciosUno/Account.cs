
class BankAccount
{
    private int _balance = 0;
    public Person Client = new();
    public int Balance 
    { 
        set { _balance = value; }
        get { return _balance; } 
    }

    public void Withdraw(int amount)
    {
        if (Balance >= amount)
        {
            Balance -= amount;
        }
    }
    
    public void Deposit(int amount)
    {
        Balance += amount;
    }
}