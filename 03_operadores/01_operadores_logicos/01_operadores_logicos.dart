void main() {
  print('02.0 - Operadores Lógicos (&& || !)');
  print('');
  var verdadeiro = !false;
  print(verdadeiro);
  bool falso = !true;
  print(falso);
  print("Verdadeiro = ${verdadeiro}. Falso = ${falso}");
  print("Operadore !true = ${!true}. !false = ${!false}");
  bool teste1 = true || false;
  bool teste2 = false || false;
  bool teste3 = true || true;
  print(teste1);
  print(teste2);
  print(teste3);
  bool teste4 = true && false;
  bool teste5 = false && false;
  bool teste6 = true && true;
  print(teste4);
  print(teste5);
  print(teste6);
}
