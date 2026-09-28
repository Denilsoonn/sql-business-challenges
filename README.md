# 🗄️ Desafios de SQL para Análise de Negócios

Projeto desenvolvido para praticar **SQL e PostgreSQL por meio da resolução de problemas de negócio**.

A base de dados simula um ambiente corporativo de **gestão de despesas e reembolsos**, permitindo realizar consultas e análises envolvendo funcionários, departamentos, categorias de despesas, gastos e reembolsos.

O objetivo do projeto é evoluir o conhecimento em banco de dados relacional através de desafios progressivos, aproximando os exercícios de situações que poderiam ser encontradas em um ambiente profissional.

---

## 🎯 Objetivo do projeto

Este projeto foi criado para desenvolver e consolidar conhecimentos em:

- SQL;
- PostgreSQL;
- modelagem básica de banco de dados relacional;
- relacionamento entre tabelas;
- consultas utilizando múltiplas tabelas;
- filtros e ordenação de dados;
- agrupamentos;
- funções de agregação;
- análise de dados aplicada a cenários de negócio.

Mais do que praticar comandos isolados, a proposta é utilizar SQL para **responder perguntas e resolver problemas utilizando dados**.

---

## 🏢 Cenário de negócio

A base de dados representa uma empresa que precisa controlar as despesas realizadas por seus funcionários.

O sistema possui informações relacionadas a:

- departamentos;
- funcionários;
- categorias de despesas;
- despesas realizadas;
- reembolsos.

Com esses dados é possível responder perguntas como:

- quanto cada funcionário gastou;
- quais departamentos possuem mais despesas;
- quais categorias concentram determinados gastos;
- quantas despesas foram realizadas;
- qual o valor médio das despesas;
- quais funcionários realizaram despesas em determinado período.

---

## 🗃️ Modelo de dados

O banco foi estruturado utilizando tabelas relacionadas entre si.

```text
departments
     │
     ▼
employees
     │
     ▼
expenses ─────────► categories
     │
     ▼
reimbursements
```

### Relacionamentos

- Um **departamento** pode possuir vários funcionários.
- Um **funcionário** pertence a um departamento.
- Um funcionário pode possuir várias despesas.
- Uma **despesa** pertence a uma categoria.
- Uma despesa pode estar relacionada ao processo de reembolso.

Esses relacionamentos permitem praticar consultas envolvendo diferentes tabelas através de `JOIN`.

---

## 🔑 Conceitos de banco de dados

A estrutura permite praticar conceitos fundamentais de bancos relacionais.

### Primary Key — PK

A **Primary Key** identifica de forma única cada registro de uma tabela.

Exemplo conceitual:

```sql
id INTEGER PRIMARY KEY
```

### Foreign Key — FK

A **Foreign Key** estabelece um relacionamento entre registros de tabelas diferentes.

Por exemplo, um funcionário pode possuir uma referência para o departamento ao qual pertence.

```text
employees.department_id
            │
            ▼
departments.id
```

Isso permite relacionar os dados utilizando consultas SQL.

---

## 🧩 Desafios

Os exercícios foram organizados para praticar consultas SQL de forma progressiva.

### Desafio 1

Primeiras consultas sobre os dados utilizando filtros para localizar informações específicas.

**Conceitos praticados:**

- `SELECT`
- `WHERE`
- filtros de dados

---

### Desafio 2

Consultas envolvendo informações armazenadas em tabelas diferentes.

**Conceitos praticados:**

- `INNER JOIN`
- relacionamento entre tabelas
- Primary Keys
- Foreign Keys

---

### Desafio 3

Análise dos dados utilizando agrupamentos e contagens.

**Conceitos praticados:**

- `GROUP BY`
- `COUNT`
- agregação de dados

---

### Desafio 4

Análise financeira das despesas utilizando funções de agregação.

**Conceitos praticados:**

- `SUM`
- `AVG`
- `GROUP BY`
- análise de valores

---

### Desafio 5

Consultas envolvendo combinações de filtros e análise de informações distintas.

**Conceitos praticados:**

- `DISTINCT`
- `IN`
- filtros por período
- múltiplas condições
- relacionamentos entre tabelas

---

## 🧠 Conhecimentos praticados

Durante o desenvolvimento dos desafios foram utilizados conceitos como:

### Consultas

```sql
SELECT
WHERE
DISTINCT
IN
```

### Relacionamentos

