/*Classe Programacao:

Atributos: título, descrição, horário.
Construtor*/

import 'Programacao.dart';

class MesaRedonda extends Programacao{
    String nome;
    String horario;
    String descricao;
    String tipo = "Mesa Redonda";

    MesaRedonda(this.nome, this.horario, this.descricao) : super(nome, horario, descricao, "Mesa Redonda");
}