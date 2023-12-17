import 'dart:io';

dynamic adicionarNumeros(dynamic array, int numero) {
  array.add(numero);
  return array;
}

int receberNumero() {
  print("Por favor, digite um numero: ");
  String? valor = stdin.readLineSync();
  if (valor != null) {
    int valor_inteiro = int.parse(valor);
    return valor_inteiro;
  } else {
    return 0;
  }
}

void calcularMedia(dynamic array) {
  int numero_total = 0;
  for (int numero in array) {
    numero_total += numero;
  }
  print("A média é: ${numero_total / (array.length)}");
}

void numeroMaximo(dynamic array) {
  int numero_maximo = 0;
  for (int numero in array) {
    if (numero > numero_maximo) {
      numero_maximo = numero;
    }
  }
  print("O numero máximo é: ${numero_maximo}");
}

void numeroMinimo(dynamic array) {
  int numero_minimo = 9223372036854775807;
  for (int numero in array) {
    if (numero < numero_minimo) {
      numero_minimo = numero;
    }
  }
  print("O numero mínimo é: ${numero_minimo}");
}

void contarParesEImpares(dynamic array) {
  int numeros_pares = 0;
  int numeros_impares = 0;
  for (int numero in array) {
    if (numero % 2 == 0) {
      numeros_pares++;
    } else {
      numeros_impares++;
    }
  }
  print("Numeros Pares: ${numeros_pares}");
  print("Numeros_impares: ${numeros_impares}");
}

void main() {
  int numero_recebido = 0;
  dynamic lista = [];
  print("Para finalizar o programa, digite um numero negativo");
  while (numero_recebido >= 0) {
    numero_recebido = receberNumero();
    lista = adicionarNumeros(lista, numero_recebido);
    calcularMedia(lista);
    numeroMaximo(lista);
    numeroMinimo(lista);
    contarParesEImpares(lista);
    print("");
    print("-----------------------------------------------");
    print("");
  }
}
