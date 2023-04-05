// Crie uma classe estudante. Esta classe deve ter nome, número de
// matrícula, endereço, e 04 notas. Forneça um construtor e métodos para alterar e
// obter o nome do estudante e as notas. Além disso, crie um método para calcular a
// média do estudante. No método main, crie uma lista com 03 estudantes e forneça
// as seguintes opções:

// 1. Listar os estudantes aprovados e suas notas
// 2. Listar os estudantes reprovados e suas notas
// 3. Listar as matriculas e as notas de todos os estudantes
// 4. Listar os nomes e os endereços de todos os estudantes
import 'dart:io';
import 'dart:math';

void main(List<String> args) {

  List <Estudante> estudantes = [];
  estudantes.add(Estudante("Jose", "Rua Joao Rogrigues", "32425254363", [10,9,9.5,10]));
  estudantes.add(Estudante("Paulo", "Rua Joao naja", "745747474", [10,8,7,6]));
  estudantes.add(Estudante("carlos", "Rua 13", "956385e54", [1,4,10,2]));

  int opcao = 0;

  void aprovados(){
    double media = 0;
    // for(var Estudante in estudantes){
    //   int con = 0;
    //   con++;
    //   media = (Estudante.notas[con] + media) / 4;
    //    if(media < 6){
    //     print("EStudante: " + Estudante.nome);
    //     print("Aprovandos!!!");
    //   }
    // }
    for(var Estudante in estudantes){
      media = (Estudante.notas[0] + Estudante.notas[1] + Estudante.notas[2] + Estudante.notas[3]) / 4;
      if(media > 6){
        print("\nEstundantes: "+Estudante.nome);
        print("Aprovados");
        }
      }
    }
      void reprovados(){
    double media = 0;
    // for(var Estudante in estudantes){
    //   int con = 0;
    //   con++;
    //   media = (Estudante.notas[con] + media) / 4;
    //    if(media < 6){
    //     print("EStudante: " + Estudante.nome);
    //     print("Aprovandos!!!");
    //   }
    // }
    for(var Estudante in estudantes){
      media = (Estudante.notas[0] + Estudante.notas[1] + Estudante.notas[2] + Estudante.notas[3]) / 4;
      if(media < 6){
        print("\nEstundantes: "+Estudante.nome);
        print("Reprovados");
        }
      }
      }

    void lista_ma(){
      for(var Estudante in estudantes){
        print("\nMacrícula: "+Estudante.matricula);
        print("Notas: "+Estudante.notas.toString());
    }
    }
    void lista_no(){
      for(var Estudante in estudantes){
        print("\nMacrícula: "+Estudante.nome);
        print("Notas: "+Estudante.endereco);
    }
    }

  while (opcao != 5) {
      print("""1. Listar livros por categoria\n2. Listar livros por editora\n3. Listar livros por autor\n4. Listar todos os livros disponíveis\n5. SAIR""");
 
  opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        aprovados();
        break;
      case 2:
        reprovados();
        break;
        case 3:
        lista_ma();
        break;
        case 4:
        lista_no();
        break;
        case 5:
        print("SAINDO...");
        break;
      default:
        print("Opção inválida!");
    }
  }
  }


class Estudante{
  String nome,endereco,matricula;
  List <double> notas = [0,0,0,0];

  Estudante(this.nome,this.endereco,this.matricula,this.notas){

  }
}
