import 'dart:io';
import 'cliente_informacoes.dart';


class ClienteCadastro{
  void clienteCadastro(){
    var listaClienteInformacoes = <ClienteInformacoes>[];
    var clienteCadastroInformacoesInstancia = ClienteInformacoes();
    print('Informe o nome do cliente');
    clienteCadastroInformacoesInstancia.nomeCliente = stdin.readLineSync();
    print('Informe o CPF do cliente');
    clienteCadastroInformacoesInstancia.cpfCliente = double.parse(stdin.readLineSync()!);
    print('Informe o telefone do cliente');
    clienteCadastroInformacoesInstancia.telefoneCliente = double.parse(stdin.readLineSync()!);
    print('Informe o endereço do cliente');
    clienteCadastroInformacoesInstancia.enderecoCliente = stdin.readLineSync();
    listaClienteInformacoes.add(clienteCadastroInformacoesInstancia);

  }
}
