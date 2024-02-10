-- WHERE para Valores Numéricos

-- Ordenar os produtos em ordem decrescente com preço unitário maior que 1000
SELECT
	ProductName AS 'Produto',
	UnitPrice AS 'Preço'
FROM
	DimProduct
WHERE
	UnitPrice > 1000
ORDER BY
	UnitPrice DESC