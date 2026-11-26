namespace tiingoclient;

class Program
{
    static async Task Main(string[] args)
    {
        string url = "https://api.tiingo.com/tiingo/daily/SPY";
        using var client = new HttpClient();
        
        HttpRequestMessage message = new(HttpMethod.Get, url);
        string? token = Environment.GetEnvironmentVariable("TIINGO_API_TOKEN");
        message.Headers.Add("Authorization", $"Token {token}");

        var res = await client.SendAsync(message);
        res.EnsureSuccessStatusCode();

        var json = await res.Content.ReadAsStringAsync();
        Console.WriteLine(json);
    }
}
