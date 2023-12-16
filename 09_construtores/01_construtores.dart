void main() {
  print("09.0 - Construtores");

  print('');

  Objeto objeto = new Objeto();
  objeto.nome = "Mesa";
  print(objeto.nome);

  print('');

  Animal animal1 = new Animal("Totó", "chihuahua", 2);
  Animal animal2 = new Animal("Cloe");
  Animal animal3 = new Animal("Mel", "Chow Chow");

  print('');

  print("${animal1.nome} é da raça ${animal1.raca} e tem ${animal1.idade} anos.");
  print("${animal2.nome} é da raça ${animal2.raca} e tem ${animal2.idade} anos.");
  print("${animal3.nome} é da raça ${animal3.raca} e tem ${animal3.idade} anos.");

  print('');

  Pessoa pessoa1 = Pessoa("Rafael", 20);
  print("${pessoa1.nome} é da cor ${pessoa1.cor}, tem ${pessoa1.altura} de altura e ${pessoa1.idade} anos.");
  Pessoa pessoa2 = Pessoa("Pedro", 22, "parda");
  print("${pessoa2.nome} é da cor ${pessoa2.cor}, tem ${pessoa2.altura} de altura e ${pessoa2.idade} anos.");
  Pessoa pessoa3 = Pessoa("João", 36, "branca", 1.78);
  print("${pessoa3.nome} é da cor ${pessoa3.cor}, tem ${pessoa3.altura} de altura e ${pessoa3.idade} anos.");
  Pessoa pessoa4 = Pessoa("Mateus", 29);
  print("${pessoa4.nome} é da cor ${pessoa4.cor}, tem ${pessoa4.altura} de altura e ${pessoa4.idade} anos.");

  print('');

  Usuario usuario = new Usuario('fmda@gmail.com', '123456', nome: "Gabriel", cargo: "Admin");
  usuario.autenticar();

  Usuario admin = Usuario.admin('fmda@gmail.com', '123456', nome: "Nome Exemplo!");
  admin.autenticar();

  print('');
}

class Usuario {
  late String user;
  late String senha;
  late String? nome;
  late String? cargo;
  late int idade;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? "Sem nome" : nome;
    this.cargo = (cargo == null) ? "Usuário" : cargo;
    print("Construtor resumido com parâmetros nomeados default ${this.toString()}");
  }

  Usuario.admin(this.user, this.senha, {this.nome}) {
    this.nome = (nome == null) ? "Sem nome" : nome;
    this.cargo = "Administrador";
    print("Construtor resumido com parâmetros nomeados default ${this.toString()}");
  }

  void autenticar() {
    var user = "fmda@gmail.com";
    var senha = "123456";

    (this.user == user && this.senha == senha) ? print('Usuario autenticado') : print("Falha na autenticação");
  }
}

class Pessoa {
  late String nome;
  late int idade;
  late String? cor;
  late double altura;

  Pessoa(this.nome, this.idade, [String? cor, this.altura = 0]) {
    this.cor = (cor == null) ? "Indefinida" : cor;
    print("Construtor resumido com parâmetros nomeados: ${this.toString()}");
  }
}

class Animal {
  late String nome;
  late String? raca;
  late int idade;

  Animal(String nome, [String? raca, int idade = 0]) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print("Construtor com parâmetros default ${this.toString()}");
  }
}

class Objeto {
  late String nome;
  Objeto() {
    print("Construtor sem parâmetros! ${this.toString()}");
  }
}
