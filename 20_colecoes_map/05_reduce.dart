void main(){
    mapReduce();
}

mapReduce(){
    print("20.5.0 - Map Reduce\n");
    List<Map<String, dynamic>> alunos = [
        {'nome': 'Alfredo', 'nota': 9.9, 'bolsista': false},
        {'nome': 'Wilson', 'nota': 9.3, 'bolsista': true},
        {'nome': 'Mariana', 'nota': 8.7, 'bolsista': false},
        {'nome': 'Guilherme', 'nota': 8.1, 'bolsista': true},
        {'nome': 'Ana', 'nota': 7.6, 'bolsista': false},
        {'nome': 'Ricardo', 'nota': 6.8, 'bolsista': true},
    ];

    bool bolsista(Map<String, dynamic> e) => e['bolsista'];
    final Function nome = (e) => e['nome'];
    double nota(Map<String, dynamic> e) => e['nota'];
    double soma(p, c) => p + c;

    var bolsistas = alunos.where(bolsista).map(nota).reduce(soma);
    print(bolsistas);
}