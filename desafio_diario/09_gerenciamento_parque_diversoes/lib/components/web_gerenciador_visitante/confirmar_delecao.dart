import 'dart:html';

import 'package:parque/Visitante.dart';
import 'package:parque/Widget.dart';
import 'package:parque/components/web_gerenciador_visitante/remover_visitante.dart';

class ConfirmarDelecao extends Widget{
    Visitante visitante;
    List<Visitante> listaVisitantes;

    ConfirmarDelecao(this.visitante, this.listaVisitantes){
        render('''
                <div>
                    <h1>Deletar Visitante</h1>
                    <p>Tem certeza que deseja deletar o visitante ${visitante.nome}?</p>
                    <button class="btnDeletar" id="deletar">Deletar</button>
                    <button class="btnVoltar" id="voltar">Voltar</button>
                </div>
            ''');

        List<String> eventos = ['click', 'click'];
        List<String> ids = ['#deletar', '#voltar'];
        List<Function> funcoes = [
            (){
                listaVisitantes.remove(visitante);
                RemoverVisitante();
            },
            (){
                RemoverVisitante();
            }
        ];
        listeners(eventos, ids, funcoes);
    }
}