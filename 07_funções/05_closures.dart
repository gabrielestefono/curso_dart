funcaoClosures() {
  print("06.5.0 - Closures sem retorno");
  var saudacao = (String nome) {
    var mensagem = (complemento) {
      print("Olá, ${nome}. ${complemento}");
    };
    mensagem("Seja bem-vindo!");
  };

  saudacao("Gabriel");
}

void main() {
  funcaoClosures();
}
