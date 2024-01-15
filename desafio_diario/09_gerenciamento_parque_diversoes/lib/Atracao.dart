import 'dart:collection';
import 'TipoResposta.dart';
import 'Visitante.dart';

class Atracao extends TipoResposta{
    String nome;
    int capacidade_maxima;
    Queue<Visitante> lista_espera = Queue<Visitante>();
    String horario_inicio;
    String horario_fim;

    Atracao(this.nome, this.capacidade_maxima, this.horario_inicio, this.horario_fim);

    void editarNome(){
        String nome = aguardaRespostaString("Digite o novo nome da atração:");
        this.nome = nome;
    }

    void editarCapacidadeMaxima(){
        int capacidade_maxima = aguardaRespostaInt("Digite a nova capacidade máxima da atração:");
        this.capacidade_maxima = capacidade_maxima;
    }

    void editarHorarioInicio(){
        String horario_inicio = aguardaRespostaString("Digite o novo horário de início da atração:");
        this.horario_inicio = horario_inicio;
    }

    void editarHorarioFinal(){
        String horario_fim = aguardaRespostaString("Digite o novo horário final da atração:");
        this.horario_fim = horario_fim;
    }

}