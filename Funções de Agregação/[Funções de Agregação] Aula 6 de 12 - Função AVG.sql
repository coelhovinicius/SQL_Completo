-- [SQL Server] Fun��es de Agrega��o
-- Aula 6 de 12: Fun��o AVG

-- 1. Fa�a uma consulta que retorna a m�dia de YearlyIncome (m�dia de sal�rio) da tabela DimCustomer.

-- SELECT * FROM DimCustomer

SELECT
	AVG(YearlyIncome) AS 'Media de Renda Anual dos Cliente'
FROM
	DimCustomer

