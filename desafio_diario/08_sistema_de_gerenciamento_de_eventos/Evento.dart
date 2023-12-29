import 'Participante.dart';
import 'Programacao.dart';

class Evento{
    String nome;
    String data;
    List<Participante> participantes = [];
    List<Programacao> programacao = [];

    void adicionarParticipante(){}

    void adicionarProgramacao(){}

    Evento(this.nome, this.data);
}