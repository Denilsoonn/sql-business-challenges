/*Desafio 5 — Análise de gastos com viagens 🔴

Regra de negócio: a empresa quer descobrir quais funcionários estão gerando os maiores custos com viagens corporativas.

Considere como despesas de viagem somente:

Hospedagem
Alimentação
Transporte
Passagem aérea

E considere somente despesas aprovadas.

Sua consulta deve retornar:

Funcionário
Departamento
Quantidade de despesas de viagem
Total gasto em viagens
Média por despesa

Ordene pelo funcionário com maior gasto total em viagens.

Aqui você terá que relacionar 4 tabelas:

departments
     ↓
employees
     ↓
expenses
     ↓
categories

E utilizar vários dos conceitos que estamos estudando:

SELECT
FROM
JOIN
WHERE
COUNT()
SUM()
AVG()
GROUP BY
ORDER BY

Comece pelo Desafio 1 sem olhar uma solução pronta. Escreva a consulta do jeito que você acredita estar correto e me envie. 
Mesmo que dê erro, é melhor para o aprendizado: eu vou analisar sua consulta linha por linha e explicar o que cada parte está fazendo.*/

select 
	em.name as employee_name,
	dp.name as department_name,
	count(ex.id) as expenses_quantity,
	sum(ex.amount) as total_amount,
	avg(ex.amount) as average_amount
from expenses ex 
	join employees em on em.id = ex.employee_id
	join departments dp on dp.id = em.department_id
	JOIN categories ct ON ct.id = ex.category_id
where ex.status = 'APROVADA' and ct.name in ('Hospedagem', 'Alimentação', 'Transporte', 'Passagem aérea') 
group by dp.name, employee_name 
order by total_amount desc;