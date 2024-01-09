// Orientação a Objetos

void main(){
  Carro nissan = Carro('nissan');
  Carro Toyota = Carro('Toyota');

}

class Carro{

  final String modelo;
  String _segredo = "Dinheiro"; //utilizamos _ para encapsular um objeto e trona-lo privado 

  int _valor = 100000;

  int get valorCarro => _valor; //get permitindo que o valor fique publico, porém nao é possivel atribuir externamente outro valor ao objeto
  
  void setValue(int valor) => _valor = valor; //set permite que seja atribuido um valor ao objeto

  Carro(this.modelo);
}
