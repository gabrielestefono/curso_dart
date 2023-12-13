void main() {
  print('06.1 - Loops for');
  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  print('');

  var numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (var numero in numeros) {
    print(numero);
  }
}
