-- Ordena��o em ordem Crescente
SELECT TOP(100)
	*
FROM
	DimStore
ORDER BY
	EmployeeCount ASC -- Por padr�o, a ordena��o ser� ascendente

-- Ordena��o em ordem Decrescente
SELECT TOP(100)
	*
FROM
	DimStore
ORDER BY
	EmployeeCount DESC -- Para ordenar de forma descendente, deve-se colocar o termo DESC