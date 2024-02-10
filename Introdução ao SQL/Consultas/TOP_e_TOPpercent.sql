SELECT * FROM DimEmployee

SELECT
	FirstName,
	EmailAddress
	
FROM DimEmployee

--- Selecionar as 10 primeiras linhas da tabela
SELECT TOP(10) * FROM DimEmployee

--- Selecionar 10% das linhas da tabela
SELECT TOP(10) PERCENT * FROM DimCustomer

SELECT TOP(1000) * FROM FactSales