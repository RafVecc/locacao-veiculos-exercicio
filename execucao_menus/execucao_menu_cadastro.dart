import 'dart:io';

import '../clientes/cliente_cadastro.dart';
import '../funcionarios/funcionario_cadastro.dart';
import '../marca/marca_cadastro.dart';
import '../menus/menu_cadastros.dart';
import '../modelo/modelo_cadastro.dart';
import '../veiculos/veiculos_cadastro.dart';

var menuCadastroInstancia = MenuCadastros();
var execucaoCadastroCliente = ClienteCadastro();
var execucaoCadastroFuncionario = FuncionarioCadastro();
var execucaoCadastroMarca = MarcaCadastro();
var execucaoCadastroModelo = ModeloCadastro();
var execucaoCadastroVeiculo = VeiculosCadastro();

class ExecucaoMenuCadastro{
  void execucaoMenuCadastro(){
    int? opcao;
    while(opcao != 6) {
      try {
        menuCadastroInstancia.menuCadastros();
        opcao = int.parse(stdin.readLineSync()!);
        switch (opcao) {
          case 1:
            execucaoCadastroCliente.clienteCadastro();
            break;
          case 2:
            execucaoCadastroFuncionario.funcionarioCadastro();
            break;
          case 3:
            execucaoCadastroMarca.marcaCadastro();
            break;
          case 4:
            execucaoCadastroModelo.modeloCadastro();
            break;
          case 5:
            execucaoCadastroVeiculo.veiculosCadastro();
            break;
          case 6:

            break;
        }
      }catch(e){
        print('Opção inválida!');
      }
    }
  }
}