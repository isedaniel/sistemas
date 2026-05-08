using System;
using System.Collections.Generic;

namespace SportSystem;

class Program
{
    static void Main(string[] args)
    {
        Sede santiago = new(100, "Santiago");
        Sede laBanda = new(101, "La Banda");
        Sede sumampa = new(102, "Sumampa");
        Sede lasTermas = new(103, "Las Termas");

        List<Sede> sedesBasico = new();
        sedesBasico.Add(santiago);
        sedesBasico.Add(laBanda);

        List<Sede> sedesPlus = new();
        sedesPlus.Add(sumampa);
        sedesPlus.Add(lasTermas);

        Plan basico = new("Plan Básico", "B200", 25.0, sedesBasico);
        Plan plus = new("Plan Plus", "P210", 35.0, sedesPlus);

        Cliente daniel = new("Daniel", "35123456", basico);

        daniel.MejorarPlan(plus);
        daniel.MejorarPlan(basico);

        daniel.MostrarEstado();
    }
}
