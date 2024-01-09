import 'dart:io';

class TipoResposta{
    String aguardaRespostaString(String pergunta){
        String? resposta;
        while(true){
            print(pergunta);
            resposta = stdin.readLineSync();
            if(resposta != null && resposta != ''){
                return resposta;
            }else{
                continue;
            }
        }
    }

    int aguardaRespostaInt(String pergunta){
        String? respostaTemp;
        int? resposta;
        while(true){
            print(pergunta);
            respostaTemp = stdin.readLineSync();
            if(respostaTemp != null && resposta != ''){
                try{
                    resposta = int.parse(respostaTemp);
                    return resposta;
                }catch(e){
                    print("Ocorreu um erro, tente novamente!");
                }
            }else{
                continue;
            }
        }
    }


}