import 'dart:io';
import 'marca_informacoes.dart';

var listaMarcaInformacoes = <MarcaInformacoes>[];
class MarcaCadastro{
  int idMarca = 1;
  void marcaCadastro(){
    var marcaCadastroInformacoesInstancia = MarcaInformacoes();
    print('Id da marca: ${idMarca}');
    marcaCadastroInformacoesInstancia.codigoMarca = idMarca;
    print('Informe o nome da marca');
    marcaCadastroInformacoesInstancia.nomeMarca = stdin.readLineSync();
    listaMarcaInformacoes.add(marcaCadastroInformacoesInstancia);
    idMarca += 1;

  }
}
