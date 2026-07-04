using Microsoft.EntityFrameworkCore;

namespace AdoptApp;

class Program
{
    static void Main(string[] args)
    {
        // Realizar la carga de 4 animales y 2 dueños
        using (var context = new ApplicationDbContext())
        {
            var Adoptante1 = new Adoptante()
            {
                Nombre = "Daniel",
                Apellido = "Ise",
                Telefono = "12345678",
            };

            var Adoptante2 = new Adoptante()
            {
                Nombre = "John",
                Apellido = "Tolkien",
                Telefono = "23456789",
            };

            var Animal1 = new Animal()
            {
                Especie = "Perro",
                Edad = 5,
                Peso = 30.0,
                Nombre = "Joaquin",
                Adoptante = Adoptante1,
            };

            var Animal2 = new Animal()
            {
                Especie = "Gato",
                Edad = 8,
                Peso = 10.0,
                Nombre = "Rafaela",
                Adoptante = null,
            };

            var Animal3 = new Animal()
            {
                Especie = "Loro",
                Edad = 10,
                Peso = 1.5,
                Nombre = "Roberto",
                Adoptante = null,
            };

            var Animal4 = new Animal()
            {
                Especie = "Foca",
                Edad = 2,
                Peso = 40.0,
                Nombre = "Jorgelina",
                Adoptante = null,
            };

            context.Animales.Add(Animal1);
            context.Animales.Add(Animal2);
            context.Animales.Add(Animal3);
            context.Animales.Add(Animal4);
            context.SaveChanges();
        }

        // Registrar 2 adopciones para uno de los dueños
        using (var contexto = new ApplicationDbContext())
        {
            var adoptante = contexto.Adoptantes.First(a => a.AdoptanteId == 1);
            var animalAModificar1 = contexto.Animales.First(a => a.Nombre == "Rafaela");
            animalAModificar1.Adoptante = adoptante;

            var animalAModificar2 = contexto.Animales.First(a => a.Nombre == "Roberto");
            animalAModificar2.Adoptante = adoptante;
            contexto.SaveChanges();
        }
        // Mostrar una lista de los animales que aun no han sido adoptados
        using (var contexto = new ApplicationDbContext())
        {
            var animalesNoAdoptados = contexto.Animales.Where(a => a.Adoptante == null).ToList();
            foreach (var animal in animalesNoAdoptados)
            {
                Console.WriteLine($"{animal.Nombre} aún no adoptado.");
            }
            Console.WriteLine();
        }

        // Mostrar el detalle de un animal que ha sido adoptado
        using (var contexto = new ApplicationDbContext())
        {
            var animalAdoptado = contexto.Animales.Include(a => a.Adoptante).First(a => a.Adoptante != null);
            Console.WriteLine($"{animalAdoptado.Nombre} {animalAdoptado.Adoptante.Apellido} está adoptado.");
            Console.WriteLine();
        }
    }
}
