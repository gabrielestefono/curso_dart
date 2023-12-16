import 'Conta.dart';
import 'Pessoa.dart';
import 'Usuario.dart';

void main() {
  print("08.0 - Classes/Objetos\n");

  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = "Gabriel";
  pessoa1.idade = 26;
  pessoa1.info();

  print("");

  Pessoa pessoa2 = new Pessoa();
  pessoa2.nome = "Julesca";
  pessoa2.idade = 24;
  print('nome: ${pessoa2.nome}');
  print('idade: ${pessoa2.idade}');

  print("");

  Usuario user1 = new Usuario();
  user1.usuario = "geg@gmail.com";
  user1.senha = "123456";
  user1.autenticar();

  print("");

  Usuario user2 = new Usuario();
  user2.usuario = "fma@gmail.com";
  user2.senha = "123456";
  user2.autenticar();

  print("");

  Conta conta = new Conta();
  print("Nome: ${conta.nome}. Numero da Conta: ${conta.numero_conta}. Saldo: ${conta.consultar_saldo()}");
  conta.calcular_salario(2000, 200, 2);
  conta.depositar(150);
  conta.depositar(500);
  conta.sacar(100);

  var pessoa3 = new Pessoa();
  pessoa3
    ..nome = "Cloe"
    ..idade = 1
    ..info();
}
