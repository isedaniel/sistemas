using System;

namespace MovieRent;

public class PeliculaDigital : Pelicula, IDescargable, ICompartible
{
    /*
    public string Titulo { get; set; }
    public string Codigo { get; set; }
    public double PrecioAlquiler { get; set; }
    */

    public PeliculaDigital(string titulo, string codigo, double precio)
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

    public void GenerarEnlaceInvitado()
    {
        Console.WriteLine($"Generando enlace para ver la película {Titulo} con un invitado.");
    }
}