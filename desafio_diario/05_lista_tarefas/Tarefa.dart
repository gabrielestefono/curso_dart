class Tarefa {
  late String descricao;
  late bool finalizada;

  void marcarComoFinalizada() {
    this.finalizada = !this.finalizada;
    print("Marcada como finalizada!");
  }

  Tarefa(String descricao) {
    this.descricao = descricao;
    this.finalizada = false;
  }
}
