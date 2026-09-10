using System;
using System.Collections.Generic;
using System.Numerics;

public class Plan(string nombre, string codigo, double costo, List<Sede> sedes)
{
    public string NombrePlan { get; set; } = nombre;
    public string Codigo { get; set; } = codigo;
    public double Costo { get; set; } = costo;
    public List<Sede> Sedes { get; set; } = sedes;

    public void MostrarDetalles()
    {
        Console.WriteLine($"Plan: {NombrePlan}, Código: {Codigo}, Costo: {Costo}");
        Console.WriteLine("Sedes:");
        foreach (Sede sede in Sedes)
        {
            Console.WriteLine(sede.Nombre);
        }
    }

    public static Plan operator +(Plan p1, Plan p2)
    {
        if (p1.Codigo.Contains("PACK-") || p2.Codigo.Contains("PACK-"))
        {
            throw new InvalidOperationException("No se puede sumar un plan si ya tiene un PACK.");
        }

        if (PlanHelper.SonListasIdenticas(p1.Sedes, p2.Sedes))
        {
            throw new InvalidOperationException("No se pueden sumar dos planes con las mismas sedes.");
        }

        List<Sede> sedes = new();
        sedes.AddRange(p1.Sedes);
        sedes.AddRange(p2.Sedes);

        return new Plan(
            $"{p1.NombrePlan} y {p2.NombrePlan}",
            $"PACK-{p1.Codigo}:{p2.Codigo}",
            (p1.Costo + p2.Costo) * 0.8,
            PlanHelper.LimpiarSedesDuplicadas(sedes)
        );
    }
}