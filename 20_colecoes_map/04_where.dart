void main(){
    whereMap();
}

whereMap(){
    print('20.4.1 - Map where\n');

    List<Map<dynamic, dynamic>> produtos = [
        {'nome': 'Notebook', 'preco': 2499.99, 'fragil': true},
        {'nome': 'iPad Pro', 'preco': 4199.99, 'fragil': true},
        {'nome': 'Copo de Vidro', 'preco': 12.49, 'fragil': true},
        {'nome': 'Copo de Plástico', 'preco': 18.99, 'fragil': false}
    ];

    final fragil = (elemento) => elemento['fragil'] == true;
    final nome = (elemento) => elemento['nome'];
    List<dynamic> resultados =  produtos.where(fragil).map(nome).toList();
    print("Produtos frágeis: $resultados");

    List<Map<String, dynamic>> pessoas = [
        {'nome': "Gabriel", 'idade': 26},
        {'nome': "Cassilda", 'idade': 31},
        {'nome': "Chloe", 'idade': 17}
    ];

    List<Map<String, dynamic>> maiores = pessoas.where((pessoas) => pessoas['idade'] >= 18).toList();
    print("Pessoas maiores de idade: $maiores");

    Map<String, dynamic> comecaComC = pessoas.firstWhere((pessoas) => pessoas['nome'].startsWith('C'), orElse: () => {'nome': 'Não encontrado'});
    print("Pessoa que começa com C: $comecaComC");
}