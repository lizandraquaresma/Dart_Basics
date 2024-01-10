// 7 - Herança, Polimorfismo e Abstração

//Abstração
abstract class Pessoa{
  String comunicar();
}

class Et implements Pessoa {
  String comunicar() {
    return "Olá mundo!";
  }
}

class Humano implements Pessoa {
  String comunicar() {
    return "Bom dia!";
  }
}

// Herança
class Pai {
  String falar() {
    return "girias";
  }
}

class filho extends Pai {
  //filho esta herdando a fala do pai
}

void main() {
  //testando herança
  filho joao = filho();
  joao.falar(); //aqui percebemos que como a class filho herdou as caracteristicas da class pai, ele tem a herança da String falar.


  //testando polomorfismo
  pagamento Pagamento = pagarBoleto();
  Pagamento.pagar();

  Pagamento = pagarCartao();
  Pagamento.pagar();
}

//Polimorfismo
abstract class pagamento{
  void pagar();
}

class pagarBoleto implements pagamento {
  void pagar(){
    print("Pagando Boleto");
  }
}

class pagarCartao implements pagamento {
  void pagar(){
    print("Pagando Cartao");
  }
}
