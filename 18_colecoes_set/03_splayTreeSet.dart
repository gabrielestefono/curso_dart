import 'dart:collection';

void main(){
    splayTreeSet();
}

splayTreeSet(){
    SplayTreeSet<String> splayTreeSet = SplayTreeSet();
    print(splayTreeSet.runtimeType); // SplayTreeSet<String>
    splayTreeSet.add("Info1");
    splayTreeSet.add("Info3");
    splayTreeSet.add("Info2");
    splayTreeSet.add("Info4");
    print(splayTreeSet);
    for (var element in splayTreeSet) {
      print(element);
    }
}