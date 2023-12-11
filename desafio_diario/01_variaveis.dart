// Realizar uma soma, uma subtração, uma divisão e uma multiplicação
// Concatenar 2 strings
// Interpolar 2 strings
// Criar 2 constantes e utilizá-las em operações matemáticas
// Criar uma variável dinamica, mudar e imprimir o tipo a cada mudança
void main() {
  // Realizar uma soma, uma subtração, uma divisão e uma multiplicação
  var numero1 = 10;
  var numero2 = 20;
  var resultadoSoma = numero1 + numero2;
  print(resultadoSoma);
  var resultadoSubtracao = numero2 - numero1;
  print(resultadoSubtracao);
  var resultadoDivisao = numero2 / numero1;
  print(resultadoDivisao);
  var resultadoMultiplicacao = numero1 * numero2;
  print(resultadoMultiplicacao);
  // Concatenar 2 strings
  const nome = "Gabriel";
  const sobrenome = "Estéfono";
  const nomeCompleto = nome + " " + sobrenome;
  print(nomeCompleto);
  // Interpolar 2 strings
  const idade = 26;
  print("Olá, meu nome é ${nomeCompleto} e eu tenho ${idade} anos.");
  // Criar 2 constantes e utilizá-las em operações matemáticas
  const numero3 = 50;
  const numero4 = 5;
  const resultado = numero3 / numero4;
  print(resultado);
  // Criar uma variável dinamica, mudar e imprimir o tipo a cada mudança
  dynamic dadosVariados = 10;
  print(dadosVariados.runtimeType);
  dadosVariados = "Variando os dados";
  print(dadosVariados.runtimeType);
  dadosVariados = true;
  print(dadosVariados.runtimeType);
  dadosVariados = 10.5;
  print(dadosVariados.runtimeType);
}
