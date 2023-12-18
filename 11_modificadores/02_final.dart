import 'Pessoa.dart';

void main() {
  print("11.0.1 - Modificadores - Final");

  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo;
  print("Velocidade máxima: ${velocidade},/s");

  for (int i = 1; i <= 3; i++) {
    final indice = i;
    print("Contagem: ${indice}");
  }

  Pessoa pessoa = new Pessoa("Gabril", ["Alany, Camili"]);
  pessoa.nome = "Gabriel Estéfono";
  // O array não pode ser alterado.
  print(pessoa.nome);
  print(pessoa.familiares);
  print("O array não pode ser alterado");
}
