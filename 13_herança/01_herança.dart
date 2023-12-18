class Animal {
  String idade;
  bool? docil;

  Animal(this.idade, {this.docil});

  void dormir() {
    print("Dorme como um animal");
  }
}

class Mamiferos extends Animal {
  String sexo;
  Mamiferos(this.sexo, idade, docil) : super(idade, docil: docil);

  void alimentar() {
    print("Se alimenta como um mamífero");
  }
}

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao(this.nome, this.raca, String sexo, {String? idade, bool? docil}) : super(sexo, idade, docil) {
    this.idade = idade ?? "indefinido";
    sexo = sexo ?? "Indefinido";
  }
  void latir() {
    print("Late como um cão!");
  }
}

void main() {
  print("13.0.0 - Heranças");
  Cao cachorro = Cao("Lunar", "Vira-lata", "Fêmea");
  print(cachorro.nome);
  print(cachorro.raca);
  print(cachorro.sexo);
}
