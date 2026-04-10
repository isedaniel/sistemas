class Engine
{
    private int _horsePower = 0;
    public int HorsePower 
    {
        get => _horsePower;
        set
        {
            if (value > 0) { _horsePower = value; }
        }
    }
}