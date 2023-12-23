import 'dart:io';

import 'Evento.dart';
import 'GerenciadorDeEventos.dart';

main(){
    print("Olá! Bem vindo ao gerenciador de eventos");
    GerenciadorDeEventos gerenciador = GerenciadorDeEventos.instance;
    print("O que deseja fazer?");
    print("1 - Criar um novo evento");
    print("2 - Editar um evento");
    print("3 - Deletar um evento");
    print("4 - Listar eventos");
    while (true) {
      String? acao = stdin.readLineSync();
        if(acao != null){
            try{
                int acaoInt = int.parse(acao);
                switch (acaoInt) {
                    case 1:
                        gerenciador.criarEvento();
                        print("1 - Criar um novo evento");
                        print("2 - Editar um evento");
                        print("3 - Deletar um evento");
                        print("4 - Listar eventos");
                        break;
                    case 2:
                        gerenciador.editarEvento();
                        print("1 - Criar um novo evento");
                        print("2 - Editar um evento");
                        print("3 - Deletar um evento");
                        print("4 - Listar eventos");
                        break;
                    case 3:
                        gerenciador.removerEvento();
                        print("1 - Criar um novo evento");
                        print("2 - Editar um evento");
                        print("3 - Deletar um evento");
                        print("4 - Listar eventos");
                        break;
                    case 4:
                        gerenciador.listarEventos();
                        print("1 - Criar um novo evento");
                        print("2 - Editar um evento");
                        print("3 - Deletar um evento");
                        print("4 - Listar eventos");
                        break;
                    default:
                        print("Houve um erro, por favor, tente novamente");
                        print("1 - Criar um novo evento");
                        print("2 - Editar um evento");
                        print("3 - Deletar um evento");
                        print("4 - Listar eventos");
                }
            }catch(e){
                print("Houve um erro, por favor, tente novamente");
                print("1 - Criar um novo evento");
                print("2 - Editar um evento");
                print("3 - Deletar um evento");
                print("4 - Listar eventos");
            }
        }
    }
}