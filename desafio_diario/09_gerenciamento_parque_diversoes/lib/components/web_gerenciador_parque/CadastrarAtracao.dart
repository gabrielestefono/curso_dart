import 'dart:html';

import 'package:parque/WebAtracao.dart';
import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class CadastrarAtracao extends Widget{

    CadastrarAtracao(){
        render('''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Insira os dados para a nova atração</h2>
                <input type="text" placeholder="Nome" id="nomeAtracao" required>
                <span></span>
                <input type="number" placeholder="Capacidade Máxima" id="capacidadeMaxima" required>
                <span></span>
                <input type="time" placeholder="Horário de Início" id="horarioInicio" required>
                <span></span>
                <input type="time" placeholder="Horário de Fim" id="horarioFim" required>
                <span></span>
                <span class="sucesso"></span>
                <button class="btnCadastrar" id="cadastrarAtracao">Cadastrar</button>
                <button class="btnVoltar" id="voltarMenu">Voltar</button>
            </div>
        ''', recoverData: true);

        listeners(['click', 'click'], ['#cadastrarAtracao', '#voltarMenu'], [callback, WebGerenciadorParque.instance.gerenciarAtracoes]);
    }

    void callback(){
        resetarValidacao();
        String? nome = getInput('#nomeAtracao');
        String? capacidadeMaxima = getInput('#capacidadeMaxima');
        String? horarioInicio = getInput('#horarioInicio');
        String? horarioFim = getInput('#horarioFim');
        if(verificarValidacao()){
            WebAtracao atracao = WebAtracao(nome!, int.parse(capacidadeMaxima!), horarioInicio!, horarioFim!);
            WebGerenciadorParque.instance.lista_atracoes.add(atracao);
            querySelector('.sucesso')?.innerHtml = 'Atração cadastrada com sucesso!';
            WebGerenciadorParque.instance.gerenciarAtracoes();
        }
    }
}