namespace hilos;

class Program
{
    static async Task Main(string[] args)
    {
        var res = await GetStringAsync();
        Console.WriteLine(res);
        Console.WriteLine("Tarea finalizada.");
    }

    static Task<string> GetStringAsync()
    {
        return Task.Run(() => "Tarea Ejecutada");
    }
}
