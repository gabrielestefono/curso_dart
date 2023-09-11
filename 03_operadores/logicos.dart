void main() {
  print("02.0 - Operadores lógicos (&& || !)");
  var verdadeiro = !false;
  print(verdadeiro);
  bool falso = !true;
  print(falso);
  print("Verdadeiro = ${verdadeiro}");
  print("Falso = ${falso}");
  print("Operador (!) !true = ${!true}");
  print("Operador (!) !false = ${!false}");
  bool teste1 = verdadeiro || verdadeiro;
  bool teste2 = verdadeiro || falso;
  bool teste3 = falso || verdadeiro;
  bool teste4 = falso || falso;
  print(teste1);
  print(teste2);
  print(teste3);
  print(teste4);
  bool teste5 = verdadeiro && verdadeiro;
  bool teste6 = verdadeiro && falso;
  bool teste7 = falso && verdadeiro;
  bool teste8 = falso && falso;
  print(teste5);
  print(teste6);
  print(teste7);
  print(teste8);
}
