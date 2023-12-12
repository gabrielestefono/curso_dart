void main() {
  print("03.0 - If e Else");
  if (!true) {
    print('verdadeiro');
  } else {
    print("falso");
  }

  // If sem chaves
  int idade = 17;
  if (idade >= 18)
    print('Maior de idade!');
  else
    print("Menor de idade!");

  idade = 18;
  if (idade < 14) {
    print('Criança');
  } else if (idade < 18) {
    print('Adolescente');
  } else {
    print('Adulto');
  }
}
