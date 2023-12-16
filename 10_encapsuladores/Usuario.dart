class Usuario {
  bool alteracao = false;
  late String nome;
  late String _senha;

  Usuario(this.nome, String senha) {
    this._senha = senha;
  }

  // Getter padrão
  String get senha {
    return _senha;
  }

  // Setter padrão
  set senha(String senha) {
    if (alteracao == true) {
      _senha == senha;
      print("Senha alterada com sucesso!");
    } else {
      print("Erro, acesso negado!");
    }
  }
}
