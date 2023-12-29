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
}