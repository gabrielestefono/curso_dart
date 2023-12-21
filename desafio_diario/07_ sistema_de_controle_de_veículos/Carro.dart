import 'Manutencao.dart';
import 'RecursosAdicionais.dart';
import 'Vericulo.dart';

class Carro extends Veiculo with RecursosAdicionais implements Manutencao {
    String marca;
    String modelo;
    String ano_fabricacao;

    Carro(this.marca, this.modelo, this.ano_fabricacao) : super(marca, modelo, ano_fabricacao);

    @override
    void exibirInfo(){
        print("Modelo: $modelo. Marca: $marca. Ano de Fabricação: $ano_fabricacao");
    }

    @override
    void realizarManutencao() {
        print("Manutenção realizada com sucesso!");
    }
}