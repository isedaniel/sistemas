using System;

namespace testef;

class Program
{
    static void Main(string[] args)
    {
        // para agregar el paquete de entityframework para sqlite
        // $ dotnet package add Microsoft.EntityFrameworkCore.Sqlite

        // contexto para manejar la base de datos
        using (var context = new ApplicationDbContext())
        {
            // tarea nueva
            var tarea = new Tarea
            {
                titulo = "Hacer el almuerzo.",
                descripcion = "Cocinar algo vegetariano. SI che"
            };

            // trabaja en memoria hasta que guardemos los cambios
            context.Tareas.Add(tarea);
            // guardamos los cambios
            context.SaveChanges();
        }

    }
}