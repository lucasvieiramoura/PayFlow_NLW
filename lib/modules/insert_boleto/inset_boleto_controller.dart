class InsertBoletoController {
  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "o nome não pode ser vazio" : null;
  String? validadteVencimento(String? value) =>
      value?.isEmpty ?? true ? "A Data de vecimento não pode ser vazio" : null;
  String? validateValor(double value) =>
      value == 0 ? "Insira um valor maior que R\$ 0,00" : null;
  String? validadeCodigo(String? value) =>
      value?.isEmpty ?? true ? "O código do boleto não pode ser vazio" : null;
}
