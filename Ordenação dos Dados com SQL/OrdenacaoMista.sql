--- Ordenação mista
SELECT TOP(100)
	ProductName
	UnitCost,
	Weight
FROM
	DimProduct
ORDER BY
	UnitCost DESC,
	Weight DESC
