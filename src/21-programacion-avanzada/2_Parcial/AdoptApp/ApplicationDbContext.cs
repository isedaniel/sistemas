using Microsoft.EntityFrameworkCore;

namespace AdoptApp;

public class ApplicationDbContext : DbContext
{
    public DbSet<Adoptante> Adoptantes { get; set; }
    public DbSet<Animal> Animales { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlite("Data source=file.db");
    }
}