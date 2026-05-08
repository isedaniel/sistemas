using System;

namespace MovieRent;

public class PeliculaEstreno : Pelicula, IDescargable
{
    /*
    public string Titulo { get; set; }
    public string Codigo { get; set; }
    public double PrecioAlquiler { get; set; }
    */

    public PeliculaEstreno(string titulo, string codigo, double precio)
    : base(titulo, codigo, precio)
    {
    }

    public override string ObtenerFicha()
    {
        return $"Título: {Titulo}, Código: {Codigo}, Precio: {PrecioAlquiler}.";
    }

    public void GenerarCopiaOffline()
    {
        Console.WriteLine($"Guardando la película {Titulo} para ver sin conexión.");
    }
}