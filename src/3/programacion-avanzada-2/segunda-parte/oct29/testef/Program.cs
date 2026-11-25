namespace testef;

class Program
{
    static void Main(string[] args)
    {
        using (var dbContext = new ApplicationDbContext())
        {
            Tarea tarea = new() { titulo = "Cocinar", descripcion = "comida." };

            dbContext.Tareas.Add(tarea);
            dbContext.SaveChanges();
        }
    }
}
