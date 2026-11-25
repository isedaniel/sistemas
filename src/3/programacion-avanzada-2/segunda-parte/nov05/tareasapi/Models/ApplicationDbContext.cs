using Microsoft.EntityFrameworkCore;
namespace tareasapi.Models;
public class ApplicationDbContext : DbContext
{
    public DbSet<Tarea> Tareas { get; set; }

    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {

    }

}