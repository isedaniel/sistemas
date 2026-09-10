public class Equipo
{
    private int _cantidad;
    private int _capacidad;
    private Jugador[] _jugadores;

    public Equipo(int cantidadJugadores)
    {
        if (cantidadJugadores < 1)
        {
            throw new Exception("Debe tener por lo menos 1 jugador");
        }
        _cantidad = 0;
        _capacidad = cantidadJugadores;
        _jugadores = new Jugador[_capacidad];
    }

    public void AgregarJugador(Jugador j)
    {
        if (_cantidad < _capacidad)
        {
            _jugadores[_cantidad] = j;
            _cantidad++;
        }
    }

    // Devolvemos el índice si está, sino -1
    public int BuscarJugador(int numeroCamiseta)
    {
        for (int i = 0; i < _jugadores.Length; i++)
        {
            if (_jugadores[i].NumeroCamiseta == numeroCamiseta)
            {
                return i;
            }
        }
        return -1;
    }

    public void VerJugadores()
    {
        foreach (Jugador j in _jugadores)
        {
            Console.WriteLine($"Nombre: {j.Nombre} Posición: {j.Posicion} Número: {j.NumeroCamiseta}");
        }
    }

    public Equipo Fusionar(Equipo otro)
    {
        Equipo nuevo = new(_capacidad + otro._capacidad);
        foreach (Jugador j in _jugadores)
        {
            nuevo.AgregarJugador(j);
        }

        foreach (Jugador j in otro._jugadores)
        {
            nuevo.AgregarJugador(j);
        }
        return nuevo;
    }
}
