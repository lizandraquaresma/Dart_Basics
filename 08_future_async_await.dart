// 08 - Future, Async, Await
void main() async {
  String pessoa = "Liz";
  Future<String> futuroCep = getCepByName("Rua A");
  late String cep;

  cep = await futuroCep;
  print('O cep de ${pessoa} é ${cep}');
}

//external service
Future<String> getCepByName(String name) {
  //simulando requisição
  return Future.value("86001-001");
}
