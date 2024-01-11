# Desafio do Acumulador Numérico em Dart

Este programa em Dart é um jogo interativo onde o usuário insere números e acumula pontos com base em uma regra específica. Ideal para quem está aprendendo a lidar com estruturas de controle de fluxo, tratamento de exceções e operações matemáticas em Dart.

## Funcionamento do Jogo:

O jogo inicia com uma mensagem de boas-vindas e instruções para o usuário. O objetivo é inserir números para acumular pontos, seguindo regras específicas para números pares e ímpares.

## Estrutura do Programa:

### 1 - Entrada do Usuário:

- O programa solicita que o usuário insira números.
- O jogo termina quando um número negativo é inserido.

### 2 - Lógica de Pontuação:

- Se o número inserido for par, a metade do seu valor é adicionada à pontuação total.
- Se o número for ímpar, o triplo do seu valor é adicionado à pontuação.

### 3 - Tratamento de Exceções:

- O programa valida as entradas do usuário, lidando com entradas não numéricas ou nulas.
- Mensagens de erro são exibidas para entradas inválidas, solicitando uma nova entrada.

### 4 - Exibição da Pontuação:

- A pontuação atual é exibida após cada entrada válida.

## Objetivos de Aprendizado:

- Uso de loops (`while`).
- Tratamento de exceções (`try-catch`).
- Uso de operadores matemáticos e condicionais (`if-else`).
- Manipulação de entrada do usuário (`stdin.readLineSync`).

Este desafio é uma excelente maneira de praticar e entender conceitos fundamentais de programação em Dart, com um toque de diversão e interatividade.
