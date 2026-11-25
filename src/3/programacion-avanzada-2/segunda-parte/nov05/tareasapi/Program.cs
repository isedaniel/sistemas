using Microsoft.EntityFrameworkCore;
using tareasapi.Models;

namespace tareasapi;

public class Program
{
    public static void Main(string[] args)
    {
        var builder = WebApplication.CreateBuilder(args);

        // Add services to the container.

        builder.Services.AddControllers();

        var folderPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
        var path = Path.Join(folderPath, "db.sqlite3");
        builder.Services.AddDbContext<ApplicationDbContext>(options =>
        {
            options.UseSqlite($"Data Source={path}");
        });

        builder.Services.AddCors(options =>
        {
            options.AddPolicy("MyAllowAnyOrigin", policy =>
            {
                policy.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod();
            });
        });


        var app = builder.Build();

        // Configure the HTTP request pipeline.

        app.UseHttpsRedirection();

        app.UseAuthorization();

        app.UseCors("MyAllowAnyOrigin");

        app.MapControllers();

        Console.WriteLine(path);
        app.Run();
    }
}
