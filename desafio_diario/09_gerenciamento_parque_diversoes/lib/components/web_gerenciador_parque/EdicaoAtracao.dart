import 'dart:html';

import 'package:parque/WebAtracao.dart';
import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class EdicaoAtracao extends Widget
{
    WebAtracao atracao;

    EdicaoAtracao(this.atracao){
        render('''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Editar Atração</h2>
                <div class="form">
                    <label for="nome">Nome</label>
                    <input type="text" id="nome" value="${atracao.nome}">
                    <span></span>
                    <label for="capacidade_maxima">Capacidade Máxima</label>
                    <input type="number" id="capacidade_maxima" value="${atracao.capacidade_maxima}">
                    <span></span>
                    <label for="horario_inicio">Horário de Início</label>
                    <input type="time" id="horario_inicio" value="${atracao.horario_inicio}">
                    <span></span>
                    <label for="horario_fim">Horário de Fim</label>
                    <input type="time" id="horario_fim" value="${atracao.horario_fim}">
                    <span></span>
                    <span class="sucesso"></span>
                    <button class="btnCadastrar" id="salvarAtracao">Salvar</button>
                    <button class="btnVoltar" id="voltarAtracao">Voltar</button>
                </div>
            </div>
        ''');

        listeners(['click', 'click'], ['#voltarAtracao', '#salvarAtracao'], [WebGerenciadorParque.instance.editarAtracoes, salvarEdicao]);
    }

    void salvarEdicao(){
            resetarValidacao();
            String? nome = getInput('#nome');
            String? capacidade_maxima = getInput('#capacidade_maxima');
            String? horario_inicio = getInput('#horario_inicio');
            String? horario_fim = getInput('#horario_fim');
            if(verificarValidacao()){
                atracao.nome = nome!;
                atracao.capacidade_maxima = int.parse(capacidade_maxima!);
                atracao.horario_inicio = horario_inicio!;
                atracao.horario_fim = horario_fim!;
                querySelector('.sucesso')?.innerHtml = 'Atração editada com sucesso!';
                WebGerenciadorParque.instance.gerenciarAtracoes();
            }
        }
}