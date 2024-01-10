// ferramenta que ajuda a validar json: https://jsonlint.com/
import 'dart:convert';

void main() {
  String json = '''
    {
      "usuario" : "fulano@gmail.com",
      "senha": 1234,
      "permissoes":[
        "owner", "admin"
      ]
    }
  ''';

  print(json);

  Map resultJson = jsonDecode(json);
  print(resultJson);

  print(resultJson["usuario"]);

  print(resultJson['permissoes'][0]);


  //transformando objetos em json
  Map mapa = {
    'nome': 'Liz',
    'pass': 123,
    'permissions': ['owner', 'admin']
  };

  var result = jsonEncode(mapa);
  print(result);
}
