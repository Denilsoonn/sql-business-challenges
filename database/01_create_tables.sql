-- =====================================================
-- TABELA: departments
-- Armazena os departamentos da empresa
-- =====================================================

CREATE TABLE departments (

    -- Identificador único do departamento
    id SERIAL PRIMARY KEY,

    -- Nome do departamento
    name VARCHAR(100) NOT NULL
);


-- =====================================================
-- TABELA: employees
-- Armazena os funcionários
-- =====================================================

CREATE TABLE employees (

    -- Identificador único do funcionário
    id SERIAL PRIMARY KEY,

    -- Nome completo
    name VARCHAR(150) NOT NULL,

    -- Cargo
    job_title VARCHAR(100) NOT NULL,

    -- Salário do funcionário
    salary DECIMAL(10,2) NOT NULL,

    -- Departamento ao qual pertence
    department_id INTEGER NOT NULL,

    -- Relacionamento com departments
    FOREIGN KEY (department_id)
        REFERENCES departments(id)
);


-- =====================================================
-- TABELA: categories
-- Categorias utilizadas nas despesas
-- =====================================================

CREATE TABLE categories (

    -- Identificador da categoria
    id SERIAL PRIMARY KEY,

    -- Nome da categoria
    name VARCHAR(100) NOT NULL
);


-- =====================================================
-- TABELA: expenses
-- Registra despesas realizadas pelos funcionários
-- =====================================================

CREATE TABLE expenses (

    -- Identificador único da despesa
    id SERIAL PRIMARY KEY,

    -- Funcionário que realizou a despesa
    employee_id INTEGER NOT NULL,

    -- Categoria
    category_id INTEGER NOT NULL,

    -- Descrição
    description VARCHAR(255) NOT NULL,

    -- Valor gasto
    amount DECIMAL(10,2) NOT NULL,

    -- Data da despesa
    expense_date DATE NOT NULL,

    -- Status da despesa
    status VARCHAR(30) NOT NULL,

    -- Relacionamento com funcionário
    FOREIGN KEY (employee_id)
        REFERENCES employees(id),

    -- Relacionamento com categoria
    FOREIGN KEY (category_id)
        REFERENCES categories(id)
);


-- =====================================================
-- TABELA: reimbursements
-- Controla os pagamentos das despesas aprovadas
-- =====================================================

CREATE TABLE reimbursements (

    -- Identificador do reembolso
    id SERIAL PRIMARY KEY,

    -- Despesa relacionada
    expense_id INTEGER NOT NULL,

    -- Data em que ocorreu o reembolso
    reimbursement_date DATE,

    -- Valor reembolsado
    amount DECIMAL(10,2) NOT NULL,

    -- Status
    status VARCHAR(30) NOT NULL,

    -- Relacionamento com despesas
    FOREIGN KEY (expense_id)
        REFERENCES expenses(id)
);