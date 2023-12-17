import 'Tarefa.dart';

class GerenciadorTarefas {
  List<Tarefa> _tarefa = [];

  void adicionarNovaTarefa(String descricao) {
    var novaTarefa = Tarefa(descricao);
    _tarefa.add(novaTarefa);
  }

  List<Tarefa> get tarefas {
    return _tarefa;
  }

  void listarTarefas() {
    for (Tarefa tarefa in tarefas) {
      if (tarefa.finalizada == true) {
        print("Id: ${tarefas.indexOf(tarefa)}. Tarefa: ${tarefa.descricao}. Status: Concluída.");
      } else {
        print("Id: ${tarefas.indexOf(tarefa)}. Tarefa: ${tarefa.descricao}. Status: Pendente.");
      }
    }
  }

  void marcarComoFeita(int tarefa) {
    tarefas[tarefa].marcarComoFinalizada();
  }
}
