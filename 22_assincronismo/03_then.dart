Future<String> tarefa({int tempo = 1}) async{
    return status(tempo).then((msg){
        return "Status: ${msg}";
    }).catchError((onError){
        print(onError);
    });
}

Future<String> status([int tempo = 1]){
    return Future.delayed(Duration(seconds: tempo), () => Future.error("Erro intencional"));
}

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

void main(){
    print("22.0.0 - Then");

    contagem(segundos: 3);

    tarefa(tempo: 4).then((onValue)=>print(onValue));
}