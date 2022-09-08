import 'dart:io';
import 'menus/menu_principal.dart';
import 'menus/menu_cadastros.dart';


var menuPrincipalInstancia = MenuPrincipal();
var menuCadastrosInstancia = MenuCadastros();

void main(){

  menuPrincipalInstancia.menuPrincipal();
  menuCadastrosInstancia.menuCadastros();

}