import 'dart:io';
import 'funcionario_informacoes.dart';

var listaFuncionarioInformacoes = <FuncionariosInformacoes>[];
class FuncionarioCadastro{
  int idFuncionario = 0;
  void funcionarioCadastro(){
   var funcionarioCadastroInformacoesInstancia = FuncionariosInformacoes();
   print('Id do funcionário: ${idFuncionario}');
   funcionarioCadastroInformacoesInstancia.codigoFuncionario = idFuncionario;
   print('Informe o nome do funcionário');
   funcionarioCadastroInformacoesInstancia.nomeFuncionario = stdin.readLineSync();
   print('Informe o telefone do funcinário');
   funcionarioCadastroInformacoesInstancia.telefoneFuncionario = double.parse(stdin.readLineSync()!);
   listaFuncionarioInformacoes.add(funcionarioCadastroInformacoesInstancia);
    idFuncionario += 1;
  }
}
