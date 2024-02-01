import 'package:parque/WebAtracao.dart';
import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class RemoverAtracao extends Widget{
    WebAtracao atracao;
    List<WebAtracao> lista_atracoes;

    RemoverAtracao(this.atracao, this.lista_atracoes){
        render('''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Remover Atração</h2>
                <p>Tem certeza que deseja remover a atração ${atracao.nome}?</p>
                <button class="btnRemover" id="removerAtracao">Remover</button>
                <button class="btnVoltar" id="voltarMenu">Voltar</button>
            </div>
        ''');

        listeners(['click', 'click'], ['#voltarMenu', '#removerAtracao'], [WebGerenciadorParque.instance.removerAtracoes, ()=>{removerAtracao(lista_atracoes, atracao)}]);
    }

    void removerAtracao(List<WebAtracao> lista_atracoes, WebAtracao atracao){
        lista_atracoes.remove(atracao);
        WebGerenciadorParque.instance.removerAtracoes();
    }
}