import 'dart:io';
import 'locacao_informacoes.dart';

var listaLocacaoInformacoes = <LocacaoInformacoes>[];
class LocacaoCadastro{
  void locacaoCadastro(){
   var locacaoCadastroInformacoesInstancia = LocacaoInformacoes();
   //var novoFormatoData = DateFormat('dd-MM-yyyy');
   locacaoCadastroInformacoesInstancia.dataSaidaLocacao = DateTime.now();
   print('Informe a quantidade de dias de locação');
   locacaoCadastroInformacoesInstancia.diasLocadosLocacao = int.parse(stdin.readLineSync()!);
   locacaoCadastroInformacoesInstancia.dataEntregaLocacao = locacaoCadastroInformacoesInstancia.dataSaidaLocacao.add(
       Duration(days: locacaoCadastroInformacoesInstancia.diasLocadosLocacao!)
   );
   print('O veículo deve ser entregue no dia: ${locacaoCadastroInformacoesInstancia.dataEntregaLocacao}');
   listaLocacaoInformacoes.add(locacaoCadastroInformacoesInstancia);

  }
}
