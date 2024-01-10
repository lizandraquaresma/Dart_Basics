void main() {
  //Tratamento 01
  try {
    //tenta executar
    print((2 / 0).toInt());
  } catch (e, stackStrace) {
    //captura a falha
    print('Printando o erro $e');
    //rethrow; //propaga erro
    throw CustomError('erro customizado');
  }

  //Tratamento 02
  String pass = '123';
  if (pass.length <= 6) throw PasswordLenghtError();


  //Tratamento 03
  Login login = Login();
  try {
    login.logar();
  } on PasswordLenghtError catch (e) {
    print("Falhou ao logar");
  } catch (e) {
    print("outro erro");
  }finally{
    print("Finalizou"); //exemplo de uso do finally: pode ser usado para enviar logs para o firebase analytics ou servidor
  }
}


//class para tratamento 03
class Login {
  void logar() {
    String user = 'admin';
    String pass = '123';
    if (pass.length <= 6) throw PasswordLenghtError(); //mudar para Exception ajuda a testar o catch que printa 'Outro erro'
  }
}


//class para tratamento 01
class CustomError implements Exception {
  final String error;
  CustomError(this.error);
}


//class para tratamento 02 e 03
class PasswordLenghtError implements Exception {
  PasswordLenghtError();
}
