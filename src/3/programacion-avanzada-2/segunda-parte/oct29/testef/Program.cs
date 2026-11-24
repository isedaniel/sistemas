namespace testef;

class Program
{
    static void Main(string[] args)
    {
        var dbContext = new ApplicationDbContext();

        Tarea tarea = new() { titulo = "Cocinar", descripcion = "comida."};

        dbContext.Tareas.Add(tarea);
        dbContext.SaveChanges();
        Console.WriteLine(tarea);
    }
}
