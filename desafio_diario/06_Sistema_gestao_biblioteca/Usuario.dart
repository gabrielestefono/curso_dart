import 'dart:math';

class Usuario {
  late String nome;
  late int _id_usuario;

  Usuario(this.nome) {
    this._id_usuario = Random().nextInt(9999 + 1);
  }

  get identificacao {
    return this._id_usuario;
  }
}
