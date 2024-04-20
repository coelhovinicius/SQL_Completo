-- SELECT TOP(20) * FROM DimProduct

-- Maior valor de preco unitario por classe de produto
SELECT
	ClassName AS 'Classe de Produto',
	MAX(UnitPrice) AS 'Maior valor unitario'
FROM
	DimProduct
GROUP BY
	ClassName