using Microsoft.EntityFrameworkCore.Migrations;

namespace Rest_Bar_El_Drag_n_.Migrations
{
    public partial class xs : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Menus_Compras_CompraId",
                table: "Menus");

            migrationBuilder.DropIndex(
                name: "IX_Menus_CompraId",
                table: "Menus");

            migrationBuilder.DropColumn(
                name: "CompraId",
                table: "Menus");

            migrationBuilder.AddColumn<string>(
                name: "Descripcion",
                table: "Compras",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Foto",
                table: "Compras",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Nombre",
                table: "Compras",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<float>(
                name: "Precio",
                table: "Compras",
                nullable: false,
                defaultValue: 0f);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Descripcion",
                table: "Compras");

            migrationBuilder.DropColumn(
                name: "Foto",
                table: "Compras");

            migrationBuilder.DropColumn(
                name: "Nombre",
                table: "Compras");

            migrationBuilder.DropColumn(
                name: "Precio",
                table: "Compras");

            migrationBuilder.AddColumn<int>(
                name: "CompraId",
                table: "Menus",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Menus_CompraId",
                table: "Menus",
                column: "CompraId");

            migrationBuilder.AddForeignKey(
                name: "FK_Menus_Compras_CompraId",
                table: "Menus",
                column: "CompraId",
                principalTable: "Compras",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
