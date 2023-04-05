import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite um número: ");
  int input = int.parse(stdin.readLineSync()!);

  if(input % 2 == 0){
    print("Numero PAR!!!");
  }else{
    print("Numero IMPAR!!!");
  }
}