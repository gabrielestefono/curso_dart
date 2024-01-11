# Desafio do Gerenciador de Tarefas em Dart

Este programa em Dart é um gerenciador de tarefas simples, ideal para aprender conceitos como manipulação de listas, classes e objetos, e entrada/saída de dados. O usuário pode adicionar, listar e marcar tarefas como concluídas.

## Funcionalidades do Programa:

O programa oferece um menu interativo que permite ao usuário gerenciar suas tarefas de maneira eficaz e organizada.

## Estrutura do Programa:

### 1 - Adicionar Tarefas:

- Permite ao usuário adicionar uma nova tarefa à lista.
- As tarefas são armazenadas em uma lista de objetos `Tarefa`.

### 2 - Marcar Tarefas como Concluídas:

- O usuário pode marcar uma tarefa específica como concluída, informando o ID da tarefa.
- O programa verifica se o ID é válido antes de alterar o status da tarefa.

### 3 - Listar Tarefas:

- Exibe todas as tarefas, juntamente com seu status (concluída ou pendente) e ID.

### 4 - Loop Principal:

- O programa usa um loop `while` para apresentar as opções ao usuário e executar a ação correspondente.

### 5 - Tratamento de Entradas:

- Valida as entradas do usuário, lidando com valores nulos e não numéricos.

## Classes:

- `GerenciadorTarefas`: Responsável por gerenciar as tarefas. Possui métodos para adicionar, listar e marcar tarefas como concluídas.
- `Tarefa`: Representa uma tarefa, com propriedades para descrição e status (finalizada ou não).

## Objetivos de Aprendizado:

- Uso de classes e objetos para organizar e manipular dados.
- Criação de listas dinâmicas e manipulação de seus elementos.
- Entrada e saída de dados com `stdin` e `print`.
- Uso de loops e condicionais para controlar o fluxo do programa.

Este desafio é uma ótima maneira de praticar a programação orientada a objetos em Dart, enquanto se constrói uma ferramenta útil para a organização de tarefas diárias.
