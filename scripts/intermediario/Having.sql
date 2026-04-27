-- começei a praticar o HAVING para filtrar os dados agrupados por um ou mais campos
--selecionar os 10 produtos mais vendidos com o total de vendas entre 162000 e 500000
SELECT top 10 ProductID, sum(LineTotal) as "total"
FROM Sales.SalesOrderDetail
group by ProductID
having sum(LineTotal) between 162000 and 500000
--selecionar os Nomes dos clientes que tem mais de 10 pessoas com o mesmo nome e que tem o título de "mr."
SELECT FirstName, count(FirstName) as "contagem "
FROM Person.Person
Where Title = 'mr.'
Group by FirstName
HAVING COUNT(FirstName) > 10
--selecionar as provincias que tem mais de 1000 endereços cadastrados
SELECT StateProvinceID, count(StateProvinceID) as "contagem de provincias"
FROM Person.Address
group by StateProvinceID
having count(StateProvinceID) > 1000
-- Conta funcionários por cargo, excluindo 'stocker' e ordenando pela contagem ascendente.
SELECT JobTitle, COUNT(JobTitle) as "contagem de trabalhos"
FROM HumanResources.Employee
WHERE JobTitle <> 'stocker'
GROUP BY JobTitle
ORDER BY COUNT(JobTitle) asc