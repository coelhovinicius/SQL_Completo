/*MÓDULO 6: EXERCÍCIOS
Os exercícios abaixo estão divididos de acordo com uma determinada tabela do Banco de Dados.*/

--FACTSALES
SELECT TOP(20) * FROM FactSales

/*1.
a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas (channelkey).*/
SELECT
	channelKey AS 'Canal de Venda',
	SUM(SalesQuantity) AS 'Qtde Vendida'
FROM
	FactSales
GROUP BY
	channelKey
ORDER BY
	SUM(SalesQuantity) DESC

/*b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).*/
SELECT
	StoreKey AS 'ID Lojas',
	SUM(SalesQuantity) AS 'Qtde Vendida',
	SUM(ReturnQuantity) AS 'Qtde Devolvida'
FROM	
	FactSales
GROUP BY
	StoreKey
ORDER BY
	StoreKey ASC

/*c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas para o ano de 2007.*/
SELECT
	channelKey AS 'Canal de Vendas',
	SUM(SalesAmount) AS 'Total Vendido em 2007'
FROM
	FactSales
WHERE
	YEAR(DateKey) = 2007
	/*DateKey
BETWEEN
	'20070101'
AND
	'20071231'*/
GROUP BY
	channelKey
ORDER BY
	channelKey ASC


/*2. Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor total vendido (SalesAmount) por produto (ProductKey).

a) A tabela final deverá estar ordenada de acordo com a quantidade vendida e, além disso, mostrar apenas os produtos que tiveram um resultado final de vendas maior do que $5.000.000.*/
SELECT
	ProductKey AS 'Codigo do Produto',
	SUM(SalesAmount) AS 'Total Vendido'
FROM
	FactSales
GROUP BY
	ProductKey
HAVING
	SUM(SalesAmount) > 5000000.0000
ORDER BY
	SUM(SalesAmount) ASC

/*b) Faça uma adaptação no exercício anterior e mostre os Top 10 produtos com mais vendas. Desconsidere o filtro de $5.000.000 aplicado.*/
SELECT 
	TOP(10)
	ProductKey AS 'Codigo do Produto',
	SUM(SalesAmount) AS 'Valor Total Vendido'
FROM
	FactSales
GROUP BY
	ProductKey
ORDER BY
	SUM(SalesAmount) DESC


/*FACTONLINESALES
3.
a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID (CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).*/
SELECT TOP(10) * FROM FactOnlineSales

SELECT
	TOP(1)
	CustomerKey AS 'Codigo do Cliente',
	SUM(SalesQuantity) AS 'Quantidade de Compras'
FROM 
	FactOnlineSales
GROUP BY
	CustomerKey
ORDER BY
	SUM(SalesQuantity) DESC

/*b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).*/
SELECT
	TOP(3)
	CustomerKey AS 'Codigo do Cliente',	
	ProductKey AS 'Codigo do Produto',
	SUM(SalesQuantity) AS 'Quantidade de Compras'
FROM 
	FactOnlineSales
WHERE
	CustomerKey = 19037
GROUP BY
	ProductKey,
	CustomerKey
ORDER BY
	SUM(SalesQuantity) DESC


/*DIMPRODUCT
4. 
a) Faça um agrupamento e descubra a quantidade total de produtos por marca.*/
SELECT TOP(100) * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Qtde Produtos'
FROM
	DimProduct
GROUP BY
	BrandName
ORDER BY
	COUNT(DISTINCT ProductKey) DESC

/*b) Determine a média do preço unitário (UnitPrice) para cada ClassName.*/
SELECT
	ClassName AS 'Classe de Produto',
	AVG(UnitPrice) AS 'Media de Precos'
FROM
	DimProduct
GROUP BY
	ClassName
ORDER BY
	AVG(UnitPrice) DESC

/*c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui.*/
SELECT
	ColorName AS 'Cor',
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
GROUP BY
	ColorName
ORDER BY
	SUM(Weight) DESC


/*5. Você deverá descobrir o peso total para cada tipo de produto (StockTypeName).
A tabela final deve considerar apenas a marca ‘Contoso’ e ter os seus valores classificados em ordem decrescente.*/
SELECT
	StockTypeName AS 'Tipo de Produto',
	SUM(Weight) AS 'Peso Total',
	BrandName AS 'Marca'
FROM
	DimProduct
WHERE
	BrandName = 'Contoso'
GROUP BY
	StockTypeName,
	BrandName
ORDER BY
	SUM(Weight) DESC


/*6. Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as 16 opções de cores?*/
SELECT
	BrandName AS 'Marcas',
	COUNT(DISTINCT ColorName) AS 'Qtde Cores Distintas'
FROM
	DimProduct
GROUP BY
	BrandName
/*HAVING
	COUNT(DISTINCT ColorName) = 16*/
ORDER BY
	COUNT(DISTINCT ColorName)

SELECT
	DISTINCT ColorName
FROM
	DimProduct
WHERE
	BrandName = 'The Phone Company'


/*DIMCUSTOMER
7. Faça um agrupamento para saber o total de clientes de acordo com o Sexo e também a média salarial de acordo com o Sexo. Corrija qualquer resultado “inesperado” com os seus conhecimentos em SQL.*/
SELECT TOP(100) * FROM DimCustomer

SELECT
	Gender AS 'Sexo',
	COUNT(Gender) AS 'Qtd Clientes',
	AVG(YearlyIncome) AS 'Media Salarial'
FROM
	DimCustomer
WHERE
	Gender IS NOT NULL
GROUP BY
	Gender
ORDER BY
	AVG(YearlyIncome) DESC

/*8. Faça um agrupamento para descobrir a quantidade total de clientes e a média salarial de acordo com o seu nível escolar. Utilize a coluna Education da tabela DimCustomer para fazer esse agrupamento.*/
SELECT TOP(100) * FROM DimCustomer

SELECT
	Education AS 'Nivel Escolar',
	COUNT(Education) AS 'Qtd de Clientes',
	AVG(YearlyIncome) AS 'Media Salarial'
FROM
	DimCustomer
WHERE
	Education IS NOT NULL
GROUP BY
	Education
ORDER BY
	AVG(YearlyIncome) DESC


/*DIMEMPLOYEE
9. Faça uma tabela resumo mostrando a quantidade total de funcionários de acordo com o Departamento (DepartmentName). Importante: Você deverá considerar apenas os funcionários ativos.*/
SELECT TOP(1000) * FROM DimEmployee

SELECT
	DepartmentName AS 'Departamento',
	COUNT(DepartmentName) AS 'Qtd Funcionarios'
FROM
	DimEmployee
WHERE/*
	Status = 'Current'
AND*/
	EndDate IS NULL
GROUP BY
	DepartmentName
ORDER BY
	COUNT(DISTINCT EmployeeKey) DESC

/*10. Faça uma tabela resumo mostrando o total de VacationHours para cada cargo (Title). Você deve considerar apenas as mulheres, dos departamentos de Production, Marketing, Engineering e Finance, para os funcionários contratados entre os anos de 1999 e 2000.*/
SELECT TOP(1000) * FROM DimEmployee

SELECT 
	Title AS 'Cargo',
	DepartmentName AS 'Departamento',
	Gender AS 'Sexo',
	SUM(VacationHours) AS 'Total de Horas de Ferias'
FROM
	DimEmployee
WHERE
	Gender = 'F'
AND
	DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance')
AND
	HireDate
BETWEEN
	'1999-01-01'
AND
	'2000-12-31'

GROUP BY
	Title,
	DepartmentName,
	Gender
ORDER BY
	SUM(VacationHours) DESC