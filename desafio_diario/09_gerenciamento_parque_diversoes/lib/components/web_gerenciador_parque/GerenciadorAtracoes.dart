import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class GerenciadorAtracoes extends Widget{

    GerenciadorAtracoes(){
        render('''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Escolha uma opção:</h2>
                <button class="btnCadastrar" id="cadastrarAtracao">Cadastrar</button>
                <button class="btnListar" id="listarAtracoes">Listar</button>
                <button class="btnEditar" id="editarAtracao">Editar</button>
                <button class="btnRemover" id="removerAtracao">Remover</button>
                <button class="btnVoltar" id="voltarMenu">Voltar</button>
            </div>
        ''');

        listeners(['click', 'click', 'click', 'click', 'click'],
            ['#cadastrarAtracao', '#listarAtracoes', '#editarAtracao', '#removerAtracao', '#voltarMenu'], 
            [
                WebGerenciadorParque.instance.cadastrarAtracao,
                WebGerenciadorParque.instance.listarAtracoes,
                WebGerenciadorParque.instance.editarAtracoes,
                WebGerenciadorParque.instance.removerAtracoes,
                WebGerenciadorParque.instance.voltar
            ]);
    }
}