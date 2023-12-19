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

class Candidato extends Cidadao implements Postagem, Presidenciavel {
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
    ..ideologiaPolitica();
}
