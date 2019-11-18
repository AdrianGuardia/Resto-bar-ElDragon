using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace Rest_Bar_El_Drag_n_.Models
{
    public class RestauranteContext : IdentityDbContext
    {
        public DbSet<Menu> Menus { get; set; }
        public DbSet<Reserva> Reservas { get; set; }

        public DbSet<Categoria> Categorias { get; set; }

        public DbSet<Compra> Compras { get; set; }
        public RestauranteContext(DbContextOptions<RestauranteContext> o) : base (o) {
        }
    }
}