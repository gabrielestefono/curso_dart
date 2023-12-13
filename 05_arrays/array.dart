void main() {
  print('04.0 - Arrays');

  var textos = ['Gabriel', 'Estéfono'];
  print(textos);
  var numeros = [1, 2.5, 5, 31, 36];
  print(numeros);
  var codicoes = [false, true, false, true];
  print('${textos[0]} ${textos[1]}');

  numeros.add(5);
  numeros.insert(6, 80);
  print(numeros);
  numeros.removeRange(0, 2);
  print(numeros);
  numeros.remove(5);
  print(numeros);
  print(numeros.length);
  numeros.clear();
  print(numeros);
  print(numeros.isEmpty);
  numeros.add(5);
  print(numeros.contains(5));
  textos.sort();
  numeros = [12, 32, 20, 80, 1, 3];
  numeros.sort();
  textos.sort((a, b) => a.compareTo(b));
  print(textos);
}
