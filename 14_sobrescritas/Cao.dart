import 'Mamiferos.dart';

class Cao extends Mamiferos {
  late String nome;
  late String raca;

  Cao.domestico(this.nome, this.raca, String sexo, {String idade = "indefinida", bool docil = true}) : super.placentarios(sexo, idade, docil: docil);
  Cao.selvagem(this.nome, this.raca, sexo, {idade = "indefinida", docil = false}) : super.placentarios(sexo, idade, docil: docil);

  @override
  void dormir() // Sobrescreve o método da classe herdada
  {
    print("Dorme como um cão");
  }

  @override
  void alimentar() {
    super.alimentar();
    print("cão!");
  }

  @override
  void reproduzir() {
    print("Reproduz como um cão");
  }

  void latir() {
    print("Latir");
  }

  String toString() {
    return "Cão | Nome: $nome, Raça: $raca, Sexo: $sexo, Idade: $idade, Docil: $docil, Coluna: $coluna, Desenvolvimento: $desenvolvimento";
  }
}
