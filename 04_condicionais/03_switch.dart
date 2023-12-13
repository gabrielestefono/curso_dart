void main() {
  print('03.2 - Switch\n');
  String operacao = "%";

  double numero1 = 12;
  double numero2 = 3;

  switch (operacao) {
    case "+":
      print('Resultado ${numero1 + numero2}');
      break;
    case "-":
      print('Resultado ${numero1 - numero2}');
      break;
    case "/":
      print('Resultado ${numero1 / numero2}');
      break;
    case "%":
      print('Resultado ${numero1 % numero2}');
      break;
    case "*":
      print('Resultado ${numero1 * numero2}');
      break;
    default:
      print('Operação não encontrada');
  }
}
