import 'dart:io';

void main(List<String> args) {
  Circulo circulo = Circulo(4);
   int opcao = 0;

  while (opcao != 3) {
      print("""1. Calcular Área\n2. Calcular Perímetro\n3. Sair""");
 
  opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        print("O valor da Area é: "+ circulo.carcular_area().toString());
        break;
      case 2:
        print("O valor do perimetro é: "+ circulo.carcular_perimetro().toString());
        break;
        case 3:
        print("SAINDO...");
        break;
      default:
        print("Opção inválida!");
    }
  }

}

class Circulo{

double raio;
double pi;

  Circulo(this.raio, {this.pi = 3.14});

  double carcular_area(){
    return 3.14 * (raio*raio);
  }

  double carcular_perimetro(){
    return 2 * raio * 3.14;
  }

}