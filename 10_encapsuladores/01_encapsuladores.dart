import 'Conta.dart';
import 'Usuario.dart';

void main() {
  print("09.0 - Encapsuladores");

  var usuario = new Usuario("Gabriel", "abc123");
  print(usuario.senha);
  usuario.senha = "novaSenha";
  print("Nova tentativa!");
  usuario.alteracao = true;
  usuario.senha = "novaSenha";
  print(usuario.senha);

  var conta = new Conta("Eu mesmo");
  conta
    ..deposito = 900
    ..saque = 100
    ..saque = 500
    ..saque = 300
    ..limite = 5000
    ..alterar_limite = true
    ..limite = 5000;
}
