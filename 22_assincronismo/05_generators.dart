void main(){
    print("22.4.0 - Generators");
    funcoesGeradoras();
    funcoesGeradorasRecursivas();
}

funcoesGeradoras(){
    Iterable<int> funcaoSincrona(int repeticaoMaxima)sync*{
        int i = 0;
        while(i < repeticaoMaxima) yield ++i;
    }

    print(funcaoSincrona(5));

    Stream<int> funcaoAssincrona(int repeticaoMaxima)async*{
        int i = 0;
        while(i < repeticaoMaxima) yield ++i;
    }

    funcaoAssincrona(3).forEach((e) {
        print(e);
    });

}

funcoesGeradorasRecursivas(){
    Iterable<int> funcaoSincrona(int repeticaoMaxima)sync*{
        for(int i = 1; i <= repeticaoMaxima; i++){
            yield i;
            yield* funcaoSincrona(i-repeticaoMaxima);
        }
    }

    print(funcaoSincrona(3));

    Stream<int> funcaoAssincrona(int repeticaoMaxima)async*{
        for(int i = 1; i <= repeticaoMaxima; i++){
            yield i;
            yield* funcaoAssincrona(i-repeticaoMaxima);
        }
    }

    funcaoAssincrona(3).forEach((element) {
        print(element);
    });
}