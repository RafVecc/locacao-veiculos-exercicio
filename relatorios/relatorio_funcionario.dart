import 'dart:io';

import '../funcionarios/funcionario_cadastro.dart';
import '../locacao/locacao_cadastro.dart';

class RelatorioFuncionario{
  void relatorioFuncionario(){
    int? idFuncionarioContador;
    print('Informe o funcionário');
    idFuncionarioContador = int.parse(stdin.readLineSync()!);
    for(int i = 0; i < listaFuncionarioInformacoes.length; i ++) {
      int contadorFuncionario = 0;
      for(int k = 0; k < listaLocacaoInformacoes.length; k ++) {
        if (listaLocacaoInformacoes[k].idFuncionarioLocacao ==
            listaFuncionarioInformacoes[i].codigoFuncionario) {
          contadorFuncionario += 1;
        }
      }
      int? x;
      print('Informe o Id do Funcionário');
      x = int.parse(stdin.readLineSync()!);
      print('Nome do funcionário: ${listaFuncionarioInformacoes[x-1].nomeFuncionario}'
          'Total de locações realizadas: ${contadorFuncionario}');
    }
  }
}
