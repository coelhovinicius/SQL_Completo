--SELECT TOP(20) * FROM DimProduct

SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Total por Marca'
FROM
	DimProduct
WHERE
	ClassName = 'Economy'		-- Filtragem da tabela original, antes do agrupamento
GROUP BY
	BrandName
HAVING
	COUNT(BrandName) >= 200		-- Filtragem da tabela gerada após o agrupamento