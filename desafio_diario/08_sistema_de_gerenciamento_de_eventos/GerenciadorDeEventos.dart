import 'dart:io';

import 'Evento.dart';

class GerenciadorDeEventos{
    List<Evento> lista_de_eventos = [];

    void criarEvento(){
        while(true){
            print("Por favor, digite o nome do evento:");
            String? nome_evento = stdin.readLineSync();
            print("Por favor, digite a data do evento");
            String? data_evento = stdin.readLineSync();
            if(nome_evento != null && nome_evento != '' && data_evento != null && data_evento != ''){
                Evento novo_evento = new Evento(nome_evento, data_evento);
                lista_de_eventos.add(novo_evento);
                print("Evento criado com sucesso!\n");
                break;
            }else{
                print("Ocorreu um erro, por favor, tente novamente!");
                continue;
            }
        }
    }

    void editarEvento(){
        print("Para sair, digite 0");
        print("Por favor, digite o id do evento: ");
        while(true){
            String? evento_buscar = stdin.readLineSync();
            if(evento_buscar != null && evento_buscar != ''){
                try{
                    int evento_buscado_int = int.parse(evento_buscar);
                    if(evento_buscado_int == 0){
                        break;
                    }
                    List<Evento> lista_eventos_buscados = lista_de_eventos.where((element) => element.id == evento_buscado_int).toList();
                    Evento evento_buscado = lista_eventos_buscados[0];
                    loopInterno:
                    while(true){
                        print("O que deseja editar?");
                        print("1 - Nome");
                        print("2 - Data");
                        print("3 - Participantes");
                        print("4 - Programação");
                        print("5 - Voltar");
                        String? acao = stdin.readLineSync();
                        if(acao != null && acao != ''){
                            try{
                                int acao_int = int.parse(acao);
                                switch (acao_int) {
                                    case 1:
                                        evento_buscado.mudarNome(evento_buscado);
                                        break;
                                    case 2:
                                        evento_buscado.mudarData(evento_buscado);
                                        break;
                                    case 3:
                                        evento_buscado.mudarParticipantes(evento_buscado);
                                        break;
                                    case 4:
                                        evento_buscado.mudarProgramacao(evento_buscado);
                                        break;
                                    case 5:
                                        print("Para sair, digite 0");
                                        print("Por favor, digite o id do evento: ");
                                        break loopInterno;
                                default:
                                        print("Ocorreu um erro, por favor, tente novamente!");
                                        print("Para sair, digite 0");
                                        print("Por favor, digite o id do evento:");
                                        continue;
                                }
                            }catch(e){
                                print("Ocorreu um erro, por favor, tente novamente!");
                                print("Para sair, digite 0");
                                print("Por favor, digite o id do evento:");
                                continue;
                            }
                        }
                    }
                }catch(e){
                    print("Ocorreu um erro, por favor, tente novamente!");
                    print("Para sair, digite 0");
                    print("Por favor, digite o id do evento:");
                    continue;
                }
            }
            else{
                print("Ocorreu um erro, por favor, tente novamente!");
                print("Para sair, digite 0");
                print("Por favor, digite o id do evento:");
                continue;
            }
        }
    }

    void removerEvento(){
        print("Para sair, digite 0");
        print("Por favor, digite o id do evento: ");
        whileSuperior:
        while(true){
            String? evento_buscar = stdin.readLineSync();
            if(evento_buscar != null && evento_buscar != ''){
                try{
                    int evento_buscado_int = int.parse(evento_buscar);
                    if(evento_buscado_int == 0 || evento_buscado_int == 2){
                        break;
                    }
                    List<Evento> lista_eventos_buscados = lista_de_eventos.where((element) => element.id == evento_buscado_int).toList();
                    Evento evento_buscado = lista_eventos_buscados[0];
                    print("Resumo do evento:");
                    print("Nome: ${evento_buscado.nome}");
                    print("Data: ${evento_buscado.data}");
                    print("Id: ${evento_buscado.id}");
                    print("Participantes: Criar essa função ainda");
                    print("Programação: Criar essa função ainda");
                    print("Tem certeza que deseja remover esse evento?");
                    print("1 - Sim");
                    print("2 - Não");
                    String? acao = stdin.readLineSync();
                    if(acao != null && acao != ''){
                        try{
                            int acao_int = int.parse(acao);
                            switch (acao_int) {
                                case 1:
                                    lista_de_eventos.remove(evento_buscado);
                                    print("Evento removido com sucesso!\n");
                                    print("1 - Criar um novo evento");
                                    print("2 - Editar um evento");
                                    print("3 - Deletar um evento");
                                    print("4 - Listar eventos");
                                    break;
                                case 2:
                                    break whileSuperior;
                              default:
                                    print("Ocorreu um erro, por favor, tente novamente!");
                                    print("Para sair, digite 0");
                                    print("Por favor, digite o id do evento:");
                                    continue;
                            }
                        }catch(e){
                            print("Ocorreu um erro, por favor, tente novamente!");
                            print("Para sair, digite 0");
                            print("Por favor, digite o id do evento:");
                            continue;
                        }
                    }
                }catch(e){
                    print("Ocorreu um erro, por favor, tente novamente!");
                    print("Para sair, digite 0");
                    print("Por favor, digite o id do evento:");
                    continue;
                }
            }
            else{
                print("Ocorreu um erro, por favor, tente novamente!");
                print("Para sair, digite 0");
                print("Por favor, digite o id do evento:");
                continue;
            }
        }
    }

    void listarEventos(){
        print('\n');
        print("Lista de eventos:");
        for (var evento in lista_de_eventos) {
            print("Nome: ${evento.nome}. Data: ${evento.data}. Id: ${evento.id}");
        }
        print('\n');
    }

    GerenciadorDeEventos._constructor();

    static final GerenciadorDeEventos _instance = GerenciadorDeEventos._constructor();

    static GerenciadorDeEventos get instance => _instance;
}