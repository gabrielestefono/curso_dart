// ignore_for_file: non_constant_identifier_names
import 'package:parque/Visitante.dart';
import 'package:parque/components/web_gerenciador_parque/CadastrarAtracao.dart';
import 'package:parque/components/web_gerenciador_parque/EdicaoAtracao.dart';
import 'package:parque/components/web_gerenciador_parque/EditarAtracao.dart';
import 'package:parque/components/web_gerenciador_parque/GerenciadorAtracoes.dart';
import 'package:parque/components/web_gerenciador_parque/ListarAtracao.dart';
import 'package:parque/components/web_gerenciador_parque/Opcoes.dart';
import 'package:parque/components/web_gerenciador_parque/RemoverAtracao.dart';
import 'package:parque/components/web_gerenciador_parque/RemoverAtracoes.dart';
import 'package:parque/components/web_gerenciador_visitante/cadastrar_visitante.dart';
import 'package:parque/components/web_gerenciador_visitante/gerenciador_visitante.dart';
import 'package:parque/components/web_gerenciador_visitante/listar_visitante_edicao.dart';
import 'package:parque/components/web_gerenciador_visitante/listar_visitantes.dart';
import 'package:parque/components/web_gerenciador_visitante/remover_visitante.dart';

import './WebAtracao.dart';

class WebGerenciadorParque{
    List<WebAtracao> lista_atracoes = [];
    List<Visitante> lista_visitantes = [];

    WebGerenciadorParque._constructor();

    static final WebGerenciadorParque _instance = WebGerenciadorParque._constructor();

    static WebGerenciadorParque get instance => _instance;

    void opcoes(){
        Opcoes();
    }

    void gerenciarAtracoes(){
        GerenciadorAtracoes();
    }

    void cadastrarAtracao(){
        CadastrarAtracao();
    }

    void listarAtracoes(){
        ListarAtracao();
    }

    void editarAtracoes(){
        EditarAtracao();
    }

    void editarAtracao(WebAtracao atracao){
        EdicaoAtracao(atracao);
    }

    void removerAtracoes(){
        RemoverAtracoes();
    }

    void removerAtracao(WebAtracao atracao, List<WebAtracao> lista_atracoes){
        RemoverAtracao(atracao, lista_atracoes);
    }

    void gerenciarVisitantes(){
        GerenciadorVisitante();
    }

    void cadastrarVisitante(){
        CadastrarVisitante();
    }

    void listarVisitantes(){
        ListarVisitante();
    }

    void editarVisitante(){
        ListarVisitanteEdicao();
    }

    void removerVisitante(){
        RemoverVisitante();
    }

    void voltar(){
        Opcoes();
    }

}