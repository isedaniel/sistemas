namespace MovieRent;

public class PeliculaClasica : Pelicula
{
    /*
    public string Titulo { get; set; }
    public string Codigo { get; set; }
    public double PrecioAlquiler { get; set; }
    */

    public PeliculaClasica(string titulo, string codigo, double precio)
    : base(titulo, codigo, precio)
    {
    }

    public override string ObtenerFicha()
    {
        return $"Título: {Titulo}, Código: {Codigo}, Precio: {PrecioAlquiler} (Título Clásico).";
    }
}