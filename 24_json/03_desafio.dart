import 'dart:convert';

void main(){
    var json = '''{
        "nome" : "Fernando", 
        "idade": 36, 
        "parentes": {
            "mae": "Marlene",
            "pai": "Delcio"
        },
        "tarefas": [
            "Pagar contas",
            "Estudar"
        ],
        "conjuge": {
            "nome" : "Leila", 
            "idade": 31,
            "parentes": {
                "mae": "Lindraci",
                "pai": "Pedro"
            }
        },
        "filhos" : [      
            {
                "nome" : "Chloe", 
                "idade": 1, 
                "vacinas": [
                "ACWY",
                "Sarampo"
                ]
            },
            {
                "nome" : "Bartolomeu", 
                "idade": 5, 
                "vacinas": [
                "ACWY",
                "Sarampo",
                "Meningite"
                ]
            }
        ],
        "bens": {
            "veiculos": [
                {
                    "marca": "Maverick",
                    "modelo": "Ford",
                    "caracteristicas": {
                        "tipo": "passeio",
                        "passageiros": 5
                    },
                    "multas": [
                        {
                            "descrisao": "Excesso Velocidade",
                            "tipo": "Gravissima",
                            "pontos": 7
                        },
                        {
                            "descrisao": "Estacionar Local Proibido",
                            "tipo": "Grave",
                            "pontos": 4
                        }
                    ]
                },
                {
                    "marca": "Kawasaki",
                    "modelo": "Ninja H2R",
                    "caracteristicas": {
                        "tipo": "corrida",
                        "passageiros": 2
                    },
                    "multas": [
                        {
                            "descrisao": "Excesso Velocidade",
                            "tipo": "Gravissima",
                            "pontos": 7
                        },
                        {
                            "descrisao": "Excesso Velocidade",
                            "tipo": "Gravissima",
                            "pontos": 7
                        },
                        {
                            "descrisao": "Excesso Velocidade",
                            "tipo": "Gravissima",
                            "pontos": 7
                        }
                    ]
                }
            ],
            "imoveis": [
                {
                    "tipo": "casa",
                    "endereco": "Rua dos tolos, 0, Vila do Chaves",
                    "contas": [
                        {
                            "tipo": "IPTU",
                            "valor": 1000
                        },
                        {
                            "tipo": "Condominio",
                            "valor": 500
                        }
                    ]
                }
            ]
        }
    }''';
    var jsonDecoded = jsonDecode(json);

    var paciente = Paciente.fromJson(jsonDecoded);

    print(jsonDecoded['filhos'][0]);

    print(paciente.nome);
    print(paciente.idade);
    print(paciente.parentes.mae);
    print(paciente.parentes.pai);
    print(paciente.tarefas);
    print(paciente.conjuge.nome);
    print(paciente.conjuge.idade);
    print(paciente.conjuge.parentes.mae);
    print(paciente.conjuge.parentes.pai);
    print(paciente.filhos[0].nome);
    print(paciente.filhos[0].idade);
    print(paciente.filhos[0].vacinas);
    print(paciente.filhos[1].nome);
    print(paciente.filhos[1].idade);
    print(paciente.filhos[1].vacinas);
    print(paciente.bens.veiculos[0].marca);
    print(paciente.bens.veiculos[0].modelo);
    print(paciente.bens.veiculos[0].caracteristicas.tipo);
    print(paciente.bens.veiculos[0].caracteristicas.passageiros);
    print(paciente.bens.veiculos[0].multas);
    print(paciente.bens.veiculos[1].marca);
    print(paciente.bens.veiculos[1].modelo);
    print(paciente.bens.veiculos[1].caracteristicas.tipo);
    print(paciente.bens.veiculos[1].caracteristicas.passageiros);
    print(paciente.bens.imoveis[0].tipo);
    print(paciente.bens.imoveis[0].endereco);
    print(paciente.bens.imoveis[0].contas);
    

}

class Paciente{
    final String nome;
    final int idade;
    final Parente parentes;
    final List<dynamic> tarefas;
    final Conjuge conjuge;
    final List<dynamic> filhos;
    final Bens bens;

    Paciente({required this.nome, required this.idade, required this.parentes, required this.tarefas, required this.conjuge, required this.filhos, required this.bens});

    factory Paciente.fromJson(Map<String, dynamic> json){
        return Paciente(
            nome: json['nome'],
            idade: json['idade'],
            parentes: Parente.fromJson(json['parentes']),
            tarefas: json['tarefas'],
            conjuge: Conjuge.fromJson(json['conjuge']),
            filhos: json['filhos'].map((e) => Filho.fromJson(e)).toList(),
            bens: Bens.fromJson(json['bens'])
        );
    }
}

class Parente{
    final String mae;
    final String pai;

    Parente({required this.mae, required this.pai});

    factory Parente.fromJson(Map<String, dynamic> json){
        return Parente(
            mae: json['mae'],
            pai: json['pai']
        );
    }
}

class Conjuge{
    final String nome;
    final int idade;
    final Parente parentes;

    Conjuge({required this.nome, required this.idade, required this.parentes});

    factory Conjuge.fromJson(Map<String, dynamic> json){
        return Conjuge(
            nome: json['nome'],
            idade: json['idade'],
            parentes: Parente.fromJson(json['parentes'])
        );
    }
}

class Filho{
    final String nome;
    final int idade;
    final List<dynamic> vacinas;

    Filho({required this.nome, required this.idade, required this.vacinas});

    factory Filho.fromJson(Map<String, dynamic> json){
        return Filho(
            nome: json['nome'],
            idade: json['idade'],
            vacinas: json['vacinas']
        );
    }
}

class Bens{
    final List<dynamic> veiculos;
    final List<dynamic> imoveis;

    Bens({required this.veiculos, required this.imoveis});

    factory Bens.fromJson(Map<String, dynamic> json){
        return Bens(
            veiculos: json['veiculos'].map((e) => Veiculo.fromJson(e)).toList(),
            imoveis: json['imoveis'].map((e) => Imovel.fromJson(e)).toList()
        );
    }
}

class Veiculo{
    final String marca;
    final String modelo;
    final Caracteristicas caracteristicas;
    final List<dynamic> multas;

    Veiculo({required this.marca, required this.modelo, required this.caracteristicas, required this.multas});

    factory Veiculo.fromJson(Map<String, dynamic> json){
        return Veiculo(
            marca: json['marca'],
            modelo: json['modelo'],
            caracteristicas: Caracteristicas.fromJson(json['caracteristicas']),
            multas: json['multas']
        );
    }
}

class Caracteristicas{
    final String tipo;
    final int passageiros;

    Caracteristicas({required this.tipo, required this.passageiros});

    factory Caracteristicas.fromJson(Map<String, dynamic> json){
        return Caracteristicas(
            tipo: json['tipo'],
            passageiros: json['passageiros']
        );
    }
}

class Imovel{
    final String tipo;
    final String endereco;
    final List<dynamic> contas;

    Imovel({required this.tipo, required this.endereco, required this.contas});

    factory Imovel.fromJson(Map<String, dynamic> json){
        return Imovel(
            tipo: json['tipo'],
            endereco: json['endereco'],
            contas: json['contas']
        );
    }
}