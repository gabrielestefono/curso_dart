/*
Classes:

Livro: Representa um livro na biblioteca.
Usuario: Representa um usuário da biblioteca.
Biblioteca: Responsável pela gestão dos livros e usuários.

Características da Classe Livro:
Atributos: título, autor, ano de publicação.
Construtor para inicializar os atributos.
Encapsulamento: Use getters e setters.

Características da Classe Usuario:
Atributos: nome, ID de usuário.
Construtor para inicializar os atributos.
Encapsulamento: Use getters e setters.

Características da Classe Biblioteca:
Atributos: lista de livros, lista de usuários.
Métodos:
Adicionar/remover um livro.
Adicionar/remover um usuário.
Pesquisar livro por título ou autor.
Listar todos os livros.
Listar todos os usuários.

Singleton:
Implemente a classe Biblioteca como um singleton para garantir que apenas uma instância da biblioteca seja criada.

Operadores, Condicionais e Loops:
Use operadores para comparações e operações matemáticas.
Use condicionais para verificar condições específicas (ex.: se um livro já existe na lista antes de adicioná-lo).
Use loops para percorrer as listas de livros e usuários.

Arrays (Listas em Dart):
Use listas para armazenar os livros e os usuários na classe Biblioteca.

Funções:
Crie funções para as operações de adicionar, remover, pesquisar e listar dentro da classe Biblioteca.

Herança (Opcional):
Para um desafio adicional, crie classes derivadas de Livro, como LivroFiccao e LivroAcademico, com características específicas.

Tarefa:
Implemente o sistema conforme os requisitos acima. Teste todas as funcionalidades criando instâncias de Livro, Usuario e utilizando os métodos da classe Biblioteca.
*/

import 'dart:io';

import 'Biblioteca.dart';

void main() {
  var biblioteca = Biblioteca.instance;
  print("Bem-vindo à biblioteca!");
  print("O que você deseja fazer?");
  print("1 - Registrar um Usuário");
  print("2 - Logar");
  while(true){
    int opcao = int.parse(stdin.readLineSync()!);
    if(opcao == 1){
        print("Digite o nome do usuário: ");
        String? nome = stdin.readLineSync();
        if(nome != null){
            try{
                int.parse(nome);
                break;
            }catch(e){
                if(nome != ''){
                    biblioteca.adicionarUsuario(nome);
                    print("O que você deseja fazer?");
                    print("1 - Registrar um Usuário");
                    print("2 - Logar");
                }else{
                    print("Nome incorreto, por favor, tente novamente ou pressione um numero para finalizar o programa");
                    print("Bem-vindo à biblioteca!");
                    print("O que você deseja fazer?");
                    print("1 - Registrar um Usuário");
                    print("2 - Logar");
                }
            }
        }
    }else if(opcao == 2){
        loopLogin:
        while(true){
            print("Por favor, digite o seu ID ou digite 0 para retornar");
            String? id = stdin.readLineSync();
            if(id != null){
                try{
                    int identificacao = int.parse(id);
                    late bool validacao;
                    dynamic usuario; 
                    try{
                        usuario = biblioteca.listaUsuarios.firstWhere((elemento) => elemento.identificacao == identificacao);
                        validacao = true;
                    }catch(e){
                        validacao = false;
                    }
                    if(identificacao == 0){
                        print("O que você deseja fazer?");
                        print("1 - Registrar um Usuário");
                        print("2 - Logar");
                        break;
                    }else if(validacao){
                        print("Seja bem vindo, ${usuario.nome}! O que deseja fazer?");
                        print("1 - Adicionar um livro");
                        print("2 - Remover um livro");
                        print("3 - Listar livros");
                        while(true){
                            String? acao = stdin.readLineSync();
                            if(acao != null){
                                try{
                                    int acao_em_numero = int.parse(acao);
                                    if(acao_em_numero == 0){
                                        print("1 - Registrar um Usuário");
                                        print("2 - Logar");
                                        break loopLogin;
                                    }else if(acao_em_numero == 1){
                                        print("Digite o nome do livro, por favor.");
                                        String? nome = stdin.readLineSync();
                                        print("Digite o nome do autor, por favor.");
                                        String? autor = stdin.readLineSync();
                                        print("Digite o ano de publicação");
                                        String? ano_publicacao = stdin.readLineSync();
                                        if(nome != null && autor != null && ano_publicacao != null && nome != '' && autor != '' && ano_publicacao != ''){
                                            biblioteca.adicionarLivro(nome, autor, ano_publicacao);
                                            print("0 - Sair");
                                            print("1 - Adicionar um livro");
                                            print("2 - Remover um livro");
                                            print("3 - Listar livros");
                                        }else{
                                            print("Algum dado está incorreto, por favor, tente novamente ou pressione 0 para sair!");
                                        }
                                    }else if(acao_em_numero == 2){
                                        print("Digite o ID do livro que você deseja remover");
                                        String? id = stdin.readLineSync();
                                        if(id != null){
                                            try{
                                                int id_em_numero = int.parse(id);
                                                biblioteca.removerLivro(id_em_numero);
                                                print("0 - Sair");
                                                print("1 - Adicionar um livro");
                                                print("2 - Remover um livro");
                                                print("3 - Listar livros");
                                            }catch(e){
                                                print("Numero inválido, por favor, tente novamente ou Pressione 0 para sair!");
                                                print("1 - Adicionar um livro");
                                                print("2 - Remover um livro");
                                            }
                                        }
                                    }else if(acao_em_numero == 3){
                                        biblioteca.mostrarListaLivros();
                                    }
                                }catch(e){
                                    print("Numero inválido, por favor, tente novamente ou Pressione 0 para sair!");
                                    print("1 - Adicionar um livro");
                                    print("2 - Remover um livro");
                                }
                            }
                        }
                    }
                }catch(e){
                    print("Numero incorreto, por favor, tente novamente! Ou digite 0 para finalizar.");
                    print(e);
                }
            }
        }
    }
  }
}
