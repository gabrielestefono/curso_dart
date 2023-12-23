/*Classe Participante:

Atributos: nome, email.
Construtor*/

import 'Notificavel.dart';

class Participante with Notificavel{
    String nome;
    String email;

    Participante(this.nome, this.email);

    @override
    void enviarNotificacao(nome, evento) {
        super.enviarNotificacao(nome, evento);
    }
}