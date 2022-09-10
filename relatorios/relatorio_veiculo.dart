import 'dart:io';

import '../locacao/locacao_cadastro.dart';
import '../marca/marca_cadastro.dart';
import '../modelo/modelo_cadastro.dart';
import '../veiculos/veiculos_cadastro.dart';

class RelatorioVeiculo{
  void relatorioVeiculo(){
    int? idVeiculoContador;
    print('Informe o id do veículo');
    idVeiculoContador = int.parse(stdin.readLineSync()!);
    for(int i = 0; i < listaVeiculosInformacoes.length; i ++) {
      int contadorVeiculos = 0;
      for(int k = 0; k < listaLocacaoInformacoes.length; k ++) {
        if (listaLocacaoInformacoes[k].idVeiculoLocacao ==
            listaVeiculosInformacoes[i].codigoVeiculo) {
          contadorVeiculos += 1;
        }
      }
      int y = idVeiculoContador;
      print('Código do Veículo: ${listaVeiculosInformacoes[y].codigoVeiculo}'
            'Modelo: ${listaModeloInformacoes[y].nomeModelo}'
            'Marca: ${listaMarcaInformacoes[y].nomeMarca}'
            'Quantidade de locações: ${contadorVeiculos}');
    }
  }
}