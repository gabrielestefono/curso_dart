import 'package:parque/Visitante.dart';
import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class OpcaoComprarIngresso extends Widget{
    Visitante visitante;

    OpcaoComprarIngresso(this.visitante){
        render('''
                <div>
                    <h1>Deseja comprar ingressos?</h1>
                    <button class="btnCadastrar" id="cadastrar">Comprar</button>   
                    <button class="btnVoltar" id="voltar">Voltar</button>   
                </div>
            ''');

        listeners(['click', 'click'], ['#cadastrar', '#voltar'], [(){visitante.comprarIngresso(visitante);}, WebGerenciadorParque.instance.gerenciarVisitantes]);
    }
}