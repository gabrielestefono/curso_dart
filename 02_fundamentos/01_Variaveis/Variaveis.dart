void main() {
  print("Hello World");
  // valorA valorB calcularArea
  // Comentario tipo 1
  /* Comentário tipo 2 */
  // Comentário tipo 3 ///
  // Variáveis
  var valorA; // É dinâmica até ser atribuída
  var valorB;
  valorA = 10;
  valorB = 4;
  var valorC = 2.5;
  var resultado;
  resultado = valorA + valorB + valorC;
  print(resultado);
  var salario = 1000, desconto = 250;
  var conta = salario - desconto;
  print(conta);
  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);
  print("");
  print("Concatenar "
      "strings "
      "é simples assim!");
  var texto1 = '\nGabriel', texto2 = " Estéfono ", texto3 = '''\n Nome ''';
  var nome = texto1 + texto2 + texto3;
  print(nome);

  var verdadeiro = true;
  var falso = false;

  print("Verdadeiro = ${verdadeiro}"); // Interpolação
  print('Falso = ' + "$falso"); // Concatenação
  print(''.runtimeType); // Descobre o tipo de variável

  const pi = 3.14; // Constantes não têm valores alteráveis
  nome = "Gabriel"; // errada, pois deve ser especificado o tipo
  String sobrenome = "Gomes";
  int idade = 31;
  double altura = 1.73;
  bool adulto = true;
  print("\n Nome: ${nome} \n Sobrenome: ${sobrenome} \n Idade: ${idade} \n Altura: ${altura} \n Adulto: ${adulto}");
  print("\n nome: ${nome} \n Quantidade de letras: ${nome.length}");
  print("\n Sobrenome: ${sobrenome} \n Quantidade de letras: ${sobrenome.length}");
  print('''O numero pi é igual à $pi''');

  dynamic variavel = 2.0; // O tipo dinâmico pode mudar o tipo;
  variavel = 2;
  variavel = "2";
  variavel = true;
  print(variavel);
}
