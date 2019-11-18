using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Rest_Bar_El_Drag_n_.Models;

namespace Rest_Bar_El_Drag_n_.Controllers
{
    public class CompraController : Controller
    {
        private RestauranteContext _context;
        public CompraController(RestauranteContext c) {
            _context = c;
        }
    
        public IActionResult Index(Compra x)
        {
            var compras= _context.Compras.ToList();
           // var lista = _context.Menus.Take(15).ToList();
            return View(compras);
        }

        [HttpPost]
        public IActionResult Registro(Compra x)
        {
            if (ModelState.IsValid) {
                x.Fecha=DateTime.Now;
                _context.Add(x);
                _context.SaveChanges();
                
            }
                TempData["Success"]="ASd";
                return RedirectToAction("Index","Home", new { p = 1});
        }

    }
}