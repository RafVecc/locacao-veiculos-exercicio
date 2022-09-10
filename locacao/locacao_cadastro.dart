import 'dart:io';
import '../verificacoes/verificacao_locacao.dart';
import 'locacao_informacoes.dart';

var listaLocacaoInformacoes = <LocacaoInformacoes>[];
class LocacaoCadastro{
  void locacaoCadastro(){
   var locacaoCadastroInformacoesInstancia = LocacaoInformacoes();
   var verificacaoLocacaoInstancia = VerificacoesLocacao();
   //var novoFormatoData = DateFormat('dd-MM-yyyy');
   print('Informe o Id do Cliente: ');
   locacaoCadastroInformacoesInstancia.idClienteLocacao = int.parse(stdin.readLineSync()!);
   print('Informe o Id do Funcionário: ');
   locacaoCadastroInformacoesInstancia.idFuncionarioLocacao = int.parse(stdin.readLineSync()!);
   print('Informe o Id do Veículo: ');
   locacaoCadastroInformacoesInstancia.idVeiculoLocacao = int.parse(stdin.readLineSync()!);
   if(verificacaoLocacaoInstancia.verificacaoIdClienteLocacao(locacaoCadastroInformacoesInstancia.idClienteLocacao) == true &&
       verificacaoLocacaoInstancia.verificacaoIdFuncionarioLocacao(locacaoCadastroInformacoesInstancia.idFuncionarioLocacao) == true &&
       verificacaoLocacaoInstancia.verificacaoIdVeiculoLocacao(locacaoCadastroInformacoesInstancia.idVeiculoLocacao) == true
   ){
    locacaoCadastroInformacoesInstancia.dataSaidaLocacao = DateTime.now();
    print('Informe a quantidade de dias de locação');
    locacaoCadastroInformacoesInstancia.diasLocadosLocacao =
        double.parse(stdin.readLineSync()!);
    locacaoCadastroInformacoesInstancia.dataEntregaLocacao =
        locacaoCadastroInformacoesInstancia.dataSaidaLocacao.add(
            Duration(
                days: locacaoCadastroInformacoesInstancia.diasLocadosLocacao!.toInt())
        );
    print('O veículo deve ser entregue no dia: ${locacaoCadastroInformacoesInstancia.dataEntregaLocacao}');
    listaLocacaoInformacoes.add(locacaoCadastroInformacoesInstancia);
   }
  }
}
