funcoesAnonimas() {
  print('06.4.0 - Funções Anônimas Conceito');

  var anonima1 = () => print("Anônima");
  anonima1();

  var anonima2 = (String msg) {
    print(msg);
  };

  anonima2("Anônima 2");
}

void main() {
  funcoesAnonimas();
}
