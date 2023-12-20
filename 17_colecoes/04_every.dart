void main(){
    listEvery();
}

listEvery(){
    print("17.4.0 - List Every");
    List<int> inteiros = [0,1,2,3,4,5];
    bool resultado = inteiros.every((element) => element >= 0);
    print(resultado);
    List<String> textos = List.from(['Gabriel', 'Estéfono']);
    resultado = textos.every((element) => element.contains("e"));
    print(resultado);
}