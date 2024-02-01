import 'package:parque/WebAtracao.dart';
import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class RemoverAtracoes extends Widget
{
    RemoverAtracoes(){
        render('''
            <div>
                <h1>Gerenciador de Parque de Diversões</h1>
                <h2>Lista de Atrações</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Capacidade Máxima</th>
                            <th>Horário de Início</th>
                            <th>Horário de Fim</th>
                        </tr>
                    </thead>
                    <tbody>
                        ${WebGerenciadorParque.instance.lista_atracoes.map((WebAtracao atracao) => '''
                            <tr>
                                <td>${atracao.nome}</td>
                                <td>${atracao.capacidade_maxima}</td>
                                <td>${atracao.horario_inicio}</td>
                                <td>${atracao.horario_fim}</td>
                                <td><button id="removerAtracao${WebGerenciadorParque.instance.lista_atracoes.indexOf(atracao)}">Remover</button></td>
                            </tr>
                        ''').join('')}
                    </tbody>
                </table>
                <button class="btnVoltar" id="voltarMenu">Voltar</button>
            </div>
        ''');

        List<String> eventos = ['click'];
        List<String> elementos = ['#voltarMenu'];
        List<Function> listener = [WebGerenciadorParque.instance.gerenciarAtracoes];
        for(int i = 0; i < WebGerenciadorParque.instance.lista_atracoes.length; i++){
            eventos.add('click');
            elementos.add('#removerAtracao$i');
            listener.add(() => WebGerenciadorParque.instance.removerAtracao(WebGerenciadorParque.instance.lista_atracoes[i], WebGerenciadorParque.instance.lista_atracoes));
        }

        listeners(eventos, elementos, listener);
    }
}