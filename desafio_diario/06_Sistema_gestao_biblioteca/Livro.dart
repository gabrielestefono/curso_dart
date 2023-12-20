class Livro {
  late String titulo;
  late String autor;
  late String _ano_publicacao;

  Livro(this.titulo, this.autor, String ano_publicacao) {
    this._ano_publicacao = ano_publicacao;
  }

  String get ano_publicacao {
    return this._ano_publicacao;
  }

  set ano_publicacao(String ano_publicacao) {
    this._ano_publicacao = ano_publicacao;
  }
}