```sql
INNER JOIN
```

### Agregações

```sql
COUNT()
SUM()
AVG()
GROUP BY
```

### Banco de dados relacional

Também foram praticados conceitos como:

- tabelas;
- registros;
- colunas;
- Primary Keys;
- Foreign Keys;
- relacionamentos entre entidades;
- integridade dos dados;
- consultas entre múltiplas tabelas.

---

## 🛠️ Tecnologias utilizadas

### PostgreSQL

Sistema gerenciador de banco de dados relacional utilizado para criação da base e execução das consultas SQL.

### SQL

Linguagem utilizada para consultar, relacionar, filtrar e analisar os dados armazenados no PostgreSQL.

### DBeaver

Ferramenta utilizada para administrar o banco de dados e executar as consultas durante o desenvolvimento dos desafios.

> O DBeaver é utilizado como ferramenta de administração e consulta. O banco de dados utilizado no projeto é o PostgreSQL.

### Git e GitHub

Utilizados para versionamento do projeto e documentação da evolução dos estudos.

---

## 📂 Estrutura do projeto

O repositório está organizado para separar a criação da base dos desafios SQL.

```text
sql-business-challenges/
│
├── database/
│   └── ...
│
├── challenges/
│   └── ...
│
└── README.md
```

A estrutura pode evoluir conforme novos desafios forem adicionados ao projeto.

---

## ▶️ Como executar

### Pré-requisitos

Para reproduzir os exercícios, é necessário possuir:

- PostgreSQL instalado;
- um banco de dados para estudos;
- DBeaver ou outro cliente compatível com PostgreSQL.

### 1. Clone o repositório

```bash
git clone https://github.com/Denilsoonn/sql-business-challenges.git
```

Entre na pasta:

```bash
cd sql-business-challenges
```

### 2. Crie a estrutura do banco

Abra os scripts responsáveis pela criação da base no DBeaver e execute-os utilizando uma conexão PostgreSQL destinada a estudos.

### 3. Execute os desafios

Abra os arquivos SQL dos desafios individualmente e execute as consultas.

Analise os resultados retornados e compare-os com o objetivo de cada exercício.

---

## 🧪 Como estudar com o projeto

Uma forma de utilizar este repositório é tentar resolver cada problema antes de consultar a solução.

Fluxo sugerido:

```text
Entender o problema
        ↓
Identificar as tabelas necessárias
        ↓
Identificar os relacionamentos
        ↓
Escrever a consulta SQL
        ↓
Executar no PostgreSQL
        ↓
Analisar o resultado
        ↓
Refatorar a consulta quando necessário
```

Essa abordagem ajuda a desenvolver não apenas conhecimento da sintaxe SQL, mas também o raciocínio necessário para transformar uma pergunta de negócio em uma consulta.

---

## 📚 Próximos estudos

O projeto continuará evoluindo conforme novos conceitos forem estudados.

Próximos tópicos planejados:

- `HAVING`;
- `CASE WHEN`;
- `LEFT JOIN`;
- subqueries;
- Common Table Expressions (`CTEs`);
- Window Functions;
- consultas mais complexas envolvendo múltiplas tabelas.

A ideia é transformar esses conceitos em novos desafios práticos antes de considerá-los conhecimentos consolidados no projeto.

---

## 💡 Aprendizados

Este projeto tem sido utilizado para desenvolver uma compreensão mais sólida sobre como bancos de dados relacionais funcionam.

Entre os principais aprendizados estão:

- como estruturar informações em tabelas relacionadas;
- diferença entre Primary Key e Foreign Key;
- como relacionar dados utilizando `JOIN`;
- como utilizar funções de agregação;
- como agrupar informações;
- como transformar perguntas de negócio em consultas SQL;
- como utilizar PostgreSQL e DBeaver durante o desenvolvimento;
- importância de organizar e documentar consultas SQL.

---

## 🚀 Evolução do projeto

Este é um projeto de estudos em evolução.

Novos desafios serão adicionados conforme o avanço nos estudos de **SQL, PostgreSQL, modelagem de dados e análise de informações**.

O objetivo é manter o histórico do projeto como registro da evolução prática desses conhecimentos.

---

## 👨‍💻 Autor

**Denilson Barbosa**

Projeto desenvolvido para estudo e evolução prática em desenvolvimento de software, banco de dados e análise de dados.

[LinkedIn](https://www.linkedin.com/in/denilsoon/)
