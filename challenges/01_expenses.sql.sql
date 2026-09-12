/*Desafio 1 — Despesas aprovadas de alto valor 🟢

Regra de negócio: o setor financeiro precisa identificar todas as despesas aprovadas em agosto de 2026 cujo valor seja superior a R$ 500,00.

Sua consulta deve retornar:

Funcionário
Descrição da despesa
Valor
Data da despesa
Status*/

select 
	em.name,
	ex.description,
	ex.amount,
	ex.expense_date,
	ex.status
from expenses ex
	join employees em on em.id = ex.employee_id
	where ex.amount >= 500 
	and ex.expense_date >= '2026-08-01' 
	and ex.expense_date <= '2026-08-31' 
	and ex.status = 'APROVADA'
order by ex.amount desc;