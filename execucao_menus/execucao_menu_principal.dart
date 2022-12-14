import 'dart:io';

import '../locacao/locacao_cadastro.dart';
import '../menus/menu_principal.dart';
import '../menus/menu_relatorios.dart';
import 'execucao_menu_cadastro.dart';
import 'execucao_menu_relatorio.dart';


var menuPrincipalInstancia = MenuPrincipal();
var execucaoMenuCadastro = ExecucaoMenuCadastro();
var execucaoLocacaoCadastro = LocacaoCadastro();
var execucaoMenuRelatorio = ExecucaoMenuRelatorio();

class ExecucaoMenuPrincipal{
  int? opcao;
  void execucaoMenuPrincipal(){
    while(opcao != 4) {
      try {
        menuPrincipalInstancia.menuPrincipal();
        opcao = int.parse(stdin.readLineSync()!);
        switch (opcao) {
          case 1:
            execucaoMenuCadastro.execucaoMenuCadastro();
            break;
          case 2:
            execucaoLocacaoCadastro.locacaoCadastro();
            break;
          case 3:
            execucaoMenuRelatorio.execucaoMenuRelatorio();
            break;
          case 4:
            print("Programa encerrado!");
            break;
        }
      }catch(e){
        print('Opção inválida');
      }
    }
  }
}