import 'Participante.dart';
import 'Programacao.dart';

class Evento{
    String nome;
    String data;
    List<Participante> participantes = [];
    List<Programacao> programacao = [];

    Evento(this.nome, this.data);
}