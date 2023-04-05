// Escreva um programa para gerenciar o IMC de diferentes pessoas.
// Para realizar o cadastro, o programa deve conter o peso, a altura e o nome de cada
// pessoa. No método main, crie uma lista com 03 pessoas e forneça as seguintes
// opções:
// 1. Mostrar as pessoas que estão abaixo do peso (IMC < 18,5)
// 2. Mostrar as pessoas que estão dentro do peso ideal (IMC > 18,5 e IMC < 25)
// 3. Mostrar as pessoas que estão acima do peso (IMC > = 25)
// Obs.: imc =
// peso
// altura ∗ altura
import 'dart:io';

void main(List<String> args) {
  List <Pessoa> pessoas = [];

  pessoas.add(Pessoa(104, 1.78, "Carlos"));
  pessoas.add(Pessoa(69, 1.78, "Marcela"));
  pessoas.add(Pessoa(50, 1.78, "Marcos"));
  int opcao = 0;
 while (opcao != 4) {
      print("""1. Pessoas abaixo do peso\n2. Pessoas com peso ideal\n3. Pessoas acima do peso\n4. SAIR""");
 
  opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        for(var Pessoa in pessoas){
          double imc;
          imc = Pessoa.peso / (Pessoa.altura + Pessoa.altura);
          if(imc < 18.5){
            print("\nNome: ${Pessoa.nome}");
            print("Altura: ${Pessoa.altura}");
            print("Peso: ${Pessoa.peso}");
            print("---------------------------");
          }
        }
        break;
      case 2:
        for(var Pessoa in pessoas){
        double imc;
        imc = Pessoa.peso / (Pessoa.altura + Pessoa.altura);
        if(imc > 18.5 && imc < 25){
          print("\nNome: ${Pessoa.nome}");
          print("Altura: ${Pessoa.altura}");
          print("Peso: ${Pessoa.peso}");
          print("---------------------------");
          }
        }
        break;
        case 3:
        for(var Pessoa in pessoas){
        double imc;
        imc = Pessoa.peso / (Pessoa.altura + Pessoa.altura);
        if(imc >= 25){
          print("\nNome: ${Pessoa.nome}");
          print("Altura: ${Pessoa.altura}");
          print("Peso: ${Pessoa.peso}");
          print("---------------------------");
          }
        }
        break;
        case 4:
        print("SAINDO...");
        break;
      default:
        print("Opção inválida!");
    }
  }

}

class Pessoa{
  double peso,altura;
  String nome;

  Pessoa(this.peso,this.altura,this.nome){

  }
}