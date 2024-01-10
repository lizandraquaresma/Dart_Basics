// 2 - Introdução null-safety
//Artigo sobre Null Safety: https://dev.to/rrafush/entendendo-o-null-safety-437k 
void main(){
  
  String? sobre; //utilizar a interrogação permite que a var contenha null
  sobre = "ABC";
  print(sobre!);//utilizar ! faz com que nao seja aceito null 
  
  
  late String sobrenome; // o late permite que a variavel seja null, mas após ela receber um valor, ela nao podera aceitar null novamente. - No caso do ? isso é possível
  sobrenome = "quaresma";
  print(sobrenome);
  
  }