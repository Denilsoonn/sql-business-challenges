/*Desafio 3 — Categorias com maiores gastos 🟡

Regra de negócio: o financeiro quer identificar quais categorias representam os maiores gastos da empresa.

Considere somente despesas com:

status = APROVADA

Retorne:

Categoria
Quantidade de despesas
Total gasto
Valor médio das despesas

Ordene da categoria com maior gasto total para a menor.

Aqui você precisará principalmente de:

JOIN
WHERE
COUNT()
SUM()
AVG()
GROUP BY
ORDER BY*/

select 
	ct.name AS category,
	COUNT(ex.id) AS expense_count,
	SUM(ex.amount) AS total_amount,
	AVG(ex.amount) AS average_amount
from expenses ex
	join categories ct on ct.id = ex.category_id
where ex.status = 'APROVADA'
group by ct.name
order by sum(amount) desc