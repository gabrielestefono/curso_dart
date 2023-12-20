void main(){
    listaReduce();
}

listaReduce(){
    print("17.6.0 - List Map");
    List<int> numeros_pares = List.generate(6, (index) => index * 2);
    print(numeros_pares);
    int resultado = numeros_pares.reduce((value, element) => value + element);
    print(resultado);
}