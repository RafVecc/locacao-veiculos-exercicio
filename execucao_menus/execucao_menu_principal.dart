import 'dart:io';

import '../menus/menu_principal.dart';


var menuPrincipalInstancia = MenuPrincipal();
class ExecucaoMenuPrincipal{
  int? opcao;
  void execucaoMenuPrincipal(){
    while(opcao != 4) {
      try {
        menuPrincipalInstancia.menuPrincipal();
        opcao = int.parse(stdin.readLineSync()!);
        switch (opcao) {
          case 1:

            break;
          case 2:

            break;
          case 3:

            break;
          case 4:

            break;
          case 5:
            print("Programa encerrado!");
            break;
        }
      }catch(e){

      }
    }
  }
}