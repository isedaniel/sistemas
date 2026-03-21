class Persona
{
    public string Nombre = "";
    public string Apellido = "";
    public int Edad = 0;
    public int Dni = 0;

    public void Presentarse()
    {
        Console.WriteLine(
            $"Hola, mi nombre es {this.Nombre} {this.Apellido} y tengo {this.Edad} años");
    }
}
