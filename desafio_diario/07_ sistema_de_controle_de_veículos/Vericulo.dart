class Veiculo{
    String marca;
    String modelo;
    String ano_fabricacao;

    Veiculo(this.marca, this.modelo, this.ano_fabricacao);

    void exibirInfo(){
        print("Modelo: $modelo. Marca: $marca. Ano de Fabricação: $ano_fabricacao");
    }
}