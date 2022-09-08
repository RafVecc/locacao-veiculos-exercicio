import 'dart:io';
import 'modelo_informacoes.dart';

var listaModeloInformacoes = <ModeloInformacoes>[];
class ModeloCadastro{
  int idModelo = 1;
  void modeloCadastro(){
    var modeloCadastroInformacoesInstancia = ModeloInformacoes();
    print('Id do modelo: ${idModelo}');
    modeloCadastroInformacoesInstancia.codigoModelo = idModelo;
    print('Informe o nome do modelo');
    modeloCadastroInformacoesInstancia.nomeModelo = stdin.readLineSync();
    listaModeloInformacoes.add(modeloCadastroInformacoesInstancia);
    idModelo += 1;

  }
}
