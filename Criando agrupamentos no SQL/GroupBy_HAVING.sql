--SELECT TOP(20) * FROM DimProduct

-- Agrupamento da quantidade de produtos de acordo com a marca, com outras condi��es de filtro
SELECT
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Total por Marca'
FROM
	DimProduct
GROUP BY
	BrandName
HAVING
	COUNT(BrandName) >= 200		--Permite incluir condi��es ap�s o agrupamento