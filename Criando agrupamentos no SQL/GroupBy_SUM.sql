-- SELECT TOP(20) * FROM DimStore

-- Contagem de quantidade de funcion�rios que cada tipo de loja possui
SELECT
	StoreType AS 'Tipo de Loja',
	SUM(EmployeeCount) AS 'Qtde Funcionarios'
FROM
	DimStore
GROUP BY
	StoreType