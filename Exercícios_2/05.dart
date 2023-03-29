import 'dart:io';
void main(List<String> args) {



  int o = 0;
  while(o != 3){
    
  print("Digite a base: ");
  double base = double.parse(stdin.readLineSync()!);
  print("Digite a altura: ");
  double altura = double.parse(stdin.readLineSync()!);
    double area_de_ret(a,h){
    return base*altura;
  }
  double area_de_per(a,h){
    return (2*base)+(2*altura);
  }
      print("===========MENU=============\n1 - Calcular a área do retângulo\n2 - Calcular o perímetro do retângulo\n3 - Sair");
     o = int.parse(stdin.readLineSync()!);

    switch(o){
      case 1:
      print("A area do retângulo é: "+area_de_ret(base,altura).toString());
      break;
      case 2:
      print("O perímetro do retângulo é: "+area_de_per(base,altura).toString());
      break;
      case 3:
      print("FIM");
      break;

      default:
      print("Digite um opção valida!!!!!!!!!!!!!!!!");
    }
  }
  
  
}