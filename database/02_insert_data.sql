-- =====================================================
-- DEPARTAMENTOS
-- =====================================================

INSERT INTO departments (name)
VALUES
    ('Tecnologia'),
    ('Financeiro'),
    ('Comercial'),
    ('Recursos Humanos');


-- =====================================================
-- FUNCIONÁRIOS
-- =====================================================

INSERT INTO employees (
    name,
    job_title,
    salary,
    department_id
)
VALUES
    ('João Silva', 'Desenvolvedor', 6500.00, 1),
    ('Maria Santos', 'Analista de Suporte', 4200.00, 1),
    ('Carlos Oliveira', 'Analista Financeiro', 5200.00, 2),
    ('Ana Souza', 'Executiva de Vendas', 6000.00, 3),
    ('Lucas Pereira', 'Executivo de Vendas', 5800.00, 3),
    ('Juliana Costa', 'Analista de RH', 4500.00, 4),
    ('Rafael Lima', 'Tech Lead', 9500.00, 1),
    ('Fernanda Alves', 'Coordenadora Financeira', 8000.00, 2);


-- =====================================================
-- CATEGORIAS
-- =====================================================

INSERT INTO categories (name)
VALUES
    ('Hospedagem'),
    ('Alimentação'),
    ('Transporte'),
    ('Passagem aérea'),
    ('Material de escritório'),
    ('Treinamento');


-- =====================================================
-- DESPESAS
-- =====================================================

INSERT INTO expenses (
    employee_id,
    category_id,
    description,
    amount,
    expense_date,
    status
)
VALUES

    -- João
    (1, 1, 'Hotel São Paulo', 850.00, '2026-07-10', 'APROVADA'),
    (1, 2, 'Jantar com cliente', 180.00, '2026-07-10', 'APROVADA'),
    (1, 3, 'Uber aeroporto', 95.00, '2026-07-11', 'APROVADA'),

    -- Maria
    (2, 6, 'Curso PostgreSQL', 1200.00, '2026-08-05', 'APROVADA'),
    (2, 2, 'Almoço treinamento', 75.00, '2026-08-05', 'APROVADA'),

    -- Carlos
    (3, 5, 'Material escritório', 350.00, '2026-08-12', 'APROVADA'),
    (3, 2, 'Almoço reunião', 145.00, '2026-08-15', 'REJEITADA'),

    -- Ana
    (4, 4, 'Passagem Florianópolis SP', 1450.00, '2026-08-18', 'APROVADA'),
    (4, 1, 'Hotel reunião comercial', 980.00, '2026-08-18', 'APROVADA'),
    (4, 2, 'Jantar cliente', 320.00, '2026-08-19', 'APROVADA'),
    (4, 3, 'Táxi aeroporto', 130.00, '2026-08-19', 'APROVADA'),

    -- Lucas
    (5, 4, 'Passagem reunião cliente', 980.00, '2026-09-01', 'PENDENTE'),
    (5, 1, 'Hotel Curitiba', 650.00, '2026-09-02', 'PENDENTE'),
    (5, 2, 'Almoço cliente', 210.00, '2026-09-02', 'APROVADA'),

    -- Juliana
    (6, 6, 'Treinamento RH', 750.00, '2026-08-22', 'APROVADA'),

    -- Rafael
    (7, 4, 'Passagem conferência', 1800.00, '2026-07-25', 'APROVADA'),
    (7, 1, 'Hotel conferência', 1350.00, '2026-07-25', 'APROVADA'),
    (7, 2, 'Alimentação conferência', 450.00, '2026-07-26', 'APROVADA'),

    -- Fernanda
    (8, 3, 'Uber reunião', 85.00, '2026-08-30', 'APROVADA'),
    (8, 5, 'Material financeiro', 490.00, '2026-09-03', 'APROVADA');


-- =====================================================
-- REEMBOLSOS
-- =====================================================

INSERT INTO reimbursements (
    expense_id,
    reimbursement_date,
    amount,
    status
)
VALUES
    (1, '2026-07-15', 850.00, 'PAGO'),
    (2, '2026-07-15', 180.00, 'PAGO'),
    (3, '2026-07-15', 95.00, 'PAGO'),

    (4, '2026-08-10', 1200.00, 'PAGO'),
    (5, '2026-08-10', 75.00, 'PAGO'),

    (6, '2026-08-20', 350.00, 'PAGO'),

    (8, '2026-08-25', 1450.00, 'PAGO'),
    (9, '2026-08-25', 980.00, 'PAGO'),

    (10, NULL, 320.00, 'PENDENTE'),
    (11, NULL, 130.00, 'PENDENTE'),

    (14, NULL, 210.00, 'PENDENTE'),

    (15, '2026-08-30', 750.00, 'PAGO'),

    (16, '2026-08-02', 1800.00, 'PAGO'),
    (17, '2026-08-02', 1350.00, 'PAGO'),
    (18, '2026-08-02', 450.00, 'PAGO'),

    (19, NULL, 85.00, 'PENDENTE'),
    (20, NULL, 490.00, 'PENDENTE');