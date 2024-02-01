import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class Opcoes extends Widget{

    Opcoes(){
        render('''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Escolha uma opção:</h2>
                <button class="btnGerenciar" id="gerenciarAtracoes">Gerenciar Atrações</button>
                <button class="btnGerenciar" id="gerenciarIngressos">Gerenciar Ingressos</button>
            </div>
        ''');

        listeners(['click', 'click'], ['#gerenciarAtracoes', '#gerenciarIngressos'], [WebGerenciadorParque.instance.gerenciarAtracoes, WebGerenciadorParque.instance.gerenciarVisitantes]);
    }
}