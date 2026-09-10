using System;

namespace TestEntityFramework;

public class Libro
{
    public int LibroId { get; set; }
    public string Titulo { get; set; }
    public string Descripcion { get; set; }
    public DateTime FechaDePublicacion { get; set; }
    public int AutorId { get; set; }
    public Autor autor { get; set; }
}