import 'dart:io';

import '../clientes/cliente_cadastro.dart';
import '../marca/marca_cadastro.dart';
import '../modelo/modelo_cadastro.dart';


class RelatoriosClientes{
  void relatoriosClientes(){
    int? i;
    print('Informe o Id do Cliente');
    i = int.parse(stdin.readLineSync()!);
    print('Nome do cliente: ${listaClienteInformacoes[i-1].nomeCliente}'
          'Marca: ${listaMarcaInformacoes[i-1].nomeMarca}'
          'Modelo: ${listaModeloInformacoes[i-1].nomeModelo}'
          'Total a ser pago: ${listaClienteInformacoes[i-1].totalPagarCliente}');

  }
}
