void main(){
    listmap();
}

listmap(){
    print("17.3.0 - List Map");

    List<String> frutas = ["Morango", "Banana", "Tomate"];
    List<String> frutas_mapeadas = frutas.map((elemento) => "${elemento} é uma fruta!").toList();
    print(frutas_mapeadas);

    List<int> inteiros = [1, 5, 10];
    var incrementar = (int e) => e++;
    final dobro = (int e) => e * 2;
    List<int> inteiros_mapeados = inteiros.map(incrementar).toList();
    print(inteiros_mapeados);
}