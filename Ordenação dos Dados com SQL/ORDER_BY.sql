-- Ordenação em ordem Crescente
SELECT TOP(100)
	*
FROM
	DimStore
ORDER BY
	EmployeeCount ASC -- Por padrão, a ordenação será ascendente

-- Ordenação em ordem Decrescente
SELECT TOP(100)
	*
FROM
	DimStore
ORDER BY
	EmployeeCount DESC -- Para ordenar de forma descendente, deve-se colocar o termo DESC