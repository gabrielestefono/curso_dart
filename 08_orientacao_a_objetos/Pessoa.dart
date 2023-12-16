class Pessoa {
  late String nome;
  late int idade;

  void info() {
    print("|------------|--------|");
    print("|----NOME----|--IDADE-|");
    print("|--${nome}---|---${idade}---|");
    print("|------------|--------|");
  }
}
