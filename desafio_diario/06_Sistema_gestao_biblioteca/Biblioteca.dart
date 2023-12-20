import 'dart:io';

import 'Livro.dart';
import 'Usuario.dart';

class Biblioteca {
  List<Usuario> listaUsuarios = [];
  List<Livro> listaLivros = [];

  void adicionarLivro(String nome, String autor, String ano_publicacao) {
    final criarLivro = new Livro(nome, autor, ano_publicacao);
    listaLivros.add(criarLivro);
    print("Livro adicionado com sucesso!");
  }

  void removerLivro(int id) {
    listaLivros.removeWhere((livro) => listaLivros.indexOf(livro) == id);
    print("Livro removido com sucesso!");
  }

  void adicionarUsuario(String nome) {
    final criarUsuario = new Usuario(nome);
    listaUsuarios.add(criarUsuario);
    print("Usuário adicionado com sucesso!");
    print("O seu id é ${criarUsuario.identificacao}");
  }

  void removerUsuario(int id) {
    listaUsuarios.removeWhere((usuario) => listaUsuarios.indexOf(usuario) == id);
    print("Usuário removido com sucesso!");
  }

  void mostrarListaLivros() {
    print("Lista de livros:");
    listaLivros.forEach((livro) {
      print("ID: ${listaLivros.indexOf(livro)} - ${livro.titulo}");
    });
  }

  void mostrarListaUsuarios() {
    print("Lista de usuários:");
    listaUsuarios.forEach((usuario) {
      print("ID: ${listaUsuarios.indexOf(usuario)} - ${usuario.nome}");
    });
  }

  Biblioteca._constructor();
  
  static final Biblioteca _instance = Biblioteca._constructor();

  static Biblioteca get instance => _instance;

}
