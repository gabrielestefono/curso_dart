import 'dart:math';

class Usuario {
  late String nome;
  late int id_usuario;

  Usuario(this.nome) {
    this.id_usuario = Random().nextInt(9999 + 1);
  }
}
