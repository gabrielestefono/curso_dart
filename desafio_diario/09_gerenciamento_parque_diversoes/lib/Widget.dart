// ignore: file_names
import 'dart:html';

class  Widget{
    late bool recoverData;

    Widget();

    void render(String html, {bool? recoverData}){
        querySelector('#output')?.innerHtml = html;
        if(recoverData == true){
            this.recoverData = true;
        }
    }

    void listeners(List<String> events, List<String> selectors, List<Function> callbacks) {
    if(events.length != selectors.length || events.length != callbacks.length) {
        throw ArgumentError('As listas events, selectors e callbacks devem ter o mesmo tamanho.');
    }

    for (int i = 0; i < events.length; i++) {
        var element = querySelector(selectors[i]);
        if (element == null) {
        continue;
        }

        var event = events[i];
        var callback = callbacks[i];

        switch (event) {
        case 'click':
            element.onClick.listen((_) => callback());
            break;
        default:
            throw UnimplementedError('Evento $event não é suportado.');
        }
    }
    }


    String? getInput(String selector){
        String? campo = (querySelector(selector) as InputElement).value;
        validarCampo(campo, selector);
        return campo;
    }

    void validarCampo(String? campo, String selector){
        if(campo == null || campo.isEmpty){
            querySelector(selector)?.style.borderColor = 'red';
            querySelector(selector)?.nextElementSibling?.innerHtml = 'Campo obrigatório';
            recoverData = false;
        }else{
            querySelector(selector)?.style.borderColor = 'black';
            querySelector(selector)?.nextElementSibling?.innerHtml = '';
        }
    }

    bool verificarValidacao(){
        return recoverData;
    }

    void resetarValidacao(){
        recoverData = true;
    }
}