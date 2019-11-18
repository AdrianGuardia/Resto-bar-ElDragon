using Microsoft.EntityFrameworkCore.Migrations;

namespace Rest_Bar_El_Drag_n_.Migrations
{
    public partial class afg : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Puntos",
                table: "Menus");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Puntos",
                table: "Menus",
                nullable: false,
                defaultValue: 0);
        }
    }
}
