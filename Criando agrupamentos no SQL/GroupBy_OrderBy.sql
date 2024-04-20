--SELECT TOP(20) * FROM DimStore

-- Verificar a quantidade de funcionários por tipo de loja e ordenar pela quantidade de funcionários
SELECT
	StoreType AS 'Tipo de Loja',
	SUM(EmployeeCount) AS 'Qtde Funcionarios'
FROM
	DimStore
GROUP BY
	StoreType
ORDER BY
	SUM(EmployeeCount) DESC --ou ASC