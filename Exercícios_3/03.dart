import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  
  List <Livro> livros = [];
  
  livros.add(Livro("José", "naja Book", 252525658, "Um pouco sozinho", "drama", "22/05/2023"));
  livros.add(Livro("Rafael", "Livro pro", 252, "A morte da cachorra", "Comédia", "22/05/2000"));
  livros.add(Livro("joão", "editora", 252, "pokemon", "terror", "22/05/2006"));

void Mostra_por_categoria(){
  print("QUal categoria dejesa ver?");
  String input = stdin.readLineSync()!;
  for(var Livro in livros){
    if(Livro.categoria.toLowerCase() == input.toLowerCase()){
      print("\nAutor: ${Livro.autor}");
      print("Editora: ${Livro.editora}");
      print("ISBN: ${Livro.ISBN}");
      print("Título: ${Livro.titulo}");
      print("Categoria: ${Livro.categoria}");
      print("Ano de edição: ${Livro.ano_de_Edicao}");
      print("---------------");
    }
  }
}

void exibir_livros_por_editora(){
  print("QUal Editora dejesa ver?");
  String input = stdin.readLineSync()!;
  for(var Livro in livros){
    if(Livro.editora.toLowerCase() == input.toLowerCase()){
      print("\nAutor: ${Livro.autor}");
      print("Editora: ${Livro.editora}");
      print("ISBN: ${Livro.ISBN}");
      print("Título: ${Livro.titulo}");
      print("Categoria: ${Livro.categoria}");
      print("Ano de edição: ${Livro.ano_de_Edicao}");
      print("---------------");
    }
  }
}
void exibir_livros_por_autor(){
  print("QUal autor você dejesa ver os livros?");
  String input = stdin.readLineSync()!;
  for(var Livro in livros){
    if(Livro.autor.toLowerCase() == input.toLowerCase()){
      print("\nAutor: ${Livro.autor}");
      print("Editora: ${Livro.editora}");
      print("ISBN: ${Livro.ISBN}");
      print("Título: ${Livro.titulo}");
      print("Categoria: ${Livro.categoria}");
      print("Ano de edição: ${Livro.ano_de_Edicao}");
      print("---------------");
    }
  }
}
void exibir_todos(){
  for(var Livro in livros){
      print("\nAutor: ${Livro.autor}");
      print("Editora: ${Livro.editora}");
      print("ISBN: ${Livro.ISBN}");
      print("Título: ${Livro.titulo}");
      print("Categoria: ${Livro.categoria}");
      print("Ano de edição: ${Livro.ano_de_Edicao}");
      print("---------------");
  }
}
  int opcao = 0;

  while (opcao != 5) {
      print("""1. Listar livros por categoria\n2. Listar livros por editora\n3. Listar livros por autor\n4. Listar todos os livros disponíveis\n5. SAIR""");
 
  opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        Mostra_por_categoria();
        break;
      case 2:
        exibir_livros_por_editora();
        break;
        case 3:
        exibir_livros_por_autor();
        break;
        case 4:
        exibir_todos();
        break;
        case 5:
        print("SAINDO...");
        break;
      default:
        print("Opção inválida!");
    }
  }
  

}


class Livro{
  String autor;
  String editora;
  int ISBN;
  String titulo;
  String categoria;
  String ano_de_Edicao;

  Livro(this.autor,this.editora,this.ISBN,this.titulo,this.categoria,this.ano_de_Edicao){

}


}