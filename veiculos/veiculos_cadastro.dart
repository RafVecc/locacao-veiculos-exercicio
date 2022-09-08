import 'dart:io';
import 'veiculos_informacoes.dart';


class VeiculosCadastro{
  void veiculosCadastro(){
    var listaVeiculosInformacoes = <VeiculosInformacoes>[];
    var veiculosCadastroInformacoesInstancia = VeiculosInformacoes();
    print('Informe a quilometragem do veículo');
    veiculosCadastroInformacoesInstancia.kmRodadoVeiculo = double.parse(stdin.readLineSync()!);
    print('Informe o valor da diária');
    veiculosCadastroInformacoesInstancia.valorVeiculo = double.parse(stdin.readLineSync()!);
    listaVeiculosInformacoes.add(veiculosCadastroInformacoesInstancia);

  }
}
