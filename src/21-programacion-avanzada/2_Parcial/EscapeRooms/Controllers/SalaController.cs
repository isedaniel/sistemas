using EscapeRooms.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace EscapeRooms.Controllers;

[ApiController]
[Route("[controller]")]
public class SalaController : ControllerBase
{
    private ApplicationDbContext _context;

    public SalaController(ApplicationDbContext context)
    {
        _context = context;
    }

    // Consultar Salas
    [HttpGet]
    public async Task<ActionResult<List<Sala>>> Get()
    {
        var salas = await _context.Salas.ToListAsync();
        return Ok(salas);
    }

    // Consultar sala por Id
    [HttpGet("{id}")]
    public async Task<ActionResult<Sala>> GetById(int id)
    {
        var sala = await _context.Salas.FirstOrDefaultAsync(s => s.SalaId == id);
        if (sala == null)
        {
            return NotFound();
        }
        return Ok(sala);
    }

    // Crear Sala
    [HttpPost]
    public async Task<ActionResult> Post(SalaDTO salaDTO)
    {
        // Como la sala tiene que pertenecer a una categoria la solicitamos
        var categoria = await _context.Categorias.FirstOrDefaultAsync(c => c.CategoriaId == salaDTO.CategoriaId);
        if (categoria == null)
        {
            return BadRequest();
        }

        var sala = new Sala()
        {
            Nombre = salaDTO.Nombre,

            Tematica = salaDTO.Tematica,
            CategoriaId = salaDTO.CategoriaId,
            Categoria = categoria,
        };
        await _context.Salas.AddAsync(sala);
        await _context.SaveChangesAsync();
        return CreatedAtAction(nameof(GetById), new { id = sala.SalaId }, salaDTO);
    }

    // Eliminar sala
    [HttpDelete("{id}")]
    public async Task<ActionResult> Delete(int id)
    {
        var sala = await _context.Salas.FirstOrDefaultAsync(s => s.SalaId == id);
        if (sala == null)
        {
            return NotFound();
        }
        _context.Salas.Remove(sala);
        await _context.SaveChangesAsync();

        return NoContent();
    }
}
