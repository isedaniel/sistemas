namespace AdoptApp;

public class Animal
{
    public int AnimalId { get; set; }
    public string Especie { get; set; }
    public int Edad { get; set; }
    public double Peso { get; set; }
    public string Nombre { get; set; }
    public int? AdoptanteId { get; set; }
    public Adoptante? Adoptante { get; set; }
}