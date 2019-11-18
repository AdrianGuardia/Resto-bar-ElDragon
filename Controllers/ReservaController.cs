using System;
using System.Linq;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Rest_Bar_El_Drag_n_.Models;

namespace Rest_Bar_El_Drag_n_.Controllers
{
    public class ReservaController : Controller
    {
         private RestauranteContext _context;
        public ReservaController(RestauranteContext c) {
            _context = c;
        }
        [Authorize(Roles="Administrador")]
        public IActionResult Index()
        {
            var lista = _context.Reservas.ToList();
            return View(lista);
        }
        public IActionResult Registro()
        {
            
            return View();
        }
        public IActionResult Ocupado()
        {
            
            return View();
        }

        [HttpPost]
        public IActionResult Registro(Reserva x)
        {
            var lista = _context.Reservas.ToList();
            Boolean estado =false;
            if (ModelState.IsValid) {
                for (int i =0; i <lista.Count() ; i++)
                {
                    if(x.FechayHora == lista[i].FechayHora || x.NumerodeMesa == lista[i].NumerodeMesa){
                        estado =true;
                    }
                }
                if(!estado){
                    _context.Add(x);
                    _context.SaveChanges();
                
                }else{
                    return RedirectToAction("Ocupado");
                }
                
            }
            return RedirectToAction("Index","Home", new { p = 2});
            
        }
    }
}