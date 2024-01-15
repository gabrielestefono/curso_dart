import 'GerenciadorParque.dart';

void main(){
    print("Gerenciamento de Parque de Diversões");
    GerenciadorParque gerenciador = GerenciadorParque.instance;
    gerenciador.opcoes();
}