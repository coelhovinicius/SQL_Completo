-- [SQL Server] Fun��es de Agrega��o
-- Aula 3 de 12: Fun��o COUNT

-- SELECT * FROM DimProduct

SELECT
	COUNT(*) AS 'Qtde Produtos'
FROM
	DimProduct

-- 1. Fa�a uma consulta que retorna a contagem total de produtos. Considere a coluna ProductName para este c�lculo

SELECT
	COUNT(ProductName) AS 'Qtde Produtos'
FROM
	DimProduct


-- 2. Fa�a uma consulta que retorna a contagem total de produtos. Considere a coluna Size para este c�lculo

SELECT
	COUNT(Size) AS 'Qtde de Tamanhos'
FROM
	DimProduct


-- Obs: A fun��o COUNT n�o conta valores nulos da coluna, ent�o tome cuidado com o resultado que voc� espera.