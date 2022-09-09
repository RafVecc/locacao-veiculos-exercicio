import '../clientes/cliente_cadastro.dart';
import '../funcionarios/funcionario_cadastro.dart';
import '../locacao/locacao_cadastro.dart';
import '../veiculos/veiculos_cadastro.dart';


class VerificacoesLocacao {
  bool verificacaoIdClienteLocacao() {
    bool verificarCliente = false;
    for (int i = 0; i < listaClienteInformacoes.length; i++) {
      if (listaClienteInformacoes[i].codigoCliente ==
          listaLocacaoInformacoes[i].idClienteLocacao) {
        verificarCliente = true;
        break;
      }
    }return verificarCliente;
  }

  bool verificacaoIdVeiculoLocacao() {
    bool verificarVeiculo = false;
    for (int i = 0; i < listaVeiculosInformacoes.length; i++) {
      if (listaVeiculosInformacoes[i].codigoVeiculo ==
          listaLocacaoInformacoes[i].idVeiculoLocacao) {
        verificarVeiculo = true;
        break;
      }
    }return verificarVeiculo;
  }

  bool verificacaoIdFuncionarioLocacao() {
    bool verificarFuncionario = false;
    for (int i = 0; i < listaFuncionarioInformacoes.length; i++) {
      if (listaFuncionarioInformacoes[i].codigoFuncionario ==
          listaLocacaoInformacoes[i].idFuncionarioLocacao) {
        verificarFuncionario = true;
        break;
      }
    }return verificarFuncionario;
  }
}
