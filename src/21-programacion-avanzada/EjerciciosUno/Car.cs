class Car
{
    public string Brand { get; set; } = "Honda";
    public string Model { get; set; } = "Civic";
    public Engine CurrentEngine = new() { HorsePower = 200 };

    public string GetInfo()
    {
        return $"Marca: {Brand} Modelo: {Model}";
    }
}