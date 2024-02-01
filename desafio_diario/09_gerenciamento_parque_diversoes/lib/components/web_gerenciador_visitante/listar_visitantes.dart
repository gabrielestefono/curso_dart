import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';

class ListarVisitante extends Widget{
    ListarVisitante(){
        render('''
                <div>
                    <h1>Listar Visitantes</h1>
                    <table>
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>Idade</th>
                                <th>Opções</th>
                            </tr>
                        </thead>
                        <tbody id="lista_visitantes">
                            ${WebGerenciadorParque.instance.lista_visitantes.map((visitante) => '''
                                <tr>
                                    <td>${visitante.nome}</td>
                                    <td>${visitante.idade}</td>
                                    <td>
                                        <button class="btnListar" id="verIngressos${WebGerenciadorParque.instance.lista_visitantes.indexOf(visitante)}">Ver ingressos</button>
                                    </td>
                                </tr>
                            ''').join('')}
                        </tbody>
                    </table>
                    <button class="btnVoltar" id="voltar">Voltar</button>
                </div>
                ''');

        List<String> eventos = ['click'];
        List<String> ids = ['#voltar'];
        List<Function> funcoes = [WebGerenciadorParque.instance.gerenciarVisitantes];
        for(int i = 0; i < WebGerenciadorParque.instance.lista_visitantes.length; i++){
            eventos.add('click');
            ids.add('#verIngressos$i');
            funcoes.add((){WebGerenciadorParque.instance.lista_visitantes[i].listarIngressos(WebGerenciadorParque.instance.lista_visitantes[i]);});
        }

        listeners(eventos, ids, funcoes);
    }
}