namespace EjercicioDos;

class Program
{
    static void Main(string[] args)
    {
        Libro l = new Libro();
        l.Paginas = 255;
        l.ElAutor = new Autor();
        l.ElAutor.Nombre = "Dan";
        Console.WriteLine($"El libro tiene {l.Paginas} páginas.");
        Console.WriteLine($"Su autor es {l.ElAutor.Nombre}.");
    }
}

