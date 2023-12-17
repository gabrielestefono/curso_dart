import 'dart:io';
import 'GerenciadorTarefas.dart';

void adicionarTarefa(GerenciadorTarefas lista) {
  print("Digite a tarefa que deseja adicionar.");
  dynamic adicionar_tarefa = stdin.readLineSync();
  lista.adicionarNovaTarefa(adicionar_tarefa);
  lista.listarTarefas();
}

void marcarComoConcluida(GerenciadorTarefas lista) {
  while (true) {
    print("Por favor, digite o id da tarefa que deseja modificar: ");
    String? marcarConcluida = stdin.readLineSync();
    if (marcarConcluida == null) {
      return;
    }
    try {
      int marcadaParaConcluir = int.parse(marcarConcluida);
      if (marcadaParaConcluir < 0) {
        break;
      } else if (marcadaParaConcluir > lista.tarefas.length) {
        print("Valor inválido, por favor, tente novamente!");
      } else {
        lista.marcarComoFeita(marcadaParaConcluir);
        break;
      }
    } catch (e) {
      print("Valor inválido, por favor, tente novamente!");
    }
  }
}

void main() {
  GerenciadorTarefas novo_gerenciador = new GerenciadorTarefas();
  print("Iniciando programa!");
  print("Olá! Seja bem vindo à sua lista de tarefas");
  print("Para finalizar o programa, digite um numero negativo");
  while (true) {
    print("Digite - 0 - Para adicionar uma nova tarefa.");
    print("Digite - 1 - Para marcar uma tarefa como concluída.");
    print("Digite - 2 - Para visualizar todas as tarefas.");
    String? executarAcao = stdin.readLineSync();
    if (executarAcao == null) {
      continue;
    }
    try {
      int numeroAcao = int.parse(executarAcao);
      if (numeroAcao < 0) {
        break;
      } else if (numeroAcao > 2) {
        print("Valor não reconhecido, por favor, tente novamente!");
      } else if (numeroAcao == 0) {
        adicionarTarefa(novo_gerenciador);
      } else if (numeroAcao == 1) {
        marcarComoConcluida(novo_gerenciador);
      } else if (numeroAcao == 2) {
        novo_gerenciador.listarTarefas();
      }
    } catch (e) {
      print("Valor não reconhecido, por favor, tente novamente!");
    }
  }
  print("Finalizando programa!");
}
