import '../clientes/cliente_cadastro.dart';
import '../veiculos/veiculos_cadastro.dart';
import 'locacao_cadastro.dart';
import '../clientes/cliente_informacoes.dart';


class LocacaoTotalPago {
  void locacaoTotalPago() {
    var locacaoTotalPagar = ClienteInformacoes();
    for(int i = 0; i < listaClienteInformacoes.length; i++) {
      var diariaVeiculo = listaVeiculosInformacoes[i].valorVeiculo;
      var diasLocacao = listaLocacaoInformacoes[i].diasLocadosLocacao;
      var totalPagar = diasLocacao! * diariaVeiculo!;
      locacaoTotalPagar.totalPagarCliente = totalPagar;
      listaClienteInformacoes.add(locacaoTotalPagar);
    }
  }
}