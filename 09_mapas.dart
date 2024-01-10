void main() {
  //  <chave, valor> - key value
  Map<String, String> mapa = {'chave': 'valor'};
  print(mapa);

  //Modos de adicionar
  mapa.putIfAbsent('chave2', () => 'valor2');
  print(mapa);

  mapa['chave3'] = 'valor3';
  print(mapa);

  //Modos de remover
  mapa.remove('chave');
  print(mapa);

  //Modos de atualizar valores
  mapa['chave2'] = 'valor2Atualizado';
  print(mapa);

  mapa.update('chave3', (value) => 'valor3Atualizado');
  print(mapa);

  //Realizando print
  mapa.forEach((key, value) => print('A chave é: $key e o valor é $value'));

  mapa.keys.forEach(print);

  mapa.values.forEach(print);
}
