import 'dart:io';
void main(List<String> args) {
  

  print("Digite um número!!!");
  String numnu = stdin.readLineSync()!;
  print("Digite mais um número!!!");
  String numnu1 = stdin.readLineSync()!;
  int numnuint = int.parse(numnu);
  int numnuint1 = int.parse(numnu1);

  var numInt;
  do{
        print("MENU\n1. Retornar a soma entre dois números\n2. Retornar a subtração entre dois números\n3. Retornar a multiplicação entre dois números\n4. Retornar a divisão entre dois números\n5. SAIR");
      String num = stdin.readLineSync()!;
       int numInt = int.parse(num);
       switch(numInt){  
         case 1:
           int resultado = numnuint+numnuint1;
           print("Soma:$resultado");
           break;
         case 2:
           int resultado = numnuint-numnuint1;
            print("Subtração:$resultado");
           break;
         case 3:
          int resultado = numnuint*numnuint1;
            print("Multiplicação:$resultado");
           break;
         case 4:
           double resultado = numnuint / numnuint1;
            print("Divisão:$resultado");
           break;
       }
          
    }while(numInt == 5);
    

}