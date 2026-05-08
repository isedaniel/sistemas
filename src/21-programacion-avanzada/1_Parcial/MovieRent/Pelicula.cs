namespace MovieRent;

public abstract class Pelicula
{
    public string Titulo { get; set; }
    public string Codigo { get; set; }
    public double PrecioAlquiler { get; set; }

    public Pelicula(string titulo, string codigo, double precio)
    {
        Titulo = titulo;
        Codigo = codigo;
        PrecioAlquiler = precio;
    }

    public abstract string ObtenerFicha();
}