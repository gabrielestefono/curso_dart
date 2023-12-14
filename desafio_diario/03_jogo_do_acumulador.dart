import 'dart:io';

void main() {
  print("Bem-vindo ao jogo do acumulador:");
  print('');
  print('Para finalizar o jogo, digite um numero negativo.');
  print('');
  print("Se o número é par, a metade do valor será adicionado.");
  print("Se o número for ímpar, o triplo do valor será adicionado.");
  int contador;
  double pontuacao = 0;
  while (true) {
    String? input = stdin.readLineSync();
    if (input != null) {
      try {
        contador = int.parse(input);
        if (contador < 0) {
          break;
        } else if (contador % 2 == 0) {
          pontuacao = pontuacao + (contador / 2);
        } else {
          pontuacao = pontuacao + (contador * 3);
        }
      } catch (e) {
        print("Numero inválido, por favor, tente novamente.");
      }
    } else {
      print("Numero inválido, por favor, tente novamente.");
    }
    print("Contador: ${pontuacao}");
  }
}
