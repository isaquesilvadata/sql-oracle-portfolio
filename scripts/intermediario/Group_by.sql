--começei os estdos de SQL aprendendo a usar o GROUP BY para agrupar os dados por um ou mais campos
--selecionar o id da oferta especial e a soma do preço unitário agrupados por id da oferta especial 
SELECT SpecialOfferID, sum(UnitPrice) as "soma"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
--selecionar o id do produto e a quantidade de vezes que ele aparece na tabela de detalhes do pedido agrupados por id do produto 
SELECT ProductID, COUNT(ProductID) as "quantidade"
FROM Sales.SalesOrderDetail
GROUP BY ProductID;
--selecionar a quantidade de pessoas com o mesmo nome agrupados por nome e ordenados por nome em ordem crescente
SELECT FirstName, count(FirstName) as "quantidade"
FROM Person.Person
GROUP BY FirstName
ORDER BY FirstName asc
--selecionar a cor e a média do preço agrupados por cor e filtrados por cor prata
SELECT Color , avg (ListPrice) as "media de pratas"
FROM Production.Product
WHERE color = 'silver'
GROUP BY Color 
--selecionar a quantidade de nomes middle 
SELECT MiddleName, count(MiddleName) as "quantidade"
FROM Person.Person
GROUP BY MiddleName 
--selecionar quantos produtos em media cada produto é vendido
SELECT ProductID, avg (OrderQty) as "media de quantidade de produtos"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
--selecionar as 10 vendas que no total mais venderam na loja 
SELECT TOP 10 ProductID, sum (LineTotal) as "os mais vendidos"
FROM Sales.SalesOrderDetail
GROUP BY productid 
ORDER BY sum(LineTotal) DESC;
--selecionar quantos produtos e qual a quantidade media de produtos são cadastrados nos chamados "workorder"(ordem de serviço)
SELECT ProductID, COUNT(ProductID) as "quantidade", avg(OrderQty) as "media" 
FROM Production.WorkOrder
GROUP BY ProductID
--selecionar a media de preços por cor
 SELECT color, avg (ListPrice) as "media de preços"
 FROM Production.Product
 GROUP BY color 
--selecionar a quantidade de funcionarios por cargo
SELECT JobTitle, count(JobTitle) as "quantidade de funcionarios"
FROM HumanResources.Employee
GROUP BY JobTitle
