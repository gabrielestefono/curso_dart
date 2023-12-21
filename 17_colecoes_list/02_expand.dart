main(){
    listExpand();
}

listExpand(){
    print("17.2.0) List Expand\n");

    var lista = [[1, 2], [3, 4]];

    List<dynamic> listaflat = lista.expand((element) => element).toList();
    List<dynamic> lista_duplicada = listaflat.expand((element) => [element, element]).toList();
    print(listaflat);
    print(lista_duplicada);
    List<num> numeros = [1, 2.5, 5, 7.5, 10];
    List<int> inteiros = [1, 5, 10];
    List<double> doubles = [2.5, 7.5];
    List<dynamic> listaDinamica = [1, 5, 10] + [2, 7];
    print(listaDinamica);
    print(listaDinamica = []..addAll(inteiros)..addAll(doubles)); 

    print(listaDinamica = [0, ...numeros, 15]);   
    print(listaDinamica = [0, ...numeros, if(doubles is List<double>) ... doubles]);
}