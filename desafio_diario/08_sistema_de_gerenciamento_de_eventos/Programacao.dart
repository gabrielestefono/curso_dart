import 'dart:io';

class Programacao{
    String titulo;
    String descricao;
    String horario;
    String? tipo;

    Programacao.palestra(this.titulo, this.horario, this.descricao){
        this.tipo = "Palestra";
    }

    Programacao.workshop(this.titulo, this.horario, this.descricao){
        this.tipo = "Workshop";
    }

    void editarTitulo(){
        print("Digite o novo titulo: ");
        String? titulo = stdin.readLineSync();
        if(titulo != null && titulo != ''){
            this.titulo = titulo;
            print("Titulo editado com sucesso!");
        }else{
            print("Ocorreu um erro, por favor, tente novamente!");
        }
    }
}