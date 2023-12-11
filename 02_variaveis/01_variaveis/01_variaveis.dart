void main() {
  print("(01.0) - Variáveis");
  // Comentário em linha
  /* Comentário em
  bloco */
  /// Doc comment
  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;
  resultado = valorA + valorB + valorC;
  print(resultado);
  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);
  var numero = 3 + (2 * 4) + (10 / 5);
  print(numero);
  print('');
  print("Concatenar "
      "string "
      "é simples assim");
  var texto1 = '\nGabriel ';
  var texto2 = "Estéfono";
  var texto3 = '''\ne você!''';
  var nome = texto1 + texto2 + texto3;
  print(nome);
  var verdadeiro = true;
  var falso = false;
  print('Verdadeiro = ${verdadeiro}'); // Isso é uma interpolação
  print('Falso = ' + "$falso"); // Isso é uma concatenação
  print(''.runtimeType); // Descobre o tipo de variável

  const pi = 3.14;
  nome = "Gabriel";
  String sobrenome = "Estéfono";
  int idade = 26;
  double altura = 1.73;
  bool adulto = true;

  print('\nnome: ' + "${nome} \nQuantidade de letras: ${nome.length} " + """\nSobrenome ${sobrenome} \nQuantidade de letras: ${sobrenome.length}""");

  print('''Idade: ${idade} \naltura: ${altura} \nadulto: ${adulto}
  \npi: ${pi}
  ''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = "dois";
  variavel = true;
  print(variavel);
}
