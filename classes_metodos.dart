//Metodos e Classes
void main(){
  Celular CellDaLizandra = Celular('Lizandra', 'Samsung', 'azul', 1);
  Celular CelldaNaza = Celular('Naza', 'Samsung', 'Verde', 2);

  print(CellDaLizandra.toString());
  print(CellDaLizandra.valor(1780));
  print(CelldaNaza.toString());
  print(CelldaNaza.valor(1200));
}

class Celular{
  final String Usuario;
  final String Marca;
  final String cor;
  final int quantidade;

  Celular(this.Usuario,this.Marca ,this.cor, this.quantidade);
  
  //Metodo
  String toString(){
    return "Celular da $Usuario: Marca: $Marca - Cor: $cor - Quantidade: $quantidade.";
  }

  double valor(double valor){
    return valor * quantidade;
  }
}