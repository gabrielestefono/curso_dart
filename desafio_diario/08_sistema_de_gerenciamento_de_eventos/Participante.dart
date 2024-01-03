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

    void editarEmail(){
        print("Digite o novo email: ");
        String? email = stdin.readLineSync();
        if(email != null && email != ''){
            this.email = email;
        }else{
            print("Ocorreu um erro, por favor, tente novamente!");
        }
    }

    Participante(this.nome, this.email);
}