import 'dart:io';

import '../clientes/cliente_cadastro.dart';
import '../clientes/cliente_informacoes.dart';
import '../locacao/locacao_cadastro.dart';
import '../locacao/locacao_informacoes_pagar.dart';
import '../marca/marca_cadastro.dart';
import '../modelo/modelo_cadastro.dart';
import '../veiculos/veiculos_cadastro.dart';

var listaTotalPagar = <TotalPagar>[];
class RelatoriosClientes{
  void relatoriosClientes(){
    int? i;
    print('Informe o Id do Cliente');
    i = int.parse(stdin.readLineSync()!);

    var locacaoTotalPagar = TotalPagar();
    var diariaVeiculo = listaVeiculosInformacoes[i].valorVeiculo;
    var diasLocacao = listaLocacaoInformacoes[i].diasLocadosLocacao;
    var totalPagar = diasLocacao!.toDouble() * diariaVeiculo!.toDouble();
    locacaoTotalPagar.totalPagar= totalPagar;
    listaTotalPagar.add(locacaoTotalPagar);


    print('Nome do cliente: ${listaClienteInformacoes[i].nomeCliente}\n'
          'Marca: ${listaMarcaInformacoes[i].nomeMarca}\n'
          'Modelo: ${listaModeloInformacoes[i].nomeModelo}\n'
          'Total a ser pago: ${listaTotalPagar[i].totalPagar}');

  }
}
