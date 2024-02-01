import 'package:parque/Ingresso.dart';
import 'package:parque/Visitante.dart';
import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';
import 'package:parque/components/web_gerenciador_visitante/listar_visitantes.dart';

class ComprarIngresso extends Widget{
    Visitante visitante;
    ComprarIngresso(this.visitante, [Ingresso? ingresso]){
        render('''
                <div>
                    <h1>Comprar Ingresso</h1>
                    <label for="tipo">Tipo:</label>
                    <input type="text" id="tipo" name="tipo" placeholder="Tipo do ingresso" value="${ingresso?.tipo ?? ''}">
                    <span></span>
                    <label for="preco">Preço:</label>
                    <input type="text" id="preco" name="preco" placeholder="Preço do ingresso" value="${ingresso?.preco ?? ''}">
                    <span></span>
                    <label for="data_validade">Data de Validade:</label>
                    <input type="text" id="data_validade" name="data_validade" placeholder="Data de validade do ingresso" value="${ingresso?.data_validade ?? ''}">
                    <span></span>
                    ${ingresso == null ? '<button class="btnCadastrar" id="cadastrar">Cadastrar</button>' : '<button class="btnCadastrar" id="editar">Editar</button>'}
                    <button class="btnVoltar" id="voltar">Voltar</button>
                </div>
                ''');

        void callback(){
            resetarValidacao();
            String tipo = getInput('#tipo')!;
            String preco = getInput('#preco')!;
            String dataValidade = getInput('#data_validade')!;
            if(verificarValidacao()){
                if(ingresso == null){
                    Ingresso ingresso = Ingresso(tipo, preco, dataValidade);
                    visitante.ingressos.add(ingresso);
                    visitante.opcaoComprarIngresso(visitante);
                }else{
                    ingresso.tipo = tipo;
                    ingresso.preco = preco;
                    ingresso.data_validade = dataValidade;
                    ListarVisitante();
                }
            }
        }

        listeners(['click', 'click', 'click'],
            ['#cadastrar', '#voltar', '#editar'],
            [callback, WebGerenciadorParque.instance.gerenciarVisitantes, callback]);
    }
}