namespace EscapeRooms.Models;

public class Categoria
{
    public int CategoriaId { get; set; }
    public string Nombre { get; set; }
    public string Dificultad { get; set; }
    public int CantidadDeJugadores { get; set; }
    public List<Sala> Salas { get; set; }
}