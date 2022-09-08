import 'dart:io';
import 'veiculos_informacoes.dart';

var listaVeiculosInformacoes = <VeiculosInformacoes>[];
class VeiculosCadastro{
  int idVeiculo = 1;
  void veiculosCadastro(){
    var veiculosCadastroInformacoesInstancia = VeiculosInformacoes();
    print('Id do veículo: ${idVeiculo}');
    veiculosCadastroInformacoesInstancia.codigoVeiculo = idVeiculo;
    print('Informe o Id da marca');
    veiculosCadastroInformacoesInstancia.idMarcaVeiculo = int.parse(stdin.readLineSync()!);
    print('Informe o Id do modelo');
    veiculosCadastroInformacoesInstancia.idModeloVeiculo = int.parse(stdin.readLineSync()!);
    //adicionar condição criando classe de verificação
    print('Informe a quilometragem do veículo');
    veiculosCadastroInformacoesInstancia.kmRodadoVeiculo = double.parse(stdin.readLineSync()!);
    print('Informe o valor da diária');
    veiculosCadastroInformacoesInstancia.valorVeiculo = double.parse(stdin.readLineSync()!);
    listaVeiculosInformacoes.add(veiculosCadastroInformacoesInstancia);
    idVeiculo += 1;

  }
}
