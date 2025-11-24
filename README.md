# 🏫 Projeto SQL: Sistema de Gestão Escolar

### 📖 Visão Geral

Este repositório reúne a modelagem do banco de dados, scripts SQL e análises elaboradas para simular um sistema de gestão escolar.

O projeto foi desenvolvido para fins de aprendizado, aplicando modelagem de dados, DDL (Data Definition Language), DML (Data Manipulation Language) e consultas analíticas em **SQLite**.

Além do código, o projeto acompanha um relatório visual e completo hospedado no **Notion**, onde todo o processo - da modelagem às análises - é apresentado de forma didática.

---

### 🚀 Relatório Completo (Documentação Visual)

Você pode acessar a documentação detalhada no link abaixo:

| Documento | Formato | Link |
| :--- | :--- | :--- |
| **Relatório Completo (Notion)** | Visual/Interativo | 🔗 [Link para o Notion](https://www.notion.so/Sistema-de-Gest-o-Escolar-Projeto-SQL-2afa5e4f6d0c8090930af300a5da2b55?source=copy_link) |
| **Relatório em PDF (Backup)** | Arquivo | 🔗 [Link para o PDF](https://github.com/ThaySpinassi/sistema-escolar-sql/tree/e4fb07dc1f02088ef1e0fad43094d75905b26ad3/docs) |

---

### 🛠️ Estrutura do Banco de Dados

O banco de dados é composto por **7 tabelas**, representando as entidades principais de um ambiente escolar:

* `alunos`
* `professores`
* `disciplinas`
* `turmas`
* `turma_disciplinas` (relação N:N)
* `turma_alunos` (relação N:N)
* `notas`

A modelagem aborda relacionamentos essenciais para registrar matrículas, alocação de professores, estrutura curricular e desempenho dos estudantes.

---

### 📂 Arquivos do Repositório

| Arquivo | Conteúdo | Objetivo |
| :--- | :--- | :--- |
| `create_table.sql` | Comandos DDL (`CREATE TABLE`). | Cria as 7 tabelas do banco. |
| `insert_data.sql` | Comandos DML (`INSERT INTO`). | Popula o banco com dados fictícios (25 alunos, 7 professores, 151 registros de notas, etc.). |
| `queries.sql` | 19 consultas SQL | Analisa desepenho escolar, aprovações, disciplina x alunos, estatísticas etc. |

---

### 📊 Consultas e Análises de Destaque

O script `queries.sql` simulam diversos cenários reais enfrentrados por uma gestão escolar, demonstrando soluções para relatórios comuns:

* **Média e Aprovação:** Cálculo da média final dos alunos e indicação de `Aprovado/Reprovado` (Média >= 6.00).
* **Análise Estatística:** Cálculo da **porcentagem de aprovação** geral da escola e por disciplina.
* **Consultas Avançadas:** Uso de `JOINs` múltiplos, `GROUP BY`, `HAVING` e `CASE WHEN` para filtrar e agregar dados de desempenho.
* **Gestão:** Identificação de professores orientadores, contagem de alunos por turma e disciplinas por turma.

Algumas dessas análises são apresentadas de forma visual no relatório do Notion, com prints, interpretações e insights de negócio.

---

### ▶️ Como Executar o Projeto

Para rodar o projeto localmente, é necessário utilizar **SQLite**.

1.  **Criar o Banco:** Crie um novo arquivo de banco de dados vazio (ex: `escola.db`).
2.  **Estrutura:** Execute o script `create_table.sql` para criar todas as tabelas.
3.  **Dados:** Execute o script `insert_data.sql` para popular as tabelas.
4.  **Testes:** Execute as consultas em `queries.sql` para validar as análises e o desempenho.

---

### 🧑‍💻 Autoria

Desenvolvido por: **Thaynara Spinassi**

* LinkedIn: www.linkedin.com/in/thaynara-spinassi
