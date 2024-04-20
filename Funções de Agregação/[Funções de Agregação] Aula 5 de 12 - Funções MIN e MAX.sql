-- [SQL Server] Funções de Agregação
-- Aula 5 de 12: Funções MIN e MAX

-- 1. Faça uma consulta que retorna os valores máximo e mínimo de UnitCost.

-- SELECT * FROM DimProduct

SELECT 
	MIN(UnitCost) AS 'Menor Custo',
	MAX(UnitCost) AS 'Maior Custo',
		MIN(UnitPrice) AS 'Menor Valor',
	MAX(UnitPrice) AS 'Maior Valor'
FROM
	DimProduct