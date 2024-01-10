void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.PIX);
}

enum TipoPagamento {
  PIX,
  BOLETO,
  CARTAO;
}

extension ExtensionTipoPagamento on TipoPagamento {
  String toValue() {
    Map mapa = {
      TipoPagamento.PIX: 'Pix',
      TipoPagamento.BOLETO: 'Boleto',
      TipoPagamento.CARTAO: 'Cartao'
    };

    return mapa[this];
  }
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.toValue() == 'Pix') {
      print('Pagando com Pix!');
    } else if (tipoPagamento.toValue() == 'Boleto') {
      print('Pagando com Boleto!');
    } else if (tipoPagamento.toValue() == 'Cartao') {
      print('Pagando com Cartao!');
    }
  }
}
