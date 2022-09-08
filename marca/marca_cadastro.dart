import 'dart:io';
import 'marca_informacoes.dart';


class MarcaCadastro{
  void marcaCadastro(){
    var listaMarcaInformacao = <MarcaInformacoes>[];
    var marcaCadastroInformacoesInstancia = MarcaInformacoes();
    print('Informe o nome da marca');
    marcaCadastroInformacoesInstancia.nomeMarca = stdin.readLineSync();
    listaMarcaInformacao.add(marcaCadastroInformacoesInstancia);

  }
}
