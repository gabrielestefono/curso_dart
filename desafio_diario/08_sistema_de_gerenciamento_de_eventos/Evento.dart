import 'dart:io';

import 'Participante.dart';
import 'Programacao.dart';

class Evento{
    String nome;
    String data;
    List<Participante> participantes = [];
    List<Programacao> programacao = [];

    void adicionarParticipante(){
        while(true){
            print("Digite o nome do participante: ");
            String? nome = stdin.readLineSync();
            print("Digite o email do participante: ");
            String? email = stdin.readLineSync();
            if(nome != null && nome != '' && email != null && email != ''){
                Participante participante = new Participante(nome, email);
                participantes.add(participante);
                print("Participante adicionado com sucesso!");
                break;
            }else{
                print("Ocorreu um erro, por favor, tente novamente!");
            }
        }
    }

    void adicionarProgramacao(){
        while(true){
            print("Digite o titulo da programação: ");
            String? titulo = stdin.readLineSync();  
            print("Digite a descrição da programação: ");
            String? descricao = stdin.readLineSync();
            print("Digite o horário da programação: ");
            String? horario = stdin.readLineSync();
            if(titulo != null && titulo != '' && descricao != null && descricao != '' && horario != null && horario != ''){
                this.escolherTipoProgramacao(titulo, horario, descricao);
                print("Programação adicionada com sucesso!");
                break;
            }
        }
    }

    void escolherTipoProgramacao(titulo, descricao, horario){
        Programacao programa;
        loop:
        while(true){
            print("Escolha o tipo de programação:");
            print("1 - Palestra");
            print("2 - Workshop");
            String? tipo = stdin.readLineSync();
            if(tipo != null && tipo != ''){
                try{
                    int tipo_int = int.parse(tipo);
                    switch (tipo_int) {
                        case 1:
                            programa = Programacao.palestra(titulo, horario, descricao);
                            break loop;
                        case 2:
                            programa = Programacao.workshop(titulo, horario, descricao);
                            break loop;
                        default:
                            print("Ocorreu um erro, por favor, tente novamente!");
                    }
                }catch(e){
                    print("Ocorreu um erro, por favor, tente novamente!");
                }
            }
        }
        this.programacao.add(programa);
    }

    void editarNome(){
        print("Digite o novo nome do evento: ");
        String? nome = stdin.readLineSync();
        if(nome != null && nome != ''){
            this.nome = nome;
            print("Nome alterado com sucesso!");
        }else{
            print("Ocorreu um erro, por favor, tente novamente!");
        }
    }

    void editarData(){
        print("Digite a nova data do evento: ");
        String? data = stdin.readLineSync();
        if(data != null && data != ''){
            this.data = data;
            print("Data alterada com sucesso!");
        }else{
            print("Ocorreu um erro, por favor, tente novamente!");
        }
    }

    void editarParticipantes(){}

    void editarProgramacao(){}

    void detalhes(){
        print("Nome: ${this.nome}");
        print("Data: ${this.data}");
        print("Participantes: ");
        this.participantes.forEach((element) {
            print("Nome: ${element.nome} - Email: ${element.email}");
        });
        print("Programação: ");
        this.programacao.forEach((element) {
            print("Titulo: ${element.titulo} - Horário: ${element.horario} - Descrição: ${element.descricao}");
        });
    }

    Evento(this.nome, this.data);
}