void main() {
  BuscarAlunos alunos = BuscarAlunos();
  alunos();
}

class BuscarAlunos {
  void call() => print('Ana, Julia, Maria'); //callable interface
}
