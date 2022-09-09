import '../funcionarios/funcionario_cadastro.dart';

class RelatorioFuncionario{
  void relatorioFuncionario(){
    for(int i = 0; i < listaFuncionarioInformacoes.length; i ++) {
      print('Nome do funcionário: ${listaFuncionarioInformacoes[i].nomeFuncionario}'
          'Total de locações realizadas: ');
    }
  }
}
