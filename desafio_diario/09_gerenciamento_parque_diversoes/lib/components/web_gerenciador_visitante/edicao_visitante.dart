import 'package:parque/Visitante.dart';
import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class EdicaoVisitante extends Widget{
    Visitante visitante;
    EdicaoVisitante(this.visitante){
        render('''
                <div>
                    <h1>Cadastrar Visitante</h1>
                    <label for="nome">Nome:</label>
                    <input type="text" id="nome" name="nome" placeholder="Nome do visitante" value=${visitante.nome}>
                    <span></span>
                    <label for="idade">Idade:</label>
                    <input type="text" id="idade" name="idade" placeholder="Idade do visitante" value=${visitante.idade}>
                    <span></span>
                    <button class="btnCadastrar" id="cadastrar">Editar</button>   
                    <button class="btnVoltar" id="voltar">Voltar</button>   
                </div>
            ''');

        void callback(){
            resetarValidacao();
            String? nome = getInput('#nome');
            String? idade = getInput('#idade');
            if(verificarValidacao()){
                visitante.nome = nome!;
                visitante.idade = idade!;
                WebGerenciadorParque.instance.editarVisitante();
            }
        }

        listeners(['click', 'click'], ['#cadastrar', '#voltar'], [callback, WebGerenciadorParque.instance.gerenciarVisitantes]);
    }


}