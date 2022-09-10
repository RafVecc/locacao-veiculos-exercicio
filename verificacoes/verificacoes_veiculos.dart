import '../marca/marca_cadastro.dart';
import '../modelo/modelo_cadastro.dart';
import '../veiculos/veiculos_cadastro.dart';


class VerificacoesVeiculos {
  bool verificacaoIdMarcaVeiculo(idMarca) {
    for (int i = 0; i < listaMarcaInformacoes.length; i++) {
      if (listaMarcaInformacoes[i].codigoMarca ==
          idMarca) {
        return true;
      }
    }return false;
  }

  bool verificacaoIdModeloVeiculo(idModelo) {
    for (int i = 0; i < listaModeloInformacoes.length; i++) {
      if (listaModeloInformacoes[i].codigoModelo ==
          idModelo) {
        return true;
      }
    }return false;
  }
}
