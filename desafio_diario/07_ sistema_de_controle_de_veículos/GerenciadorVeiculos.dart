import 'Vericulo.dart';

class GerenciadorVeiculos{
    List<Veiculo> veiculos = [];

    void adicionarVeiculo(String marca, String modelo, String ano_fabricacao){
        final criarVeiculo = new Veiculo(marca, modelo, ano_fabricacao);
        veiculos.add(criarVeiculo);
        print("Veículo adicionado com sucesso!");
    }

    void removerVeiculo(int id){
        veiculos.removeWhere((veiculo) => veiculos.indexOf(veiculo) == id);
        print("Veículo removido com sucesso!");
    }

    void mostrarListaVeiculos(){
        print("Lista de veículos:");
        veiculos.forEach((veiculo) {
            print("ID: ${veiculos.indexOf(veiculo)} - ${veiculo.marca} ${veiculo.modelo} ${veiculo.ano_fabricacao}");
        });
    }

    void buscarVeiculo(String marca, String modelo){
        print("Lista de veículos:");
        veiculos.forEach((veiculo) {
            if(veiculo.marca == marca || veiculo.modelo == modelo){
                print("ID: ${veiculos.indexOf(veiculo)} - ${veiculo.marca} ${veiculo.modelo} ${veiculo.ano_fabricacao}");
            }
        });
    }

    GerenciadorVeiculos._constructor();

    static final GerenciadorVeiculos _instance = GerenciadorVeiculos._constructor();

    static GerenciadorVeiculos get instance => _instance;
}