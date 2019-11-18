using Microsoft.EntityFrameworkCore.Migrations;

namespace Rest_Bar_El_Drag_n_.Migrations
{
    public partial class Reserva2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Hora",
                table: "Reservas");

            migrationBuilder.RenameColumn(
                name: "Fecha",
                table: "Reservas",
                newName: "FechayHora");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "FechayHora",
                table: "Reservas",
                newName: "Fecha");

            migrationBuilder.AddColumn<string>(
                name: "Hora",
                table: "Reservas",
                nullable: false,
                defaultValue: "");
        }
    }
}
