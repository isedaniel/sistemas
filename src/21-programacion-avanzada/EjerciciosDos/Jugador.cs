public enum PosicionJugador
{
    Arquero,
    Defensor,
    Mediocampista,
    Delantero,
}

public class Jugador(string nombre, PosicionJugador posicion, int numero)
{
    public string Nombre { get; set; } = nombre;

    public PosicionJugador Posicion { get; set; } = posicion;

    public int NumeroCamiseta { get; set; } = numero;
}

