void semRetorno() {
  print('06.0 - Funções sem retorno!');
  print('\n');

  void conceito() {
    print('Função sem retorno');
    print('\n');
  }

  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print(resultado);
  }

  void verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = "é maior";
    } else {
      resposta = "não é maior";
    }
    print('${nome} ${resposta} de idade');
    print('\n');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print("Contagem: ${i == 0 ? "Vai!" : i} ");
    }
    print('\n');
  }

  converterParaMilhas(dynamic array) {
    dynamic milhas = 0.621271;
    for (dynamic item in array) {
      print('${item} km/h em milhas/h equivale à ${(item * milhas).toStringAsFixed(2)}');
    }
    print('Array arredondado!');
    print('\n');
  }

  conceito();
  somarValores(10, 20);
  verificarMaioridade('Gabriel', 26);
  contagemRegressiva(3);
  converterParaMilhas([1, 5, 10, 30, 40, 50, 60, 80, 100, 140, 180, 200]);
}

comRetorno() {
  print("06.01 - Funções com Retorno");

  String conceito() {
    return 'Função com retorno string';
  }

  int somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return resultado;
  }

  String verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = "é maior";
    } else {
      resposta = "não é maior";
    }
    return '${nome} ${resposta} de idade';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print("Contagem: ${i}") : resultado = "Contagem: Vai!";
    }
    return resultado;
  }

  String converterParaMilhas(dynamic array) {
    dynamic milhas = 0.621271;
    for (dynamic item in array) {
      print('${item} km/h em milhas/h equivale à ${(item * milhas).toStringAsFixed(2)}');
    }
    return 'Array arredondado!';
  }

  print(conceito());
  print(somarValores(25, 25));
  print(verificarMaioridade("Gabriel", 26));
  print(contagemRegressiva(3));
  print(converterParaMilhas([1, 5, 10, 30, 40, 50, 60, 80, 100, 140, 180, 200]));
}

void main() {
  semRetorno();
  comRetorno();
}
