using Microsoft.AspNetCore.Mvc;
using tareasapi.Models;
using Microsoft.EntityFrameworkCore;

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
    public async Task<ActionResult<IEnumerable<Tarea>>> Get()
    {
        return Ok(await _context.Tareas.ToListAsync());
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<Tarea>> GetById(int id)
    {
        // vamos haciendo asíncronas las funciones 
        Tarea? tarea = await _context.Tareas.FirstOrDefaultAsync(t => t.id == id);
        if (tarea == null)
        {
            return NotFound();
        }

        return Ok(tarea);
    }

    [HttpPost]
    public async Task<ActionResult<Tarea>> Post([FromBody] Tarea tarea)
    {
        Tarea nueva = new()
        {
            titulo = tarea.titulo,
            descripcion = tarea.descripcion
        };

        _context.Tareas.Add(nueva);
        await _context.SaveChangesAsync();

        return CreatedAtAction(
            nameof(GetById),
            new { id = nueva.id },
            nueva
        );
    }

    [HttpDelete("{id}")]
    public async Task<ActionResult> Delete(int id)
    {
        Tarea? tarea = await _context.Tareas.FirstOrDefaultAsync(t => t.id == id);
        if (tarea == null)
        {
            return NotFound();
        }

        _context.Tareas.Remove(tarea);
        await _context.SaveChangesAsync();

        return Ok(tarea);
    }
}
