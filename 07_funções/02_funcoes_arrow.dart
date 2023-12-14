funcaoArrow() {
  print("06.2 - Funções arrow");

  String conceito() => 'Função com arrow com retorno implícito';

  String somarValores(int valorA, int valorB) => "Soma: ${valorA} + ${valorB} = ${valorA + valorB}";

  String verificarMaioridade(String nome, int idade) => idade >= 18 ? "É maior de idade" : "Não é maior de idade";

  String calcularRaioCirculo(double raio) => "Area do círculo ${(3.14 * raio) * (3.14 * raio)}";

  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas > 1)
          ? 0.9
          : 0;
  void calcularSalario(String nome, double salario, double bonus, int faltas) {
    var total = (salario * desconto(faltas)) + bonus;
    print("Empregado: ${nome}, salário: ${total}");
  }

  print(conceito());
  print(somarValores(2, 5));
  print(verificarMaioridade('Gabriel', 26));
  print(calcularRaioCirculo(2.15));
  calcularSalario('Gabriel', 2000, 100, 2);
}

void main() {
  funcaoArrow();
}
