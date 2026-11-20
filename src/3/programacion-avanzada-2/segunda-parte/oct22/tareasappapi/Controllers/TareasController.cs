using Microsoft.AspNetCore.Mvc;
using tareasappapi.Models;

namespace tareasappapi.Controllers;

[ApiController]
[Route("[controller]")]
public class TareasController : ControllerBase
{
    private readonly List<Tarea> _tareas = [
        new() {
            id = "1",
            titulo = "Cocinar",
            descripcion = "La comida."
        },
        new() {
            id = "2",
            titulo = "Pasear",
            descripcion = "Al perro."
        },
        new() {
            id = "3",
            titulo = "Pasear", 
            descripcion = "Pero al toga."
        }
    ];

    [HttpGet]
    public IEnumerable<Tarea> Get()
    {
        return _tareas;
    }

    [HttpGet("{id}")]
    public ActionResult<Tarea> GetById(string id)
    {
        Tarea? tarea = _tareas.FirstOrDefault(t => t.id == id);
        if (tarea == null)
        {
            return NotFound();
        }

        return Ok(tarea);
    }

    [HttpPost]
    public ActionResult<Tarea> Post([FromBody] Tarea tarea)
    {
        Tarea nueva = new() {
            titulo = tarea.titulo,
            descripcion = tarea.descripcion
        };

        Tarea ultima = _tareas.Last();
        nueva.id = (Convert.ToInt32(ultima.id) + 1).ToString();

        _tareas.Add(nueva);
        return CreatedAtAction(
            nameof(GetById),
            new { id = nueva.id },
            nueva
        );
    }

    [HttpDelete("{id}")]
    public ActionResult Delete(string id)
    {
        Tarea? tarea = _tareas.FirstOrDefault(t => t.id == id);
        if (tarea == null)
        {
            return NotFound();
        }

        _tareas.Remove(tarea);
        return Ok(tarea);
    }
}
