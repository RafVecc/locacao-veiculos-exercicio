import 'dart:io';

import '../menus/menu_relatorios.dart';
import '../relatorios/relatorio_cliente.dart';
import '../relatorios/relatorio_funcionario.dart';
import '../relatorios/relatorio_veiculo.dart';


var menuRelatoriosInstancia = MenuRelatorios();
var execucaoRelatorioCliente = RelatoriosClientes();
var execucaoRelatorioFuncionario = RelatorioFuncionario();
var execucaoRelatorioVeiculo = RelatorioVeiculo();

class ExecucaoMenuRelatorio{
  void execucaoMenuRelatorio(){
    int? opcao;
    while(opcao != 4) {
      try {
        menuRelatoriosInstancia.menuRelatorios();
        opcao = int.parse(stdin.readLineSync()!);
        switch (opcao) {
          case 1:
            execucaoRelatorioCliente.relatoriosClientes();
            break;
          case 2:
            execucaoRelatorioFuncionario.relatorioFuncionario();
            break;
          case 3:
            execucaoRelatorioVeiculo.relatorioVeiculo();
            break;
          case 4:

            break;
        }
      }catch(e){
        print('Opção inválida');
      }
    }
  }
}
