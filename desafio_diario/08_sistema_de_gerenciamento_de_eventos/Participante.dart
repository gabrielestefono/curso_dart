import 'dart:io';

class Participante{
    String nome;
    String email;

    void editarNome(){
        print("Digite o novo nome: ");
        String? nome = stdin.readLineSync();
        if(nome != null && nome != ''){
            this.nome = nome;
        }else{
            print("Ocorreu um erro, por favor, tente novamente!");
        }
    }

    Participante(this.nome, this.email);
}