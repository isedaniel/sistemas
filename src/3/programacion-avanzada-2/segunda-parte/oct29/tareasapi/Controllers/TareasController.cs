using Microsoft.AspNetCore.Mvc;
using tareasapi.Models;

namespace tareasapi.Controllers;

[ApiController]
[Route("[controller]")]
public class TareasController : ControllerBase
{
    private ApplicationDbContext _context;

    public TareasController(ApplicationDbContext context)
    {
        _context = context;
    }

    [HttpGet]
    public ActionResult<IEnumerable<Tarea>> Get()
    {
        return Ok(_context.Tareas.ToList());
    }

    [HttpGet("{id}")]
    public ActionResult<Tarea> GetById(int id)
    {
        Tarea? tarea = _context.Tareas.FirstOrDefault(t => t.id == id);
        if (tarea == null)
        {
            return NotFound();
        }

        return Ok(tarea);
    }

    [HttpPost]
    public ActionResult<Tarea> Post([FromBody] Tarea tarea)
    {
        Tarea nueva = new()
        {
            titulo = tarea.titulo,
            descripcion = tarea.descripcion
        };

        _context.Tareas.Add(nueva);
        _context.SaveChanges();

        return CreatedAtAction(
            nameof(GetById),
            new { id = nueva.id },
            nueva
        );
    }

    [HttpDelete("{id}")]
    public ActionResult Delete(int id)
    {
        Tarea? tarea = _context.Tareas.FirstOrDefault(t => t.id == id);
        if (tarea == null)
        {
            return NotFound();
        }

        _context.Tareas.Remove(tarea);
        _context.SaveChanges();

        return Ok(tarea);
    }
}
