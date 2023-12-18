void main() {
  print("12.2.0 - Singletons - GET");

  print(PessoaGetter.instancia);

  PessoaGetter.instancia.nome = "Gabriel";
  print(PessoaGetter.instancia.nome);
}

class PessoaGetter {
  static final PessoaGetter _instancia = PessoaGetter._construtorNomeado();
  late String nome;

  PessoaGetter._construtorNomeado();

  static PessoaGetter get instancia {
    return _instancia;
  }
}
