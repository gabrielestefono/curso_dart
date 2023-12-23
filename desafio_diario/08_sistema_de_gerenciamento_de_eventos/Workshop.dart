/*Classe Programacao:

Atributos: título, descrição, horário.
Construtor*/

import 'Programacao.dart';

class Workshop extends Programacao{
    String nome;
    String horario;
    String descricao;
    String tipo = "Workshop";

    Workshop(this.nome, this.horario, this.descricao) : super(nome, horario, descricao, "Workshop");
}