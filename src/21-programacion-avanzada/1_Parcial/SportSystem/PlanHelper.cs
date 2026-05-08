using System.Collections.Generic;
using System.Linq;

public static class PlanHelper
{
    public static List<Sede> LimpiarSedesDuplicadas(List<Sede> listaSedes)
    {
        return listaSedes.GroupBy(s => s.ID).Select(g => g.First()).ToList();
    }

    public static bool SonListasIdenticas(List<Sede> listaA, List<Sede> listaB)
    {
        if (listaA.Count != listaB.Count) return false;
        var idsA = listaA.Select(s => s.ID).OrderBy(id => id);
        var idsB = listaB.Select(s => s.ID).OrderBy(id => id);
        return idsA.SequenceEqual(idsB);
    }
}