import 'dart:io';
import '../verificacoes/verificacoes_veiculos.dart';
import 'veiculos_informacoes.dart';


var listaVeiculosInformacoes = <VeiculosInformacoes>[];

class VeiculosCadastro{
  int idVeiculo = 1;
  void veiculosCadastro(){
    var veiculosCadastroInformacoesInstancia = VeiculosInformacoes();
    var verificacaoVeiculosInstancia = VerificacoesVeiculos();
    print('Id do veículo: ${idVeiculo}');
    veiculosCadastroInformacoesInstancia.codigoVeiculo = idVeiculo;
    print('Informe o Id da marca');
    veiculosCadastroInformacoesInstancia.idMarcaVeiculo = int.parse(stdin.readLineSync()!);
    print('Informe o Id do modelo');
    veiculosCadastroInformacoesInstancia.idModeloVeiculo = int.parse(stdin.readLineSync()!);
    if(verificacaoVeiculosInstancia.verificacaoIdMarcaVeiculo() == true &&
        verificacaoVeiculosInstancia.verificacaoIdModeloVeiculo() == true
    ){
      print('Informe a quilometragem do veículo');
      veiculosCadastroInformacoesInstancia.kmRodadoVeiculo =
          double.parse(stdin.readLineSync()!);
      print('Informe o valor da diária');
      veiculosCadastroInformacoesInstancia.valorVeiculo =
          double.parse(stdin.readLineSync()!);
      listaVeiculosInformacoes.add(veiculosCadastroInformacoesInstancia);
      idVeiculo += 1;
    }
  }
}
