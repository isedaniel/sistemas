using Microsoft.EntityFrameworkCore;

public class ApplicationDbContext : DbContext
{
    public DbSet<Tarea> Tareas { get; set; }
    private readonly string path = "./db.sqlite3";

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        base.OnConfiguring(optionsBuilder);
        // definimos PATH de la db
        optionsBuilder.UseSqlite($"Data Source={path}");
    }
}