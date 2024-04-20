-- SELECT TOP(20) * FROM DimProduct

-- Contagem da quantidade de produtos que cada loja possui
SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Qtde Total'
FROM
	DimProduct
GROUP BY
	BrandName