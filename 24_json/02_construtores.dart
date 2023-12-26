import 'dart:convert';
import 'dart:core';

void main(){
    conversaoDireta();
    conversaoObjeto();
}

class ListaUsuarios{
    List<Usuario> usuarios;

    ListaUsuarios({required this.usuarios});

    // factory ListaUsuarios.fromJson(List<dynamic> json){
    //     return ListaUsuarios(
    //         usuarios: json.map((e) => Usuario.fromJson(e)).toList()
    //     );
    // }

    ListaUsuarios.fromJson(List<dynamic> json)
        : this(
            usuarios: json.map((e) => Usuario.fromJson(e)).toList()
        );

    List<dynamic> toJson(){
        return usuarios;
    }
}

class Usuario{
    String nome;
    int idade;
    String email;

    Usuario({required this.nome, required this.idade, required this.email});

//   factory Usuario.fromJson(Map<String, dynamic> json){
//     return Usuario(nome: json['nome'], idade: json['idade'], email: json['email']);
//   }

//   Usuario.fromJson(Map<String, dynamic> json){ // Esse modelo precisa do late
//     this.nome = json['nome'];
//     this.idade = json['idade'];
//     this.email = json['email'];
//   }

//   Usuario.fromJson(Map<String, dynamic> json) : // Esse modelo não precisa do late
//     this.nome = json['nome'],
//     this.idade = json['idade'],
//     this.email = json['email']{
//         // Configurações iniciais
//     }

    Usuario.fromJson(Map<String, dynamic> json) 
    : this(
        nome: json['nome'],
        idade: json['idade'],
        email: json['email'],
    );
    

  Map<String, dynamic> toJson(){
    return {
        'nome': nome,
        'idade': idade,
        'email': email
    };
  }
}

conversaoDireta(){
    print('20.0.0 - Json, conversão Direta');

    String jsonData = '''{
        "nome": "Gabriel",
        "idade": 26,
        "email": "gabriel@email.com"
    }''';

    //DECODE
    Map<String, dynamic> parsedJson = jsonDecode(jsonData);
    print(parsedJson);
    String nome = parsedJson['nome'];
    int idade = parsedJson["idade"];
    String email = parsedJson["email"];

    print("USO DIRETO: Nome: ${nome}. Idade: ${idade}. Email: ${email}");

    //ENCODE
    Map<String, dynamic> map = {
        'nome': "Gabriel",
        'idade': 26,
        'email': 'gabrielteste@email.com'
    };
    String toJson = jsonEncode(map);
    print(toJson);
}

conversaoObjeto(){
    String jsonData = '''[
        {
            "nome": "Gabriel",
            "idade": 26,
            "email": "gabriel@email.com"
        },
        {
            "nome": "Gabriel",
            "idade": 26,
            "email": "gabriel@email.com"
        }
    ]''';

    //DECODE
    List<dynamic> parsedJson = jsonDecode(jsonData);
    print(parsedJson);
    ListaUsuarios listaUsuarios = new ListaUsuarios.fromJson(parsedJson);
    print(listaUsuarios.usuarios[0].email);
}