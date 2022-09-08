import 'dart:io';
import 'cliente_informacoes.dart';


var listaClienteInformacoes = <ClienteInformacoes>[];
class ClienteCadastro{
  int idCliente = 1;
  void clienteCadastro(){
    var clienteCadastroInformacoesInstancia = ClienteInformacoes();
    print('Id do cliente: ${idCliente}');
    clienteCadastroInformacoesInstancia.codigoCliente = idCliente;
    print('Informe o nome do cliente');
    clienteCadastroInformacoesInstancia.nomeCliente = stdin.readLineSync();
    print('Informe o CPF do cliente');
    clienteCadastroInformacoesInstancia.cpfCliente = double.parse(stdin.readLineSync()!);
    print('Informe o telefone do cliente');
    clienteCadastroInformacoesInstancia.telefoneCliente = double.parse(stdin.readLineSync()!);
    print('Informe o endereço do cliente');
    clienteCadastroInformacoesInstancia.enderecoCliente = stdin.readLineSync();
    listaClienteInformacoes.add(clienteCadastroInformacoesInstancia);
    idCliente += 1;

  }
}
