import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class GerenciadorVisitante extends Widget{
    GerenciadorVisitante(){
        render('''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Escolha uma opção:</h2>
                <button class="btnCadastrar" id="cadastrarVisitante">Cadastrar Visitante</button>
                <button class="btnListar" id="listarVisitantes">Editar Ingressos</button>
                <button class="btnEditar" id="editarVisitante">Editar Visitante</button>
                <button class="btnRemover" id="removerVisitante">Remover Visitante</button>
                <button class="btnVoltar" id="voltarMenu">Voltar</button>
            </div>
        ''');

        listeners(['click','click','click','click','click'],
            ['#cadastrarVisitante', '#listarVisitantes', '#editarVisitante', '#removerVisitante', '#voltarMenu'],
            [WebGerenciadorParque.instance.cadastrarVisitante, WebGerenciadorParque.instance.listarVisitantes, WebGerenciadorParque.instance.editarVisitante, WebGerenciadorParque.instance.removerVisitante, WebGerenciadorParque.instance.opcoes]);
    }
}