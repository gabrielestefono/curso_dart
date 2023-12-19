import 'Cao.dart';

void main() {
  print("14.0.0 - Sobrescritas de Métodos");

  var cao = Cao.domestico("Toby", "Pug", "Macho");
  print(cao.nome);
  print(cao.raca);
  print(cao.sexo);
  print(cao.idade);
  print(cao.docil);
  print(cao.desenvolvimento);
  print(cao.coluna ? "Possui coluna vertebral" : "Não possui coluna vertebral");
  cao.dormir();
  cao.alimentar();
  cao.reproduzir();
  print(cao);
  print((cao.docil != null && cao.docil == true) ? "Está amigável!" : "Não está amigável!");
}
