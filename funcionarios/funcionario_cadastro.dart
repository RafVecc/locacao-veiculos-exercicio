import 'dart:io';
import 'funcionario_informacoes.dart';

var listaFuncionarioInformacoes = <FuncionariosInformacoes>[];
class FuncionarioCadastro{
  void funcionarioCadastro(){
   var funcionarioCadastroInformacoesInstancia = FuncionariosInformacoes();
   print('Informe o nome do funcionário');
   funcionarioCadastroInformacoesInstancia.nomeFuncionario = stdin.readLineSync();
   print('Informe o telefone do funcinário');
   funcionarioCadastroInformacoesInstancia.telefoneFuncionario = double.parse(stdin.readLineSync()!);
   listaFuncionarioInformacoes.add(funcionarioCadastroInformacoesInstancia);

  }
}
