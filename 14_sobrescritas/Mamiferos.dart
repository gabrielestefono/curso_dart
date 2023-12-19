import 'Animal.dart';

abstract class Mamiferos extends Animal {
  late String sexo;
  late String desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = "Placentários";
  }

  Mamiferos.marsupiais(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = "Placentários + Bolsa externa";
  }

  Mamiferos.monotremados(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    this.desenvolvimento = "Ovo";
  }

  void alimentar() {
    print("Se alimenta");
    print("Como um");
  }

  void reproduzir();
}
