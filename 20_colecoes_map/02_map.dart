void main() {
  print('20.1.0) Map Literal\n');
  mapMap();
}

mapMap() {
  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.90},
    {'nome': 'Kit de Lapis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.50},
  ];

  print(carrinho.runtimeType);
  print(carrinho);

  double porcentagem(Map<String, dynamic> valor, double desconto) {
    return valor['preco'] * desconto;
  }
  
  final moeda = (double valor) => 'R\$ ${valor.toStringAsFixed(2).replaceFirst('.', ',')}';
  List<String> precos = carrinho.map((item) => porcentagem(item, 0.9)).map(moeda).toList();

  print(precos);
}
