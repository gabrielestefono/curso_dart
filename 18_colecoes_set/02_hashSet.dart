import 'dart:collection';

void main(){
    hashSet();
}

hashSet(){
    print("18.0.1 - Hash Set\n");

    Set<String> hashSet1 = HashSet();
    HashSet<int> hashSet2 = HashSet();
    HashSet<int> hashSet3 = HashSet();

    print(hashSet1.runtimeType);
    hashSet1.add("a");
    hashSet1.add("b");
    hashSet1.add("c");
    hashSet1.add("d");
    hashSet2.add(1);
    hashSet2.add(2);
    hashSet2.add(3);
    hashSet2.add(4);
    hashSet3.add(15);
    hashSet3.add(19);
    hashSet3.add(23);
    hashSet3.add(27);
    print(hashSet1);
    print(hashSet2);
    print(hashSet3);
    hashSet3.forEach((element) { print(element);});
    for (var element in hashSet2) {
      print(element);
    }
    for(int i = 0; i < hashSet1.length; i++){
        print(hashSet1.elementAt(i));
    }
}