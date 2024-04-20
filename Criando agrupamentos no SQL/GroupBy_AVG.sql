-- SELECT TOP(20) * FROM DimProduct

-- Calcular a média de custo dos produtos de acordo com cada marca
SELECT
	BrandName AS 'Marca',
	AVG(UnitCost) AS 'Custo medio unitario'
FROM
	DimProduct
GROUP BY
	BrandName