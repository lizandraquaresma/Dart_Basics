void main() {
  String nome = "lizandra";
  print(nome.toFistCharToUpperCase());
  print(nome.toFistCharToUpperCase());
  print("Maria".toFistCharToUpperCase());
  print(EnumTest.enumValue.toValue());
  print(EnumTest.enumNovo.toValue());
}

enum EnumTest {
  enumValue,
  enumNovo;
}

extension ExtensionsEnum on EnumTest {
  String toValue() {
    Map mapa = {EnumTest.enumValue: 'xpto', EnumTest.enumNovo: 'xpg'};
    return mapa[this];
  }
}

extension ExtensionString on String {
  String toFistCharToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}
