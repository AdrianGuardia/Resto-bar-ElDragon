using System;
using System.ComponentModel.DataAnnotations;

namespace Rest_Bar_El_Drag_n_.Models
{
    public class Reserva
    {
        public int Id { get; set; }
        [Required]
        public int CantidadPersonas { get; set; }
        [Required]
        public int NumerodeMesa { get; set; }
        [Required]
        public DateTime FechayHora { get; set; }
        [Required]
        public int DNI { get; set; }

        
    }
}