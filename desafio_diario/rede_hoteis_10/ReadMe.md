**Desafio de Programação em Dart: Sistema de Gerenciamento de Rede de Hotéis**

**Objetivo:**
Desenvolver um sistema para gerenciar reservas, quartos e hóspedes em uma rede de hotéis.

**Requisitos:**

1. **Classes Básicas:**
   - `Hotel`: Representa um hotel na rede.
   - `Quarto`: Representa um quarto dentro do hotel.
   - `Hospede`: Representa um hóspede do hotel.
   - `Reserva`: Representa uma reserva feita por um hóspede.

2. **Classe `Hotel`:**
   - Atributos: nome, localização, lista de quartos (`List`), lista de reservas (`Map` com chave sendo o ID da reserva e valor sendo o objeto `Reserva`).
   - Construtor, getters e setters.
   - Métodos para adicionar/remover quartos e gerenciar reservas.

3. **Classe `Quarto`:**
   - Atributos: número do quarto, tipo, preço por noite, disponibilidade.
   - Construtor, getters e setters.

4. **Classe `Hospede`:**
   - Atributos: nome, documento de identificação, histórico de reservas (`List`).
   - Construtor, getters e setters.

5. **Classe `Reserva`:**
   - Atributos: ID da reserva, hospede, quarto reservado, datas de check-in e check-out.
   - Construtor, getters e setters.

6. **Herança e Sobrescrita:**
   - Crie classes derivadas de `Quarto`, como `QuartoStandard`, `QuartoDeluxe`, etc.
   - Sobrescreva métodos para funcionalidades específicas.

7. **Interface e Mixin:**
   - Interface `Avaliavel` com métodos para avaliar serviços do hotel.
   - Mixin `Promocional` para aplicar descontos em reservas ou serviços.

8. **Coleções:**
   - `List`: Para armazenar quartos e histórico de reservas.
   - `Set`: Para manter um conjunto de serviços únicos oferecidos pelo hotel.
   - `Queue`: Para gerenciar a lista de espera de reservas.
   - `Map`: Para associar reservas aos hóspedes.

9. **Singleton:**
   - Classe `GerenciadorDeHoteis` como singleton para gerenciar a rede de hotéis.

10. **Exceções:**
    - Tratamento de exceções para casos como quartos indisponíveis, dados inválidos de reserva, ou erros no sistema de pagamento.

11. **Operadores, Condicionais, Loops:**
    - Utilize para implementar a lógica de negócios e manipulação de dados.

**Tarefa:**
Implemente o sistema conforme os requisitos, testando interações entre as classes, a eficácia do tratamento de exceções e a integração das diversas coleções e funcionalidades de OO. Simule cenários reais de reservas em hotéis, incluindo gestão de quartos, hóspedes, e ações promocionais.