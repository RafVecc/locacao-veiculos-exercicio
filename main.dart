import 'dart:io';
import 'menu_principal.dart';
import 'menu_cadastros.dart';


var menuPrincipalInstancia = MenuPrincipal();
var menuCadastrosInstancia = MenuCadastros();

void main(){

  menuPrincipalInstancia.menuPrincipal();
  menuCadastrosInstancia.menuCadastros();

}