void main(){
    listaFold();
}

listaFold(){
    print("17.6.0 - List Fold");
    List<int> numeros_pares = List.generate(6, (index) => index * 2);
    print(numeros_pares);
    int valor_inicial = 10;
    int resultado = numeros_pares.fold<int>(valor_inicial, (int anterior, int atual) {
        return anterior + atual;
    });
    print(resultado);
}