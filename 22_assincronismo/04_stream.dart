import 'dart:async';

void main(){
    print("22.3.0 - Stream");
    conceito();
    model();
}

conceito(){
    List<dynamic> lista  = [];
    // Controlador
    var controlador = StreamController<dynamic>();
    // Stream
    var stream = controlador.stream;
    // Inscrição de ouvintes na stream
    stream.listen((event) {
        print("Evento: ${event}");
        lista.add(event);
    }, onDone: (){
        print("Stream finalizado");
        print(lista);
    });
    // Adicionar um evento à stream
    controlador.sink.add("Gabriel");
    controlador.sink.add(36);
    controlador.sink.add(36.5);
    controlador.sink.add(true);
    controlador.close();
    print("Monitorando..");
}

class Contador{
        var _contagem = 1, termino, erro;
        final _controlador = StreamController<int>();

        Sink<int> get sink => _controlador.sink;
        Stream<int> get stream => _controlador.stream;

        Contador({this.termino = 5, this.erro = 3}){
            Timer.periodic(Duration(seconds: 1), (Timer timer) {
                _contagem < termino ? sink.add(_contagem) : sink.close();
                _contagem++;
                if(_contagem == erro) _controlador.addError("Erro intencional");
                if(_contagem > termino) timer.cancel();
            });
        }
    }

model(){
    // Stream
    var minhaStream = Contador(termino: 5, erro: 3).stream;
    final inscrito1 = minhaStream.listen((event) {
        print("Inscrito1: ${event}");
    }, onError: (erro){
        print("Inscrito1: ${erro}");
    }, cancelOnError: false, onDone: (){
        print("Inscrito1: Completo!");
    });
}