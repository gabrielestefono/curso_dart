void main() {
  print('03.1 Ternário\n');

  if (true) {
    print('Verdadeiro');
  } else {
    print('falso');
  }

  print(true ? 'Verdadeiro' : 'Falso');

  int idade = 17;

  print(idade < 14
      ? "Criança"
      : idade < 18
          ? "Adolescente"
          : 'Adulto');

  int nota = 70;

  String resultado = (nota < 40)
      ? "Reprovado"
      : (nota < 70)
          ? "Recuperação"
          : "Aprovado";

  print(resultado);

  int numero = 12;
  print("Numero ${numero} é ${numero % 2 == 0 ? "Par" : "Impar"} e ${(numero >= 0 ? "Positivo" : "Negativo")}");

  int multiplo = 5;
  print("Numero ${numero} ${numero % multiplo == 0 ? 'é' : 'não é'} multiplo de ${multiplo}");
}
