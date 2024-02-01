import 'package:parque/Visitante.dart';
import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class CadastrarVisitante extends Widget{
    CadastrarVisitante(){
        render('''
                <div>
                    <h1>Cadastrar Visitante</h1>
                    <label for="nome">Nome:</label>
                    <input type="text" id="nome" name="nome" placeholder="Nome do visitante">
                    <span></span>
                    <label for="idade">Idade:</label>
                    <input type="text" id="idade" name="idade" placeholder="Idade do visitante">
                    <span></span>
                    <button class="btnCadastrar" id="cadastrar">Cadastrar</button>   
                    <button class="btnVoltar" id="voltar">Voltar</button>   
                </div>
            ''');

        void callback(){
            resetarValidacao();
            String? nome = getInput('#nome');
            String? idade = getInput('#idade');
            if(verificarValidacao()){
                Visitante visitante = Visitante(nome!, idade!);
                WebGerenciadorParque.instance.lista_visitantes.add(visitante);
                visitante.opcaoComprarIngresso(visitante);
            }
        }

        listeners(['click', 'click'], ['#cadastrar', '#voltar'], [callback, WebGerenciadorParque.instance.gerenciarVisitantes]);
    }


}