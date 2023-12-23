/*Características da Classe Evento:

Atributos: nome, data, lista de Participante, lista de Programacao.
Construtor para inicializar os atributos.
Encapsulamento: Use getters e setters.
Métodos para adicionar/remover participantes e programações.*/

import 'dart:io';
import 'dart:math';

import 'Participante.dart';
import 'Programacao.dart';

class Evento{
    String nome, data;
    int id = Random().nextInt(999+1);
    List<Participante> participantes = [];
    List<Programacao> programacao = [];

    Evento(this.nome, this.data);

    void criarParticipante(){
        print("Por favor, digite o nome do participante:");
        String? nome = stdin.readLineSync();
        print("Por favor, digite o email do participante:");
        String? email = stdin.readLineSync();
        if(nome != null && email != null && nome != '' && email != ''){
            Participante participante = new Participante(nome, email);
            participantes.add(participante);
        }
    }

    void removerParticipante(){
        print("Por favor, digite o nome do participante:");
        String? nome = stdin.readLineSync();
        print("Por favor, digite o email do participante:");
        String? email = stdin.readLineSync();
        if (nome != null && email != null && nome != '' && email != '') {
            participantes = participantes.where((element) => element.nome != nome && element.email != email).toList();
        }
    }

    void mudarNome(Evento evento){
        print("Por favor, digite o novo nome do evento:");
        String? nome = stdin.readLineSync();
        if(nome != null && nome != ''){
            evento.nome = nome;
        }
    }

    void mudarData(Evento evento){
        print("Por favor, digite a nova data do evento:");
        String? data = stdin.readLineSync();
        if(data != null && data != ''){
            evento.data = data;
        }
    }

    void mudarProgramacao(Evento evento){}

    void mudarParticipantes(Evento evento){}
}