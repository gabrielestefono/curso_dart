void contagem({int segundos = 3}){
    print("Carregando...");
    for(var i = 1; i <= segundos; i++){
        Future.delayed(Duration(seconds: i), (){
            print('${i * 33}%');
            if(i == segundos){
                print('Concluído!');
            }
        });
    }
}

Future<String> tarefa({int tempo = 1}) async{
    var msg = await Status(tempo);
    return "Status: ${msg}";
}

Future<String> Status([int tempo = 1]){
    return Future.delayed(Duration(seconds: tempo), () => "Concluído com sucesso!");
}

void main() async{
    print("22.1.0 - Await e Async\n");
    contagem(segundos: 3);

    print(await tarefa(tempo: 5));
}