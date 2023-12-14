parametros() {
  print("06.3.1 - Parâmetros posicionados e default");

  void exibirDados1(String nome, [int? peso, double? altura]) {
    String dados = "Nome: $nome";

    if (peso != null) {
      dados += ". Peso: $peso";
    }

    if (altura != null) {
      dados += ". Altura: $altura";
    }

    print(dados);
  }

  void exibirDados2(String nome, {int? peso, double? altura}) {
    String dados = "Nome: $nome";

    if (peso != null) {
      dados += ". Peso: $peso";
    }

    if (altura != null) {
      dados += ". Altura: $altura";
    }

    print(dados);
  }

  exibirDados1("Gabriel", 66, 1.73);
  exibirDados2("Gabriel", altura: 1.73, peso: 64);

  void falar() {
    print("Olá!");
  }

  void saudacao(String nome, {Function? funcaoFalar}) {
    print('Olá, ${nome}');
    funcaoFalar;
  }

  saudacao("Gabriel", funcaoFalar: falar);
}

void main() {
  parametros();
}
