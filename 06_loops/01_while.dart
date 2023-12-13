void main() {
  print('06.0 - While e Do While');
  var numero = 5;
  while (numero > 0) {
    print('while: ${numero}');
    numero--;
  }

  print('');

  var contagem = 0;
  do {
    print('DoWhile: ${contagem}');
    contagem++;
  } while (contagem <= 4);

  int multiplo = 4;
  int min = 10;
  int max = 20;
  int resultado = min;
  print('');

  while (resultado <= max) {
    if (resultado % multiplo == 0) {
      print("Primeiro multiplo de ${multiplo} entre ${min} e ${max} é: ${resultado}");
      break;
    }
    resultado++;
  }
}
