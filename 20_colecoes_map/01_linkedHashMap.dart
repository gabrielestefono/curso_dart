import 'dart:collection';

void main(){
    linkedHashMap();
}

linkedHashMap(){
    print("20.0.0 - LinkedHashMap\n");
    List<String> nomes = ["Daniel", "Maria", "João", "Ana", "Pedro", "Bianca"];
    Map<int, dynamic> nomesMap = nomes.asMap();
    nomesMap.forEach((key, value) => print("Chave: $key - Valor: $value"));

    Map<String, dynamic> frutas = new Map();
    frutas["banana"] = "amarela";
    frutas["maçã"] = "vermelha";
    frutas["uva"] = "roxa";
    print(frutas);
    print(frutas.containsKey("banana"));
    print(frutas.containsValue("vermelha"));
    print(frutas["banana"]);

    Map<String, dynamic> frutas2 = {"banana": "amarela", "maçã": "vermelha", "uva": "roxa"};
    frutas.update("banana", (value) => "verde");
    frutas.update("laranja", (value) => "laranja", ifAbsent: () => "laranja");
    print(frutas);
}