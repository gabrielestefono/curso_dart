// String Status([int tempo = 1]){
//     return Future.delayed(Duration(seconds: tempo), () => "Concluído com sucesso!");
// }	

// String tarefa({int tempo = 1}){
//     var msg = Status(tempo);
//     return "Status: ${msg}";
// }

void novaTarefa([int tempo = 1]){
    Future.delayed(Duration(seconds: tempo), () => print("Concluído com sucesso!"));
}

void contagem({int segundos = 4}) {
    print("Carregando...");
    for(var i = 0; i < segundos; i++) {
        Future.delayed(Duration(seconds: i), (){
            print("${i * 33}%");
            if(i == segundos - 1) print("Carregamento concluído!");
        });
    }
}


void main(){
    print("22.0.0 - Futures");
    // print(tarefa(tempo: 4));
    novaTarefa(4);
    contagem();
}