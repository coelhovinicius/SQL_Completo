-- [SQL Server] Fun��es de Agrega��o
-- Aula 4 de 12: Fun��o COUNT mais DISTINCT

-- 1. Fa�a uma consulta que retorna a contagem distinta das marcas dos produtos

SELECT
	COUNT(DISTINCT ColorName) AS 'Qtde Cores Distintas',
	COUNT(DISTINCT BrandName) AS 'Qtde Marcas Distintas'
FROM
	DimProduct

