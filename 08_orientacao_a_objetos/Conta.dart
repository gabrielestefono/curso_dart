import 'dart:math';

class Conta {
  String nome = "João";
  int numero_conta = new Random().nextInt(10000 + 1);
  double saldo = 0;

  double consultar_saldo() => this.saldo;

  double desconto(int faltas) => faltas > 1
      ? 0.8
      : faltas == 1
          ? 0.9
          : 1;

  void depositar(double valor_depositar) {
    this.saldo = this.saldo + valor_depositar;
    print("Depósito: ${valor_depositar} Saldo: ${this.saldo}");
  }

  void sacar(valor_sacado) {
    if (this.saldo - valor_sacado >= 0) {
      this.saldo = this.saldo - valor_sacado;
      print("Saque: ${valor_sacado}. Saldo: ${this.saldo}");
    } else {
      print("Valor insuficiente para o saque");
    }
  }

  void calcular_salario(double salario, double bonus, int faltas) {
    var salario_calculado = this.saldo = (salario * desconto(faltas)) + bonus;
    print("Salario: ${salario_calculado}. Bônus: ${bonus}. Faltas: ${faltas}");
  }
}
