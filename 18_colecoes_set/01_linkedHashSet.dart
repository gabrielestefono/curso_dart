import 'dart:collection';

void main(){
    LinkedHashSet();
}

LinkedHashSet(){
    print("18.0.0 - Linked HashSet\n");

    Set<int> setInt = Set();
    print(setInt.runtimeType);

    // setInt[0] = 0;

    setInt.add(13);
    setInt.add(17);
    // setInt.add(null);
    setInt.remove(13);
    print(setInt);
    for(int i = 0; i < setInt.length; i++){
        // print(setInt[0]);
        print(setInt.elementAt(i));
    }

    for (var element in setInt) {
      print(element);
    }

    print("");

    Set<int> listaA = {0, 1, 2, 3, 4, 5};
    Set<int> listaB = {3, 4, 5, 6, 7, 8};
    print(listaA.difference(listaB));
    print(listaA.union(listaB));
    print(listaA.intersection(listaB));
    print(listaA.lookup(3));
    print(listaA.lookup(9));
}