import 'Manutencao.dart';
import 'Vericulo.dart';

class Moto extends Veiculo implements Manutencao{
    String marca;
    String modelo;
    String ano_fabricacao;

    Moto(this.marca, this.modelo, this.ano_fabricacao) : super(marca, modelo, ano_fabricacao);

    @override
    void exibirInfo() {
    print("Modelo: $modelo. Marca: $marca. Ano de Fabricação: $ano_fabricacao");
    }
    
      @override
      void realizarManutencao() {
        print("Manutenção realizada com sucesso!");
      }
}