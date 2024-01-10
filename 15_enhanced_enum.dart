void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.PIX);
}

enum TipoPagamento {
  PIX('Pix'),
  BOLETO("Boleto"),
  CARTAO("Cartao");

  final String value;
  const TipoPagamento(this.value);
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.value == 'Pix') {
      print('Pagando com Pix!');
    } else if (tipoPagamento.value == 'Boleto') {
      print('Pagando com Boleto!');
    } else if (tipoPagamento.value == 'Cartao') {
      print('Pagando com Cartao!');
    }
  }
}
