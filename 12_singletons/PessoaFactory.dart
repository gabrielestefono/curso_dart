import 'dart:math';

class PessoaFactory {
  static final PessoaFactory instancia = PessoaFactory._costrutorNomeado('indefinido');
  late String nome;

  factory PessoaFactory() => instancia;

  PessoaFactory._costrutorNomeado(this.nome) {
    // outras configurações
  }
}

class PessoaInstancia {
  static PessoaInstancia? _instancia;
  late String nome;
  final int _identidade;

  factory PessoaInstancia({String nome = "indefinido", int? identidade}) {
    identidade = identidade ?? Random().nextInt(99999999 + 1);
    return _instancia ??= new PessoaInstancia._construtorNomeado(nome, identidade);
  }
  PessoaInstancia._construtorNomeado(this.nome, this._identidade);

  get identidade => _identidade;
}
