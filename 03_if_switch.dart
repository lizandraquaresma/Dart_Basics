//Estruturas de controle de fluxo
void main (){

  //If e Else
  bool prosseguir = true;//modifique o valor para teste

  if(prosseguir){
    print("Andar");
  }else{
    print("Parar");
  }

  if(23>2){
    print("23 é maior que 2");
  }

  //Switch 
  int num = 2;
  switch(num){
    case 0:
    print("O valor é 0");
    break;

    case 1:
    print("O valor é 1");
    break;

    case 2:
    print("O valor é 2");
    break;

    default:
    print("Sem Valor");
  }
}