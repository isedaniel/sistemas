using System;
using System.Collections.Generic;

namespace MovieRent;

class Program
{
    static void Main(string[] args)
    {
        List<Pelicula> peliculas = new();
        peliculas.Add(new PeliculaDigital("Mi Villano Favorito 4", "D103", 14.5));
        peliculas.Add(new PeliculaEstreno("Las Ovejas detectives", "E105", 5.5));
        peliculas.Add(new PeliculaClasica("El señor de los Anillos: La Comunidad del Anillo", "C101", 15.0));

        double saldoDisponible = 30.0;
        foreach (Pelicula pelicula in peliculas)
        {
            if (pelicula.PrecioAlquiler > saldoDisponible)
            {
                Console.WriteLine($"Saldo insuficiente para alquilar {pelicula.Titulo}. Saldo restante: $ {saldoDisponible}");
                break;
            }
            saldoDisponible -= pelicula.PrecioAlquiler;
            Console.WriteLine(pelicula.ObtenerFicha());

            if (pelicula is PeliculaDigital) 
            { 
                ((PeliculaDigital)pelicula).GenerarCopiaOffline();
                ((PeliculaDigital)pelicula).GenerarEnlaceInvitado();
            }
            else if (pelicula is PeliculaEstreno)
            {
                ((PeliculaEstreno)pelicula).GenerarCopiaOffline();
            }
        }
        Console.WriteLine($"Saldo restante: $ {saldoDisponible}");
    }
}
