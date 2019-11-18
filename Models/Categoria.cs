using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Rest_Bar_El_Drag_n_.Models
{
    public class Categoria
    {
        public int Id { get; set; }

        [Required]
        [Display(Name="Nombre de categoría")]
        public string Nombre { get; set; }
        public List<Menu> Menus { get; set; }
    }
}