namespace AdoptApp;
public class Adoptante
{
    public int AdoptanteId { get; set; }
    public string Nombre { get; set; }
    public string Apellido { get; set; }
    public string Telefono { get; set; }
    public List<Animal> Animales { get; set; }

}