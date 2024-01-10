import 'dart:collection';
import 'Visitante.dart';

class Atracao{
    String nome;
    int capacidade_maxima;
    Queue<Visitante> lista_espera = Queue<Visitante>();
    String horario_inicio;
    String horario_fim;

    Atracao(this.nome, this.capacidade_maxima, this.horario_inicio, this.horario_fim);

    void editarNome(){}

    void editarCapacidadeMaxima(){}

    void editarHorarioInicio(){}

    void editarHorarioFinal(){}

}