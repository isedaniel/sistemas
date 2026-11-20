namespace tareasappapi;

public class Program
{
    public static void Main(string[] args)
    {
        var builder = WebApplication.CreateBuilder(args);

        // Add services to the container.

        builder.Services.AddControllers();

        builder.Services.AddCors(options =>
        {
            options.AddPolicy("MyAllowSpecificOrigins", policy =>
            {
                policy.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod();
            });
        });

        var app = builder.Build();

        // Configure the HTTP request pipeline.


        app.UseHttpsRedirection();

        app.UseAuthorization();

        app.UseCors("MyAllowSpecificOrigins");

        app.MapControllers();

        app.Run();
    }
}
