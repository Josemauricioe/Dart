import 'dart:io';
void main(List<String> args) {

  
  print("Digite o seu salario: ");
  double salario = double.parse(stdin.readLineSync()!);

  void calcular(){
      if(salario <= 2000){
      print("O seu salario é: $salario");
  }else if(salario == 2001 || salario <= 3500){
    double resultado = salario * 15 / 100;
    resultado = resultado + salario;
    print("O seu salario é: $resultado"); 
  }else if(salario == 3501 || salario <= 5000){
  double resultado = salario * 22 / 100;
    resultado = resultado + salario;
    print("O seu salario é: $resultado"); 
  }else if(salario == 3501 || salario <= 5000) {
    double resultado = salario * 30 / 100;
    resultado = resultado + salario;
    print("O seu salario é: $resultado"); 
}
}
calcular();
}