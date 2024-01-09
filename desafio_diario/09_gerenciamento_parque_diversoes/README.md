# Desafio de Programação em Dart: Sistema de Gerenciamento de Parque de Diversões

## Objetivo:

Desenvolver um sistema para gerenciar as atrações, filas de espera e vendas de ingressos de um parque de diversões.

## Requisitos:

### Classes Básicas:

Atracao: Representa uma atração no parque.
Visitante: Representa um visitante do parque.
Ingresso: Representa um ingresso vendido para o parque.

### Classe Atracao:

Atributos: nome, capacidade máxima, fila de espera (Queue), horários de funcionamento.
Construtor, getters e setters.
Métodos para adicionar/remover visitantes da fila de espera.

### Classe Visitante:

Atributos: nome, idade, lista de ingressos comprados (List).
Construtor, getters e setters.

### Classe Ingresso:

Atributos: tipo de ingresso, preço, data de validade.
Construtor, getters e setters.

### Singleton:

Classe GerenciadorDoParque como singleton para gerenciar atrações, visitantes e vendas de ingressos.

### Herança e Sobrescrita:

Crie classes derivadas de Atracao, como MontanhaRussa, RodaGigante, etc.

Sobrescreva métodos para comportamentos específicos das atrações derivadas.

### Interface e Mixin:

Interface Vendavel com métodos relacionados à venda de ingressos.
Mixin Promocional com métodos para aplicar descontos e promoções.

### Coleções:

#### Set

Use para manter um conjunto único de visitantes no parque.

#### Queue:

Use nas atrações para gerenciar as filas de espera.

#### Map:

Use para associar visitantes a seus ingressos comprados.

### Funcionalidades Adicionais:

Métodos para comprar ingressos, entrar em filas de atrações, e verificar atrações disponíveis.
Implementação de restrições por idade ou altura nas atrações.

### Operadores, Condicionais, Loops:

Utilize para implementar regras de negócio, como restrições de atrações e lógicas de filas.

### Tarefa:

Implemente o sistema conforme os requisitos, criando instâncias das classes envolvidas e utilizando o GerenciadorDoParque para controlar o fluxo de visitantes e a gestão das atrações. Teste a interação entre as diferentes coleções (List, Set, Queue, Map) e as funcionalidades de OO (herança, interface, mixin).
