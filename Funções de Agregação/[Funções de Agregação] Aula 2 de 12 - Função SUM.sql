-- [SQL Server] Fun��es de Agrega��o
-- Aula 2 de 12: Fun��o SUM

-- 1. Fa�a uma consulta que retorna a soma total de SalesQuantity e a soma total de ReturnQuantity.

/*SELECT
	TOP(100) *
FROM
	FactSales*/

SELECT
	SUM(SalesQuantity) AS 'Total de Vendas',
	SUM(ReturnQuantity) AS 'Total de Devolucoes'
FROM
	FactSales

/*SELECT
	SUM(SalesQuantity) AS 'Total Vendido',
	SUM(ReturnQuantity) AS 'Total Devolvido'
FROM
	FactSales*/