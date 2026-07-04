using Microsoft.EntityFrameworkCore;

namespace EscapeRooms.Models;

public class ApplicationDbContext : DbContext
{
    public DbSet<Categoria> Categorias { get; set; }
    public DbSet<Sala> Salas { get; set; }

    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {

    }
}