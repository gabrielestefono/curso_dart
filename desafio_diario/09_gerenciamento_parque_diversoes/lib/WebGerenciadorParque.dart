// ignore: file_names
import 'dart:html';

class WebGerenciadorParque{

    WebGerenciadorParque._constructor();

    static final WebGerenciadorParque _instance = WebGerenciadorParque._constructor();

    static WebGerenciadorParque get instance => _instance;

    void gerenciarAtracoes(){
        querySelector('#output')?.innerHtml = '''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Escolha uma opção:</h2>
                <button class="btnCadastrar" id="cadastrarAtracao">Cadastrar</button>
                <button class="btnListar">Listar</button>
                <button class="btnEditar">Editar</button>
                <button class="btnRemover">Remover</button>
            </div>
        ''';

        querySelector('#cadastrarAtracao')?.onClick.listen((event){
            cadastrarAtracao();
        });
    }

    void opcoes(){
        querySelector('#output')?.innerHtml = '''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Escolha uma opção:</h2>
                <button class="btnGerenciar" id="gerenciarAtracoes">Gerenciar Atrações</button>
                <button class="btnGerenciar">Gerenciar Ingressos</button>
            </div>
        ''';

        querySelector('#gerenciarAtracoes')?.onClick.listen((event){
            gerenciarAtracoes();
        });
    }

    void cadastrarAtracao(){
        querySelector('#output')?.innerHtml = '''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Insira os dados para a nova atração</h2>
                <input type="text" placeholder="Nome" id="nomeAtracao">
                <input type="number" placeholder="Capacidade Máxima" id="capacidadeMaxima">
                <input type="text" placeholder="Horário de Início" id="horarioInicio">
                <input type="text" placeholder="Horário de Fim" id="horarioFim">
                <button class="btnCadastrar" id="cadastrarAtracao">Cadastrar</button>
            </div>
        ''';

        querySelector('#cadastrarAtracao')?.onClick.listen((event){
            String? nome = (querySelector('#nomeAtracao') as InputElement).value;
            String? capacidadeMaxima = (querySelector('#capacidadeMaxima') as InputElement).value;
            String? horarioInicio = (querySelector('#horarioInicio') as InputElement).value;
            String? horarioFim = (querySelector('#horarioFim') as InputElement).value;
        });
    }

}