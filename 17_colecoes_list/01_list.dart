listForEach() {
  print("17.1.0) List ForEach\n");

  var array = [0, 1, 2, 3, 4, 5];
  array.forEach((element) => print(element));

  List<int> inteiros = [0, 1, 2, 3, 4, 5];
  List<double> doubles = [0.1, 1.2, 2.3, 3.4, 4.5, 5.6];
  List<bool> booleanos = [true, false, true, true, false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print("\ninteiros: ${inteiros.runtimeType}");
  print("doubles: ${doubles.runtimeType}");
  print("booleanos: ${booleanos.runtimeType}");
  print("frutas: ${frutas.runtimeType}");
}

void main() {
  listForEach();
}
