using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Rest_Bar_El_Drag_n_.Models;

namespace Rest_Bar_El_Drag_n_.Controllers
{
    public class MenuController : Controller
    {
        private RestauranteContext _context;
        public MenuController(RestauranteContext c) {
            _context = c;
        }
        public IActionResult Index()
        {
            var categorias= _context.Categorias.Include(x => x.Menus).ToList();
           // var lista = _context.Menus.Take(15).ToList();
            return View(categorias);
        }
        public IActionResult Registro()
        {
            ViewBag.Categorias = _context.Categorias.ToList();
            return View();
        }

        [HttpPost]
        public IActionResult Registro(Menu x)
        {
            if (ModelState.IsValid) {
                _context.Add(x);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Categorias = _context.Categorias.ToList();
            return View(x);
        }
    }
}