import 'package:parque/WebGerenciadorParque.dart';
import 'package:parque/Widget.dart';
import 'package:parque/components/web_gerenciador_visitante/edicao_visitante.dart';

class ListarVisitanteEdicao extends Widget{
    ListarVisitanteEdicao(){
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
                                        <button class="btnEditar" id="btnEditar${WebGerenciadorParque.instance.lista_visitantes.indexOf(visitante)}">Editar Visitante</button>
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
            ids.add('#btnEditar$i');
            funcoes.add(()=>{EdicaoVisitante(WebGerenciadorParque.instance.lista_visitantes[i])});
        }

        listeners(eventos, ids, funcoes);
    }
}