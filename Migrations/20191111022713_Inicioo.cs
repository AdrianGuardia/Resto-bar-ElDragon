using Microsoft.EntityFrameworkCore.Migrations;

namespace Rest_Bar_El_Drag_n_.Migrations
{
    public partial class Inicioo : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Titulo",
                table: "Menus",
                newName: "Nombre");

            migrationBuilder.AddColumn<float>(
                name: "Precio",
                table: "Menus",
                nullable: false,
                defaultValue: 0f);

            migrationBuilder.AddColumn<int>(
                name: "Puntos",
                table: "Menus",
                nullable: false,
                defaultValue: 0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Precio",
                table: "Menus");

            migrationBuilder.DropColumn(
                name: "Puntos",
                table: "Menus");

            migrationBuilder.RenameColumn(
                name: "Nombre",
                table: "Menus",
                newName: "Titulo");
        }
    }
}
