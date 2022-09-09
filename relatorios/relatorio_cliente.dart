import '../clientes/cliente_cadastro.dart';
import '../marca/marca_cadastro.dart';
import '../modelo/modelo_cadastro.dart';



class RelatoriosClientes{
  void relatoriosClientes(){
    for(int i = 0; i < listaClienteInformacoes.length; i ++) {
      print('Nome do cliente: ${listaClienteInformacoes[i].nomeCliente}'
          'Marca: ${listaMarcaInformacoes[i].nomeMarca}'
          'Modelo: ${listaModeloInformacoes[i].nomeModelo}'
          'Total a ser pago: ${listaClienteInformacoes[i].totalPagarCliente}');
    }
  }
}
