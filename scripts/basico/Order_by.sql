--primeiro aprendi COUNT para contar o numero de registros
 SELECT COUNT ( Size )
 FROM Production.Product 
 --depois TOP para limitar o numero de registros
  SELECT TOP 10 *
 FROM Production.Product;
 -- depois aprendi ORDER BY para ordenar os dados
  SELECT *
 FROM Person.Person
 ORDER BY FirstName asc;
-- outros exemplos de order by
--1- ordenar por nome e sobrenome, o nome em ordem crescente e o sobrenome em ordem decrescente
SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName asc, LastName desc;
--2- ordenar os produtos por preço do mais caro para o mais barato
SELECT TOP 10  ProductID
FROM Production.Product
ORDER BY ListPrice desc;  
--3- ordenar os produtos por id do mais baixo para o mais alto
SELECT TOP 4 name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc
--depois aprendi a usar o between para filtrar os dados entre um intervalo
--1- selecionar os produtos com preço entre 1000 e 1500
SELECT ListPrice
FROM Production.Product
WHERE ListPrice between 1000 and 1500;
--2- selecionar os produtos com preço fora do intervalo entre 1000 e 1500
 SELECT ListPrice
 FROM Production.Product
 WHERE ListPrice NOT between 1000 and 1500;  
--3- selecionar os produtos com data de criação entre 1 de janeiro de 2009 e 1 de janeiro de 2010
SELECT *
FROM HumanResources.Employeer
WHERE HireDate between '2009/01/01' AND '2010/01/01'
ORDER BY HireDate
-- depois aprendi a usar o IN para filtrar os dados por uma lista de valores
--1- selecionar os produtos com id 2,7,13
SELECT *
FROM Person.Person
where BusinessEntityID IN (2,7,13)
--depois aprendi a usar like para filtrar os dados por um padrão
--1- selecionar pessoas cujo nome começa com ovi
 SELECT *
 FROM Person.Person
WHERE FirstName like 'ovi%'
--2- selecionar pessoas que completa o nome com ro e tem uma letra depois do ro
SELECT *
FROM Person.Person
WHERE FirstName like '%ro_'
-- apos isso começei fazer exercicios com where, order by, between, in e like
--1 - selecionar os produtos com preço maior que 1500 
SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice > 1500 
--2- selecionar pessoas com sobrenome que começa com a letra p
SELECT COUNT (lastName)
FROM Person.Person
WHERE LastName like 'p%'
--3- selecionar cidades distintas do banco de dados e contar quantas cidades distintas existem
 SELECT  DISTINCT city
 FROM Person.Address
 ORDER BY city

SELECT COUNT (DISTINCT city)
FROM Person.Address
GROUP BY city
--4- selecionar os produtos com preço entre 500 e 1000 e cor vermelha
 SELECT COUNT (*)
 FROM Production.Product
 WHERE ListPrice between 500 and 1000 and Color = 'red'
--5- selecionar os produtos com nome que contém a palavra road
SELECT COUNT (*) 
FROM Production.Product
WHERE Name LIKE '%road%'
--alem de um pouco de agregação 
SELECT TOP 10 *
FROM Sales.SalesOrderDetail