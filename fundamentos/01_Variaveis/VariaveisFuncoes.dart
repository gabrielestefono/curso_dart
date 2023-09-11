/* Tipos de variáveis */
// Num(int, double)
// String
// Bool
// Dinâmica

void main() {
  print('Variáveis - Funções');

  num pi = 3.14;
  print(pi);
  print(pi.floor()); // 3
  print(pi.round()); // 3
  print(pi.ceil()); // 4
  print(pi.clamp(3, 3.1)); // 3.1
  print(pi.compareTo(3)); // 1
  print(pi.remainder(3)); // 0.14
  print(pi.toInt()); // 3
  print(2.toDouble()); // 2.0
  print(pi.toString()); // 3.14 string
  print(pi.toStringAsFixed(1));
  print(pi.truncate()); // 3
  print(pi.isNegative); // false
  print(pi.isInfinite); // False
  print((pi / 0).isInfinite); // true
  print(12.gcd(16)); // 4
  print("1".padLeft(2, "0"));
  print(" ");
  print(" ");
  print(" ");

  String nome = "Nome";
  String nomecompleto = "\t Gabriel Estéfono";

  print(nome.toLowerCase());
  print(nome.toUpperCase());
  print(nomecompleto.trim()); // Remove espaços do início e do fim
  print(nomecompleto.split(" ")); // transforma em um array a cada espaço
  print(nome.split(""));
  print(nome.substring(1, 3));
  print(nome.startsWith("N"));
  print(nome.startsWith("ome", 1));
  print(nome.replaceAll("Nome", "Gabriel"));
  print(nome.replaceFirst("N", ""));
  print(nome.replaceRange(1, 3, "Gab"));
  print(nomecompleto.trim().split(" "));
  print(nome.contains("f"));
  print(nome.contains("e"));
  print(nome.indexOf("om"));
  print(nome.length);
  print(nome.endsWith("e"));
  print(nome.compareTo("nome"));
  print(nome.compareTo("Nome"));
  print(nome.compareTo("ome"));
  print(" ".isEmpty);
  print("".isEmpty);
  print(double.parse("12.55"));
  print("1" is String);
  print(int.parse("12"));
  print(nome.lastIndexOf("e"));
  String sopa = "Sopa de letrinhas";
  int index = sopa.indexOf(" de ");
  print(index);
  print("A sopa é ${sopa.substring(index).trim()}");
  print(" ");
  print(" ");
  print(" ");
  num numero = 3.14;
  print(numero is double);
  print(numero is! double);
}
