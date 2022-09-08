import '../clientes/cliente_cadastro.dart';
import '../marca/marca_cadastro.dart';
import '../modelo/modelo_cadastro.dart';



class RelatoriosClientes{
  void relatoriosClientes(){
    print('Nome do cliente: ${listaClienteInformacoes[i].nomeCliente}'
          'Marca: ${listaMarcaInformacoes[i].nomeMarca}'
          'Modelo: ${listaModeloInformacoes[i].nomeModelo}'
          'Total a ser pago: ${listaClienteInformacoes[i].totalPagarCliente}');

  }
}
