using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Rest_Bar_El_Drag_n_.Models;

namespace Rest_Bar_El_Drag_n_.Controllers
{
    public class HomeController : Controller
    {
        private RestauranteContext _context;
        public HomeController(RestauranteContext c) {
            _context = c;
        }
        public IActionResult Index(int? p)
        {
            if(p!=null){
                if(p==1){
                    ViewBag.Mes="Hola";
                }else{
                    if(p==2){
                        ViewBag.Mes="Chau";
                    }
                }
            }
            return View();
        }

        public IActionResult Nosotros()
        {
            return View();

        }
        public IActionResult Menu()
        {
            ViewBag.Categorias = _context.Categorias.ToList();
            ViewBag.Noticias = _context.Menus.ToList();
            return View();
        }

        
    }
}
