import '../marca/marca_cadastro.dart';
import '../modelo/modelo_cadastro.dart';
import '../veiculos/veiculos_cadastro.dart';


class VerificacoesVeiculos {
  bool verificacaoIdMarcaVeiculo() {
    bool verificarMarca = false;
    for (int i = 0; i < listaMarcaInformacoes.length; i++) {
      if (listaMarcaInformacoes[i].codigoMarca ==
          listaVeiculosInformacoes[i].idMarcaVeiculo) {
        verificarMarca = true;
        break;
      }
    }return verificarMarca;
  }

  bool verificacaoIdModeloVeiculo() {
    bool verificarModelo = false;
    for (int i = 0; i < listaModeloInformacoes.length; i++) {
      if (listaModeloInformacoes[i].codigoModelo ==
          listaVeiculosInformacoes[i].idModeloVeiculo) {
        verificarModelo = true;
        break;
      }
    }return verificarModelo;
  }
}
