void main() {
  print("11.2.0 - Modificadores - Const");

  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print("${resultado}\n");

  final numeros = {raio, 2.5};
  numeros.add(resultado);
  print(numeros);

  final listaFinal = const [0, 1];
//   listaFinal.add(2);

  print(listaFinal);

  const listaConst = [1, 2, pi];
  print(listaConst);

  for (var i = 0; i < 3; i++) {
    final indiceFinal = i;
    const constante = 1;
    print("Contagem: ${constante + indiceFinal}");
  }

  var pais = Brasil(-15.792371, -47.882326);
  print(pais);
  print(Brasil.capital);
  print(pais.latitude);
  print(pais.longitude);
  print(Brasil.estados);
}

class Brasil {
  final double latitude;
  final double longitude;
  static const String capital = "Brasilia";
  static const estados = ["SP", "RJ", "MG", "..."];

  const Brasil(this.latitude, this.longitude);
}
