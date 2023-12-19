abstract class Artista {
  void acao() {
    print("Performista");
  }
}

mixin Cantor on Artista {
  void acao() {
    print("Cantor");
  }
}

mixin Dancarino {
  void acao() {
    print("Dança");
  }
}

abstract class Acao {
  void executar();
}

class Musico extends Artista with Dancarino /*, Cantor*/ implements Acao {
  void acao() {
    print("Compôe");
  }

  @override
  void executar() {
    super.acao();
    acao();
  }
}

void main() {
  Musico musico = new Musico();
  musico.executar();
}
