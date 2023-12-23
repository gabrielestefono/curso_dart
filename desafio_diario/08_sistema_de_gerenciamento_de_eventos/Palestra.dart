/*Classe Programacao:

Atributos: título, descrição, horário.
Construtor*/

import 'Programacao.dart';

class Palestra extends Programacao{
    String nome;
    String horario;
    String descricao;
    String tipo = "Palestra";

    Palestra(this.nome, this.horario, this.descricao) : super(nome, horario, descricao, "Palestra");
}