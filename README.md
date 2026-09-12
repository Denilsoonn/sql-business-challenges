# SQL Business Challenges

Projeto desenvolvido para praticar e demonstrar conhecimentos em **SQL e bancos de dados relacionais**, utilizando consultas para resolver problemas baseados em regras de negócio.

A base de dados simula um sistema corporativo de **gestão de despesas e reembolsos de funcionários**, permitindo realizar análises relacionadas a funcionários, departamentos, categorias e gastos da empresa.

## Objetivo

O objetivo deste projeto é demonstrar a utilização prática de SQL na análise de dados e resolução de problemas de negócio.

Os desafios foram desenvolvidos de forma progressiva, utilizando conceitos como:

- SELECT
- FROM
- WHERE
- INNER JOIN
- GROUP BY
- ORDER BY
- COUNT
- SUM
- AVG
- DISTINCT
- IN
- Filtros por data
- Primary Keys
- Foreign Keys
- Relacionamentos entre tabelas

## Tecnologias utilizadas

- PostgreSQL
- SQL
- Docker
- Docker Compose
- DBeaver
- Git
- GitHub

## Estrutura do projeto

```text
sql-business-challenges/
│
├── database/
│   ├── 01_create_tables.sql
│   └── 02_insert_data.sql
│
├── challenges/
│   ├── 01_expenses.sql
│   ├── 02_employee_expenses.sql
│   ├── 03_category_expenses.sql
│   ├── 04_department_analysis.sql
│   └── 05_travel_analysis.sql
│
├── docker-compose.yml
├── .gitignore
└── README.md
```

## Modelo de dados

A base utiliza as seguintes entidades principais:

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

### Departments

Armazena os departamentos existentes na empresa.

### Employees

Armazena os funcionários e relaciona cada funcionário ao seu departamento.

### Categories

Armazena as categorias utilizadas para classificar despesas.

Exemplos:

- Hospedagem
- Alimentação
- Transporte
- Passagem aérea
- Material de escritório
- Treinamento

### Expenses

Armazena as despesas realizadas pelos funcionários.

Cada despesa possui informações como:

- funcionário
- categoria
- descrição
- valor
- data
- status

### Reimbursements

Controla os reembolsos relacionados às despesas.

---

# Desafios

## Desafio 01 — Despesas aprovadas de alto valor

Identificar despesas:

- aprovadas;
- realizadas em agosto de 2026;
- com valor superior a R$ 500,00.

O resultado deve apresentar o funcionário, descrição, valor, data e status da despesa, ordenando os maiores valores primeiro.

**Conceitos utilizados:**

`SELECT`, `JOIN`, `WHERE` e `ORDER BY`.

---

## Desafio 02 — Gastos por funcionário

Identificar quanto cada funcionário gastou considerando somente despesas aprovadas.

O resultado apresenta:

- funcionário;
- departamento;
- quantidade de despesas;
- total gasto.

Os funcionários são ordenados pelo maior gasto total.

**Conceitos utilizados:**

`JOIN`, `WHERE`, `COUNT`, `SUM`, `GROUP BY` e `ORDER BY`.

---

## Desafio 03 — Categorias com maiores gastos

Identificar quais categorias representam os maiores gastos da empresa considerando somente despesas aprovadas.

Para cada categoria são calculados:

- quantidade de despesas;
- total gasto;
- valor médio das despesas.

**Conceitos utilizados:**

`COUNT`, `SUM`, `AVG`, `JOIN`, `WHERE`, `GROUP BY` e `ORDER BY`.

---

## Desafio 04 — Gastos por departamento

Analisar quanto cada departamento gastou com despesas aprovadas durante o ano de 2026.

O resultado apresenta:

- departamento;
- quantidade de funcionários com despesas;
- quantidade de despesas;
- total gasto;
- média das despesas.

Para evitar que um funcionário com várias despesas seja contado diversas vezes, é utilizado `COUNT(DISTINCT ...)`.

**Conceitos utilizados:**

`COUNT`, `DISTINCT`, `SUM`, `AVG`, `JOIN`, `WHERE`, filtros por data, `GROUP BY` e `ORDER BY`.

---

## Desafio 05 — Análise de viagens corporativas

Identificar os funcionários responsáveis pelos maiores gastos relacionados a viagens corporativas.

São consideradas as categorias:

- Hospedagem
- Alimentação
- Transporte
- Passagem aérea

Somente despesas aprovadas são consideradas.

O resultado apresenta:

- funcionário;
- departamento;
- quantidade de despesas;
- total gasto;
- média por despesa.

**Conceitos utilizados:**

`JOIN` entre múltiplas tabelas, `IN`, `WHERE`, `COUNT`, `SUM`, `AVG`, `GROUP BY` e `ORDER BY`.

---

## Executando o projeto

### Pré-requisitos

Para executar o projeto é necessário possuir:

- Docker
- Docker Compose

### Iniciar o banco de dados

Na raiz do projeto execute:

```bash
docker compose up -d
```

O Docker iniciará uma instância do PostgreSQL utilizada pelo projeto.

Para verificar os containers em execução:

```bash
docker ps
```

### Executar os scripts

Após iniciar o banco, execute os scripts presentes em `database/` na seguinte ordem:

```text
01_create_tables.sql
02_insert_data.sql
```

Depois disso, as consultas disponíveis em `challenges/` poderão ser executadas.

---

## Próximos passos

Este projeto continuará sendo evoluído com desafios SQL mais avançados, incluindo:

- HAVING
- CASE WHEN
- LEFT JOIN
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions

---

## Autor

**Denilson**

Projeto desenvolvido como parte dos meus estudos e evolução profissional em desenvolvimento de software e banco de dados.