void main(){
    listaWhere();
}

listaWhere(){
    print("17.5.0 - List Where");
    List<int> idades = [36, 12, 10, 21, 17, 23];
    print(idades.where((element) => element % 2 == 0));
    print(idades.whereType<int>());
    print(idades.singleWhere((element) => element < 12));
    print(idades.lastWhere((element) => element > 12));
    print(idades.firstWhere((element) => element > 12));
}