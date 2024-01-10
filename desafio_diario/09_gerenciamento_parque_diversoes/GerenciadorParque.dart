import 'dart:io';

import 'Atracao.dart';
import 'TipoResposta.dart';

class GerenciadorParque extends TipoResposta{
    List<Atracao> atracoes = [];

    GerenciadorParque._constructor();

    static final GerenciadorParque _instance = GerenciadorParque._constructor();

    static GerenciadorParque get instance => _instance;

    void opcoes(){
        print('Escolha uma opção:');
        print('1 - Adicionar atração');
        print('2 - Remover atração');
        print('3 - Editar atração');
        print('4 - Listar atrações');
        print('5 - Sair');
        String? opcao = stdin.readLineSync();
        if(opcao != null && opcao != ''){
            switch(int.parse(opcao)){
                case 1:
                    adicionarAtracao();
                    break;
                case 2:
                    removerAtracao();
                    break;
                case 3:
                    editarAtracao();
                    break;
                /*case 4:
                    listarAtracoes();
                    break;
                case 5:
                    print('Saindo...');
                    break;*/
                default:
                    print('Opção inválida');
                    break;
            }
        }else{
            print('Opção inválida');
        }
    }



    void adicionarAtracao(){
        String nome, horario_inicio, horario_fim;
        int capacidade_maxima;
        
        nome = aguardaRespostaString("Digite o nome da atração:");
        capacidade_maxima = aguardaRespostaInt("Digite a capacidade máxima da atração:");
        horario_inicio = aguardaRespostaString("Digite o horário de início da atração:");
        horario_fim = aguardaRespostaString("Digite o horário final da atração:");
        
        Atracao atracao = Atracao(nome, capacidade_maxima, horario_inicio, horario_fim);
        atracoes.add(atracao);
        print("Atração criada com sucesso!");
    }

    void removerAtracao(){
        if(atracoes.length == 0){
            print("Não há atrações a se remover");
        }else{
            int id;
            atracoes.forEach((element) {print("Id: ${(atracoes.indexOf(element) + 1)}. Nome: ${element.nome}");});
            print("Para voltar, digite 0");
            id = aguardaRespostaInt("Digite o id da atração que deseja remover: ");
            atracoes.remove(atracoes[id - 1]);
            print("Atração removida com sucessso!");
        }
    }

    void editarAtracao(){
        if(atracoes.length == 0){
            print("Não há atrações a se editar.");
        }else{
            atracoes.forEach((element) {print("Id: ${atracoes.indexOf(element)}. Nome: ${element.nome}");});
            int opcao = aguardaRespostaInt("Selecione a atração que deseja editar: ");
            print("Selecione o que deseja editar?");
            print("1 - Editar nome");
            print("2 - Editar capacidade máxima");
            print("3 - Editar horário de início");
            print("4 - Editar horário final");
            print("5 - Voltar");
            int editar = aguardaRespostaInt();
            while(true){
                switch (editar) {
              case 1:
                atracoes[opcao].editarNome();
                break;
              case 2:
                atracoes[opcao].editarCapacidadeMaxima();
                break;
              case 3:
                atracoes[opcao].editarHorarioInicio();
                break;
              case 4:
                atracoes[opcao].editarHorarioFinal();
                break;
              case 5:
                break;
              default:
                print("Ocorreu um errro, por favor, tente novamente!");
              }
            }
        }
    }
}