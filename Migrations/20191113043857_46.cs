using Microsoft.EntityFrameworkCore.Migrations;

namespace Rest_Bar_El_Drag_n_.Migrations
{
    public partial class _46 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "CantidadP",
                table: "Reservas",
                newName: "NumerodeMesa");

            migrationBuilder.AddColumn<int>(
                name: "CantidadPersonas",
                table: "Reservas",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CantidadPersonas",
                table: "Reservas");

            migrationBuilder.RenameColumn(
                name: "NumerodeMesa",
                table: "Reservas",
                newName: "CantidadP");
        }
    }
}
