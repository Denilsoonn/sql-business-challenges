/*Desafio 4 — Gastos por departamento 🟠

Regra de negócio: a diretoria quer comparar quanto cada departamento gastou com despesas aprovadas durante 2026.

Retorne:

Departamento
Quantidade de funcionários que tiveram despesas
Quantidade de despesas
Total gasto
Média das despesas

Ordene pelo departamento que mais gastou.

Tabelas envolvidas:

departments
     ↓
employees
     ↓
expenses

Aqui você provavelmente utilizará:

SELECT
JOIN
WHERE
COUNT()
SUM()
AVG()
GROUP BY
ORDER BY

Atenção: na quantidade de funcionários, pense no que aconteceria se o mesmo funcionário tivesse 5 despesas. 
Queremos contar 5 funcionários ou apenas 1 funcionário diferente? Essa é uma pequena regra para você investigar.*/

SELECT 
    dp.name AS department,
    COUNT(DISTINCT ex.employee_id) AS employee_count,
    COUNT(ex.id) AS expenses_count,
    SUM(ex.amount) AS total_amount,
    AVG(ex.amount) AS average_amount

FROM expenses ex

JOIN employees em 
    ON em.id = ex.employee_id 

JOIN departments dp 
    ON dp.id = em.department_id

WHERE ex.status = 'APROVADA'
  AND ex.expense_date >= '2026-01-01'
  AND ex.expense_date < '2027-01-01'

GROUP BY dp.name

ORDER BY total_amount DESC;