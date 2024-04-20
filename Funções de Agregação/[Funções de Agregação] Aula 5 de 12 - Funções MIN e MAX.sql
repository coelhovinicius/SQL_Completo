-- [SQL Server] Fun��es de Agrega��o
-- Aula 5 de 12: Fun��es MIN e MAX

-- 1. Fa�a uma consulta que retorna os valores m�ximo e m�nimo de UnitCost.

-- SELECT * FROM DimProduct

SELECT 
	MIN(UnitCost) AS 'Menor Custo',
	MAX(UnitCost) AS 'Maior Custo',
		MIN(UnitPrice) AS 'Menor Valor',
	MAX(UnitPrice) AS 'Maior Valor'
FROM
	DimProduct