import 'dart:io';
import 'Evento.dart';

class GerenciaEvento{
    List<Evento> eventos = [];

    GerenciaEvento._contructor();

    static final GerenciaEvento _instance = GerenciaEvento._contructor();

    static GerenciaEvento get instance => _instance;

    void opcoes(){
        String? opcao = stdin.readLineSync();
        if(opcao != null && opcao != ''){
            try{
                int opcao_int = int.parse(opcao);
                switch (opcao_int) {
                    case 1:
                        criarEvento();
                        break;
                    case 2:
                        editarEvento();
                        break;
                    case 3:
                        deletarEvento();
                        break;
                    default:
                        print("Ocorreu um erro, por favor, tente novamente!");
                }
            }catch(e){
                print("Ocorreu um erro, por favor, tente novamente!");
            }
        }
    }

    void criarEvento(){
        print("Digite o nome do evento: ");
        String? nome = stdin.readLineSync();
        print("Digite a data do evento: ");
        String? data = stdin.readLineSync();
        if(nome != null && nome != '' && data != null && data != ''){
            Evento evento = new Evento(nome, data);
            eventos.add(evento);
            while(true){
                print("Adicionar Participantes? (S/N)");
                String? opcao = stdin.readLineSync();
                if(opcao == 'S' || opcao == 's'){
                    evento.adicionarParticipante();
                }else if(opcao == 'N' || opcao == 'n'){
                    break;
                }else{
                    print("Ocorreu um erro, por favor, tente novamente!");
                }
            }
            while(true){
                print("Adicionar Programação? (S/N)");
                String? opcao = stdin.readLineSync();
                if(opcao == 'S' || opcao == 's'){
                    evento.adicionarProgramacao();
                }else if(opcao == 'N' || opcao == 'n'){
                    print("Evento criado com sucesso!");
                    break;
                }else{
                    print("Ocorreu um erro, por favor, tente novamente!");
                }
            }
        }else{
            print("Ocorreu um erro, por favor, tente novamente!");
        }
    }

    void editarEvento(){
        if(eventos.length == 0){
            print("Não há eventos para editar!");
        }else{
            eventos.forEach((element) { print("Id: ${eventos.indexOf(element)} - Nome: ${element.nome}"); });
            print("Digite o id do evento que deseja editar: ");
            Evento evento = escolherEvento();
            while(true){
                print("O que deseja editar?");
                print("1 - Nome");
                print("2 - Data");
                print("3 - Participantes");
                print("4 - Programação");
            }
        }
    }

    Evento escolherEvento(){
        Evento evento;
        while(true){
            print("Digite o id do evento que deseja editar: ");
            String? id = stdin.readLineSync();
            if(id != null && id != ''){
                try{
                    int id_int = int.parse(id);
                    evento = eventos[id_int];
                    break;
                }catch(e){
                    print("Ocorreu um erro, por favor, tente novamente!");
                }
            }else{
                print("Ocorreu um erro, por favor, tente novamente!");
            }
        }
        return evento;
    }

    void deletarEvento(){}
}