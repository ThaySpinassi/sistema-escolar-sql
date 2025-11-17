# 🏫 Projeto SQL: Sistema de Gestão Escolar Fictício

### 📖 Visão Geral do Projeto

Este repositório contém o esquema de banco de dados e scripts de dados para simular um sistema de gestão de dados acadêmicos para uma escola fictícia.

O projeto foi desenvolvido para fins de aprendizado e demonstração em modelagem de dados, DDL (Data Definition Language), DML (Data Manipulation Language) e consultas complexas no ambiente **SQLite**.

### 🛠️ Estrutura do Banco de Dados

O banco de dados é composto por **7 tabelas** que mapeiam as relações essenciais de uma instituição de ensino, incluindo alunos, professores, turmas, disciplinas e um registro de notas.

O modelo relacional suporta as seguintes entidades:
* `alunos`
* `professores`
* `disciplinas`
* `turmas`
* `turma_disciplinas` (N:N)
* `turma_alunos` (N:N)
* `notas`

---

### 📂 Arquivos do Repositório

O projeto está organizado em três arquivos principais, seguindo um fluxo de trabalho lógico para a criação e teste do banco de dados:

| Arquivo | Conteúdo | Objetivo |
| :--- | :--- | :--- |
| `create_table.sql` | Comandos DDL (`CREATE TABLE`). | Cria todas as 7 tabelas com definição de Chaves Primárias e Estrangeiras. |
| `insert_data.sql` | Comandos DML (`INSERT INTO`). | Popula o banco com dados de teste (25 alunos, 7 professores, 151 registros de notas, etc.). |
| `queries.sql` | Consultas SQL de teste (19 queries). | Demonstra a manipulação e análise dos dados (cálculo de médias, porcentagem de aprovação, `GROUP BY`, `HAVING`, `VIEW`). |

---

### 📊 Consultas e Análises Destaques

O script `queries.sql` aborda diversos cenários de negócio, demonstrando soluções para relatórios comuns:

* **Média e Aprovação:** Cálculo da média final dos alunos e indicação de `Aprovado/Reprovado` (Média >= 6.00).
* **Análise Estatística:** Cálculo da **porcentagem de aprovação** geral da escola e por disciplina.
* **Consultas Avançadas:** Uso de `JOINs` múltiplos, `GROUP BY`, `HAVING` e `CASE WHEN` para filtrar e agregar dados de desempenho.
* **Gestão:** Identificação de professores orientadores, contagem de alunos por turma e disciplinas por turma.

### 🚀 Como Executar o Projeto

Para replicar o ambiente de banco de dados, você precisa de um cliente **SQLite**.

1.  **Crie o Banco:** Crie um novo arquivo de banco de dados vazio (ex: `escola.db`).
2.  **Estrutura:** Execute o script `create_table.sql` para criar todas as tabelas.
3.  **Dados:** Execute o script `insert_data.sql` para popular as tabelas.
4.  **Testes:** Execute as consultas em `queries.sql` para validar as análises e o desempenho.

### 🧑‍💻 Contato

Desenvolvido por: **Thaynara Spinassi**

* LinkedIn: www.linkedin.com/in/thaynara-spinassi
