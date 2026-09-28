/*Desafio 2 — Gastos por funcionário 🟡

Regra de negócio: a diretoria quer descobrir quanto cada funcionário gastou considerando somente despesas aprovadas.

Sua consulta deve retornar:

Funcionário
Departamento
Quantidade de despesas
Total gasto

Ordene pelo funcionário com maior gasto total.

Tabelas envolvidas:

employees
departments
expenses

Conceitos esperados:

SELECT
FROM
JOIN
WHERE
COUNT()
SUM()
GROUP BY
ORDER BY*/

select
	em.name,
	dp.name,
	count(amount) as quantity,
	sum(amount)
from expenses ex
	join employees em on em.id = ex.employee_id
	join departments dp on dp.id = em.department_id
where ex.status = 'APROVADA' 
group by em.name, dp.name