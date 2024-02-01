import 'package:parque/Ingresso.dart';
import 'package:parque/Visitante.dart';
import 'package:parque/Widget.dart';
import 'package:parque/components/web_gerenciador_visitante/comprar_ingresso.dart';
import 'package:parque/components/web_gerenciador_visitante/listar_visitantes.dart';

class VerIngresso extends Widget{
    List<Ingresso> listaIngressos = [];
    Visitante visitante;
    
    VerIngresso(this.listaIngressos, this.visitante){
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
                            ${listaIngressos.map((ingresso) => '''
                                <tr>
                                    <td>${ingresso.tipo}</td>
                                    <td>${ingresso.preco}</td>
                                    <td>${ingresso.data_validade}</td>
                                    <td>
                                        <button class="btnListar" id="editarIngresso${listaIngressos.indexOf(ingresso)}">Editar</button>
                                        <button class="btnListar" id="deletarIngresso${listaIngressos.indexOf(ingresso)}">Deletar</button>
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
        List<Function> funcoes = [()=>{ListarVisitante()}];
        for(int i = 0; i < listaIngressos.length; i++){
            eventos.add('click');
            ids.add('#editarIngresso$i');
            funcoes.add((){editarIngresso(visitante, listaIngressos[i]);});
            eventos.add('click');
            ids.add('#deletarIngresso$i');
            funcoes.add(()=>{reRender(listaIngressos[i])});
        }
        listeners(eventos, ids, funcoes);
    }

    void reRender(Ingresso ingresso){
        listaIngressos.remove(ingresso);
        VerIngresso(listaIngressos, visitante);
    }

    void editarIngresso(Visitante visitante, Ingresso ingresso){
        ComprarIngresso(visitante, ingresso);
    }
}