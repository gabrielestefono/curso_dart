void main() {
  print("11.0.0 - Modificadoroes - Static");
  double raio = 5;
  var calculos1 = new Calculos();
  print(calculos1.pi);
  print(Calculos.piEstatico);
  print(calculos1.areaCirculo(raio));

  print("");

  Calculos calculos2 = new Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print(Calculos.areaCirculoEstatica(raio) == Calculos().areaCirculo(raio));
}

class Calculos {
  double pi = 3.14;
  static double piEstatico = 3.14;

  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

  static double areaCirculoEstatica(double raio) {
    return piEstatico * (raio * raio);
  }
}
