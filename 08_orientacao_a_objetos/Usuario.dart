class Usuario {
  late String usuario;
  late String senha;

  void autenticar() {
    // Dados faker
    var usuario = "fma@gmail.com";
    var senha = "123456";

    if (this.usuario == usuario && this.senha == senha) {
      print("Usuário autenticado com sucesso!");
    } else {
      print("Erro ao autenticar");
    }
  }
}
