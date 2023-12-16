import 'dart:math';

class Conta {
  bool alterar_limite = false;
  late int _numero_da_conta;
  late String _nome;
  double _saldo = 0;
  double _limite = 500;

  Conta(String nome) {
    this._nome = nome;
    this._numero_da_conta = Random().nextInt(9999);
    print("Conta numero: ${_numero_da_conta}. Titular: ${_nome}. Criada com sucesso!");
  }

  Conta.vip(String nome, {double limite = 10000}) {
    this.alterar_limite = true;
    this._limite = limite;
    this._nome = nome;
    this._numero_da_conta = Random().nextInt(999);
    print("Conta numero: ${_numero_da_conta}. Titular: ${_nome}. Criada com sucesso!");
  }

  int get numero_da_conta {
    return this._numero_da_conta;
  }

  double get saldo => this._saldo;

  set limite(double limite) {
    if (alterar_limite) {
      this._limite = limite;
      print("Limite alterado para o valor: ${this._limite}");
    } else {
      print("Pedido de alteração registrado com sucesso!");
    }
  }

  String get informacao => "Titular: ${_nome}. Conta: ${_numero_da_conta}. Saldo: ${_saldo}";

  set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print("Deposito de ${deposito} realizado com sucesso! Saldo atual: ${_saldo}");
    } else {
      print("Erro, deposito não realizado!");
    }
  }

  set saque(double saque) {
    if (saque > 0 && saque <= this._limite) {
      if (saque <= this._saldo) {
        this._saldo -= saque;
        print("Saque de ${saque} realizado com sucesso! Saldo atual: ${_saldo}");
      } else {
        print("Saldo insuficiente!");
      }
    } else {
      print("Limite para saque é de ${this._limite}");
    }
  }
}
