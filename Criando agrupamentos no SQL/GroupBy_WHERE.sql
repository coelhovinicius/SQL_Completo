--SELECT TOP(20) * FROM DimProduct

-- Verificar a quantidade de produtos de acordo com a cor
SELECT
	ColorName AS 'Cor do Produto',
	COUNT(*) AS 'Total de Produtos'
FROM
	DimProduct
WHERE
	BrandName = 'Contoso'
GROUP BY
	ColorName
ORDER BY 
	COUNT(*) DESC -- ou ASC