import 'dart:collection';

void main(){
    queue();
}

queue(){
    print("19.0.1 - Queue\n");

    Queue<String> queue = Queue();
    print(queue.runtimeType); // Queue<String>
    queue.addAll(["Info1", "Info3"]);
    queue.add("Info2");
    queue.add("Info4");
    queue.addFirst("Info0");
    queue.addLast("Info5");
    print(queue);
    for (var element in queue) {
      print(element);
    }
}