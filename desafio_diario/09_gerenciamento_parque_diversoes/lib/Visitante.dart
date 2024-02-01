import 'package:parque/components/web_gerenciador_visitante/comprar_ingresso.dart';
import 'package:parque/components/web_gerenciador_visitante/opcao_comprar_ingresso.dart';
import 'package:parque/components/web_gerenciador_visitante/ver_ingresso.dart';

import 'Ingresso.dart';

class Visitante{
    String nome;
    String idade;
    List<Ingresso> ingressos = [];

    Visitante(this.nome, this.idade);

    void opcaoComprarIngresso(Visitante visitante){
        OpcaoComprarIngresso(visitante);
    }

    void comprarIngresso(Visitante visitante){
        ComprarIngresso(visitante);
    }

    void listarIngressos(Visitante visitante){
        VerIngresso(visitante.ingressos, visitante);
    }
}