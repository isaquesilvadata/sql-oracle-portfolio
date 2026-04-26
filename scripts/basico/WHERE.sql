--primeiro select com where para filtrar os dados
SELECT *
FROM Production.Product
WHERE Color = 'blue'or Color = 'black'; 
-- outros exemplos de select com where
 SELECT *
 FRom Production.Product
 WHERE ListPrice > 1500 and ListPrice < 5000;

  SELECT *
 FROM Production.Product
 WHERE Color <> 'red';

--exercicios com where 
--1- Selecione os produtos que tem o peso entre 500 e 700
 SELECT *
 FROM Production.Product
 WHERE Weight > 500 and Weight < 700;
--2- Selecione os empregados que são casados e recebem salário 
SELECT *
FROM HumanResources.Employee
WHERE  Employee.MaritalStatus = 'm'and Employee.SalariedFlag= '1';
-- 3- encontrar peter krebs
 SELECT *
 FROM Person.Person
 WHERE Person.FirstName = 'peter' and Person.LastName = 'krebs'



