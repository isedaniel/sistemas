
using Microsoft.AspNetCore.Mvc;

namespace upload_backend.Controllers;

[ApiController]
[Route("[controller]")]
public class UploadController : ControllerBase
{
    private readonly IWebHostEnvironment _env;

    public UploadController(IWebHostEnvironment env)
    {
        _env = env;

    }

    [HttpPost]
    public async Task<ActionResult> Upload(IFormFile file)
    {
        var wwwRootFolder =  Path.Combine(_env.WebRootPath ?? Path.Combine(Directory.GetCurrentDirectory(), "wwwroot"), "Uploads");

        if (!Directory.Exists(wwwRootFolder))
        {
            Directory.CreateDirectory(wwwRootFolder);
        }

        var filepath = Path.Combine(wwwRootFolder, file.FileName);

        using (var stream = new FileStream(filepath, FileMode.Create))
        {
            await file.CopyToAsync(stream);
        }

        return Ok();
    }

}
