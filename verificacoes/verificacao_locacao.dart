import '../clientes/cliente_cadastro.dart';
import '../funcionarios/funcionario_cadastro.dart';
import '../locacao/locacao_cadastro.dart';
import '../veiculos/veiculos_cadastro.dart';


class VerificacoesLocacao {
  bool verificacaoIdClienteLocacao(idCliente) {
    bool verificarCliente = false;
    for (int i = 0; i < listaClienteInformacoes.length; i++) {
      if (listaClienteInformacoes[i].codigoCliente ==
          idCliente) {
        verificarCliente = true;
        break;
      }
    }return verificarCliente;
  }

  bool verificacaoIdVeiculoLocacao(idVeiculo) {
    bool verificarVeiculo = false;
    for (int i = 0; i < listaVeiculosInformacoes.length; i++) {
      if (listaVeiculosInformacoes[i].codigoVeiculo ==
          idVeiculo) {
        verificarVeiculo = true;
        break;
      }
    }return verificarVeiculo;
  }

  bool verificacaoIdFuncionarioLocacao(idFuncionario) {
    bool verificarFuncionario = false;
    for (int i = 0; i < listaFuncionarioInformacoes.length; i++) {
      if (listaFuncionarioInformacoes[i].codigoFuncionario ==
          idFuncionario) {
        verificarFuncionario = true;
        break;
      }
    }return verificarFuncionario;
  }
}
