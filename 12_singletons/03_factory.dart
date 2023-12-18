import 'PessoaFactory.dart';

void main() {
  print("12.3.0 - Singletons - Factory");

  var p1 = new PessoaFactory();
  print(p1.nome);
  p1.nome = "Gabriel";
  print(p1.nome);

  PessoaInstancia p2 = new PessoaInstancia(nome: "Gabriel");
  print(p2.nome);
  PessoaInstancia p3 = new PessoaInstancia(nome: "Gamelem", identidade: 12345678);
  print(p3.nome);
  print(p3.identidade);
}
