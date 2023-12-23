class Carro{
    late String marca, modelo;
    Carro(this.marca, this.modelo); 
}

void main(){
    objetosMap();
}


objetosMap(){
    print('20.6.0 - Objetos Map\n');

    Carro c1 = Carro('Fiat', 'Uno');
    Carro c2 = Carro('VW', 'Gol');
    Carro c3 = Carro('Ford', 'Ka');
    Map<String, Carro> carros = {
        'Fiat': c1,
        'VW': c2,
        'Ford': c3,
    };

    carros.forEach((chave, valor) => print('$chave: ${valor.marca} ${valor.modelo}'));
}