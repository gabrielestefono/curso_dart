void main() {
  print('02.1 Operadores relacionais');
  var nota = 69;
  var resultado = nota >= 70;
  print('Aluno aprovado: ${resultado}');

  bool testeLogico = (!false && true);
  print('Teste lógico: ${(3 > 1) && (3 < 2) || testeLogico}');
}
