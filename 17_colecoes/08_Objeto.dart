import 'dart:math';

class Pessoa{
    late String nome;
    late String sobrenome;
    late int _identidade;

    Pessoa(this.nome, this.sobrenome, {int? identidade}){
        this._identidade = identidade ?? Random().nextInt(99999999);
    }

    get identidade => _identidade;
}

class Vendedor{
    late String nome;
    late List<Venda> vendas;

    Vendedor(this.nome, this.vendas);
}

class Venda{
    late String produtos;
    late double preco;
    
    Venda(this.produtos, this.preco);
}

void main(){
    print("17.8.0 - List Fold");

    Pessoa p1 = new Pessoa('Gabriel', "Estéfono");
    Pessoa p2 = new Pessoa('Ana', "Leal", identidade: 87654321);

    List<Pessoa> pessoas = [p1, p2];
    pessoas.add(Pessoa("Cloe", "Ladeira"));

    pessoas.forEach((element) {print("Nome: ${element.nome}. Sobrenome: ${element.sobrenome}. Identidade: ${element.identidade}");});

    List<Vendedor> vendedores = [];
    vendedores.add(Vendedor("Gabriel", [Venda("Cama", 2000), Venda("Cadeira", 400), Venda("Celular", 2500)]));
    vendedores.add(Vendedor("Estéfono", [Venda("PC", 2000), Venda("Memória RAM", 400), Venda("Placa de Vídeo", 2500)]));
    vendedores.add(Vendedor("Everson", [Venda("PC", 2000), Venda("Memória RAM", 400), Venda("Placa de Vídeo", 2500)]));

    vendedores.sort((b, a) => a.vendas.fold<double>(0, (previousValue, element) => previousValue + element.preco).compareTo(b.vendas.fold<double>(0, (previousValue, element) => previousValue + element.preco)));

    vendedores.forEach((element) {
        print("O vendedor ${element.nome}, realizou ${element.vendas.length} vendas, com o valor total de ${element.vendas.fold<double>(0, (anterior, proximo) => anterior + proximo.preco)}");
    });

}
