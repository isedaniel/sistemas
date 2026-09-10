using EscapeRooms.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace EscapeRooms.Controllers;

[ApiController]
[Route("[controller]")]
public class CategoriaController : ControllerBase
{
    private ApplicationDbContext _context;

    public CategoriaController(ApplicationDbContext context)
    {
        _context = context;
    }

    // Consultar Categorias
    [HttpGet]
    public async Task<ActionResult<List<Categoria>>> Get()
    {
        var categorias = await _context.Categorias.ToListAsync();
        return Ok(categorias);
    }

    // Consultar categoria por Id
    [HttpGet("{id}")]
    public async Task<ActionResult<Categoria>> GetById(int id)
    {
        var categoria = await _context.Categorias.FirstOrDefaultAsync(c => c.CategoriaId == id);
        if (categoria == null)
        {
            return NotFound();
        }
        return Ok(categoria);
    }

    // Crear categoria
    [HttpPost]
    public async Task<ActionResult> Post(CategoriaDTO categoriaDTO)
    {
        var categoria = new Categoria()
        {
            Nombre = categoriaDTO.Nombre,
            Dificultad = categoriaDTO.Dificultad,
            CantidadDeJugadores = categoriaDTO.CantidadDeJugadores,
        };
        await _context.Categorias.AddAsync(categoria);
        await _context.SaveChangesAsync();
        return CreatedAtAction(nameof(GetById), new { id = categoria.CategoriaId }, categoriaDTO);
    }
}
