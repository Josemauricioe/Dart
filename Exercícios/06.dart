import 'dart:io';

void main(List<String> args) {
int opcao = 0;
while(opcao != 3){
print("MENU\n1 - Transformar de Fahrenheit para Celsius\n2 - Transformar de Kelvin para Celsius\n3 - SAIR");
opcao = int.parse(stdin.readLineSync()!);

double fagrenh (){
  print("Digite a temperatura em frahrenheit: ");
  double fagrenh = double.parse(stdin.readLineSync()!);
  double celsius;
  return celsius = (fagrenh - 32) / 1.8;
}
double kelvin(){
  print("Digite a temperatura em Kelvin: ");
  double kelvin = double.parse(stdin.readLineSync()!);
  double calsius;
  return calsius = kelvin - 273;
}

switch(opcao){
    case 1:
    print("A convenção deu: "+fagrenh().toString());
      break;
    case 2:
    print("A convenção deu: "+kelvin().toString());
      break;
    case 3:
      break;
      default:
      print("Digite um opção valida!!!");
}
}
}