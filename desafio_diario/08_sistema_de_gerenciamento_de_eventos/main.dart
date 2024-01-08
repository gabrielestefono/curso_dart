import 'GerenciaEvento.dart';

void main(){
        print("Olá! Bem vindo ao gerenciador de eventos");
        print("O que deseja fazer?");
    while(true){
        print("1 - Criar um novo evento");
        print("2 - Editar um evento");
        print("3 - Deletar um evento");
        print("4 - Listar eventos");
        GerenciaEvento gerenciador = GerenciaEvento.instance;
        gerenciador.opcoes();
    }
}