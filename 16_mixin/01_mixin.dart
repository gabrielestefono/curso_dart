abstract class Cidadao {
  late String nome;

  Cidadao(this.nome);

  void objetivosPessoais();

  void direitosEDeveres() {
    print("Todo cidadão tem direitos e deveres!");
  }
}

abstract class Presidenciavel {
  late String partido;
  late String ideologia;

  void ideologiaPolitica();
}

class Postagem {
  late String postagem;

  void escreverPostagem() {
    print("");
  }
}

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoContas();
}

mixin Conta {
  double _saldo = 0;
  double salario = 33000;

  get saldo => this._saldo;

  set depositar(double valor) => this._saldo += valor;

  bool declaracaoDeRenda() => _saldo / 12 > salario;
}

class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciavel {
  late String objetivo;

  Candidato(String nome, {required this.ideologia, required this.partido}) : super(nome) {
    direitosEDeveres();
  }

  @override
  void objetivosPessoais() {
    print("${nome} tem o objetivo de ${objetivo}");
  }

  @override
  late String postagem;

  @override
  void escreverPostagem() {
    print("Postagem de ${nome} no facebook: ${postagem}");
  }

  @override
  late String partido;

  @override
  late String ideologia;

  @override
  void ideologiaPolitica() {
    print("O ${nome} é candidato com ideologia de ${ideologia} pelo partido ${partido}");
  }

  @override
  void prestacaoContas() {
    if (declaracaoDeRenda()) {
      print("O candidato ${nome} está apto a concorrer as eleições!");
    } else {
      print("O candidato ${nome} não está apto a concorrer as eleições!");
    }
  }
}

void main() {
  var bolsonaro = Candidato("Bolsonaro", ideologia: "Direita", partido: "PSL");
  bolsonaro
    ..objetivo = "Ganhar a eleição"
    ..objetivosPessoais()
    ..postagem = "Quero ser presidente"
    ..escreverPostagem()
    ..ideologia = "Direita"
    ..partido = "PSL"
    ..ideologiaPolitica()
    ..depositar = 1000000
    ..prestacaoContas();
}
