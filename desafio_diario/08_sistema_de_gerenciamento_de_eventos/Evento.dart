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

    void editarParticipantes(){
        print("O que deseja fazer?");
        print("1 - Adicionar participante");
        print("2 - Editar participante");
        print("3 - Deletar participante");
        print("4 - Voltar");
        String? opcao = stdin.readLineSync();
        if(opcao != null && opcao != ''){
            try{
                int opcao_int = int.parse(opcao);
                switch (opcao_int) {
                    case 1:
                        this.adicionarParticipante();
                    case 2:
                        this.editarParticipante();
                    case 3:
                        this.deletarParticipante();
                    case 4:
                        break;
                    default:
                        print("Ocorreu um erro, por favor, tente novamente!");
                }
            }catch(e){
                print("Ocorreu um erro, por favor, tente novamente!");
            }
        }
    }

    void editarParticipante(){
        participantes.forEach((element) { print("Id: ${participantes.indexOf(element)} - Nome: ${element.nome}"); });
        print("Digite o id do participante que deseja editar: ");
        Participante participante = escolherParticipante();
        loop:
        while(true){
            print("O que deseja editar?");
            print("1 - Nome");
            print("2 - Email");
            print("3 - Voltar");
            String? opcao = stdin.readLineSync();
            if(opcao != null && opcao != ''){
                try{
                    int opcao_int = int.parse(opcao);
                    switch (opcao_int) {
                        case 1:
                            participante.editarNome();
                        case 2:
                            participante.editarEmail();
                        case 3:
                            break loop;
                        default:
                            print("Ocorreu um erro, por favor, tente novamente!");
                    }
                }catch(e){
                    print("Ocorreu um erro, por favor, tente novamente!");
                }
            }
        }
    }

    Participante escolherParticipante(){
        Participante participante;
        while(true){
            String? id = stdin.readLineSync();
            if(id != null && id != ''){
                try{
                    int id_int = int.parse(id);
                    participante = participantes[id_int];
                    break;
                }catch(e){
                    print("Ocorreu um erro, por favor, tente novamente!");
                }
            }else{
                print("Ocorreu um erro, por favor, tente novamente!");
            }
        }
        return participante;
    }

    void editarProgramacao(){
        print("O que deseja fazer?");
        print("1 - Adicionar programação");
        print("2 - Editar programação");
        print("3 - Deletar programação");
        print("4 - Voltar");
        String? opcao = stdin.readLineSync();
        if(opcao != null && opcao != ''){
            try{
                int opcao_int = int.parse(opcao);
                switch (opcao_int) {
                    case 1:
                        this.adicionarProgramacao();
                    case 2:
                        this.editarProgramacaoExistente();
                    case 3:
                        this.deletarProgramacao();
                    case 4:
                        break;
                    default:
                        print("Ocorreu um erro, por favor, tente novamente!");
                }
            }catch(e){
                print("Ocorreu um erro, por favor, tente novamente!");
            }
        }
    }

    void editarProgramacaoExistente(){
        programacao.forEach((element) { print("Id: ${programacao.indexOf(element)} - Titulo: ${element.titulo}"); });
        print("Digite o id da programação que deseja editar: ");
        Programacao programa = escolherProgramacao();
        loop:
        while(true){
            print("O que deseja editar?");
            print("1 - Titulo");
            print("2 - Descrição");
            print("3 - Horário");
            print("4 - Voltar");
            String? opcao = stdin.readLineSync();
            if(opcao != null && opcao != ''){
                try{
                    int opcao_int = int.parse(opcao);
                    switch (opcao_int) {
                        case 1:
                            programa.editarTitulo();
                        case 2:
                            programa.editarDescricao();
                        case 3:
                            programa.editarHorario();
                        case 4:
                            break loop;
                        default:
                            print("Ocorreu um erro, por favor, tente novamente!");
                    }
                }catch(e){
                    print("Ocorreu um erro, por favor, tente novamente!");
                }
            }
        }
    }

    void deletarParticipante(){}

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