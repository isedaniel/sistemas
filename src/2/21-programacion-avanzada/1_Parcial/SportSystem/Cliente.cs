using System;

public class Cliente(string nombre, string dni, Plan plan)
{
    public string Nombre { get; set; } = nombre;
    public string DNI { get; set; } = dni;
    public Plan PlanActual { get; set; } = plan;

    public void MejorarPlan(Plan nuevoPlan)
    {
        try
        {
            PlanActual += nuevoPlan;
            Console.WriteLine("Plan actualizado con éxito.");
        }
        catch (InvalidOperationException ex)
        {
            Console.WriteLine($"Error: {ex.Message}");
        }
    }

    public bool EsSocioPremium()
    {
        return PlanActual.Sedes.Count > 3;
    }

    public void MostrarEstado()
    {
        string esPremium = (EsSocioPremium()) ? "Si" : "No";
        Console.WriteLine($"Nombre: {Nombre}, DNI: {DNI}, Premium: {esPremium}");
        PlanActual.MostrarDetalles();
    }
}