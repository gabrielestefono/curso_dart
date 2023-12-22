void main(){
    everyMap();
}

everyMap(){
    print('20.3.0 - Map.every\n');

    List<Map<String, dynamic>> pessoas = [
        {'nome': 'Lucio', 'idade': 60},
        {'nome': 'Leila', 'idade': 31},
        {'nome': 'Leandro', 'idade': 14}
    ];
    print(pessoas.every((element) => element.containsKey('nome')));
    print(pessoas.every((element) => element['idade'] >= 17));
    bool maiores = pessoas.every((element) => element['nome'].startsWith('L'));
    print(maiores);
}