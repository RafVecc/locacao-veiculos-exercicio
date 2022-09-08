import 'dart:io';
import 'modelo_informacoes.dart';


class ModeloCadastro{
  void modeloCadastro(){
    var listaModeloInformacoes = <ModeloInformacoes>[];
    var modeloCadastroInformacoesInstancia = ModeloInformacoes();
    print('Informe o nome do modelo');
    modeloCadastroInformacoesInstancia.nomeModelo = stdin.readLineSync();
    listaModeloInformacoes.add(modeloCadastroInformacoesInstancia);

  }
}
