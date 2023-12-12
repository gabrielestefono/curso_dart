void main() {
  print('02.2 - Operadores Aritméticos');

  var peso = 10;
  peso = peso + 5;
  print(peso);
  peso += 5;
  print(peso);
  peso++;
  print(peso);

  var a, b, c, d, e, f;
  a = 3;
  b = ++a;
  print(b);

  c = ++a / --b;
  print(c);

  var valorA = 9, valorB = 2;
  print(valorA ~/ valorB);

  e = 1;
  f = e;
  f = null;
  f ??= ++e;
  print(f);

  var x, y, z;
  z = 1;
  x = y ?? z;
  print(x);
  print(y);

  var numero = 12;
  var par = numero % 2 == 0;
  var impar = numero % 2 != 0;
  var positivo = numero >= 0;
  var negativo = numero <= 0;
  print(par);
  print(impar);
  print(positivo);
  print(negativo);

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo % divisor;
  bool exata = resto == 0;
  print("Divisão: ${dividendo} / ${divisor} = ${quociente.toInt()} - Resto: ${resto}. ${exata == true ? "Conta exata" : "Conta não exata"}");
}
