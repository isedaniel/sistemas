using Microsoft.EntityFrameworkCore;

public class ApplicationDbContext : DbContext
{
    private readonly string dbPath = "./db.sqlite3";

    public DbSet<Tarea> Tareas { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        base.OnConfiguring(optionsBuilder);
        optionsBuilder.UseSqlite($"DataSource={dbPath}");
    }
}

// para la migración inicial
// dotnet ef migrations add MigracionInicial

// para actualizar la db con la migración
// dotnet ef database update