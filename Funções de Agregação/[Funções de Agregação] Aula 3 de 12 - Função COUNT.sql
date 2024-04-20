-- [SQL Server] Funções de Agregação
-- Aula 3 de 12: Função COUNT

-- SELECT * FROM DimProduct

SELECT
	COUNT(*) AS 'Qtde Produtos'
FROM
	DimProduct

-- 1. Faça uma consulta que retorna a contagem total de produtos. Considere a coluna ProductName para este cálculo

SELECT
	COUNT(ProductName) AS 'Qtde Produtos'
FROM
	DimProduct


-- 2. Faça uma consulta que retorna a contagem total de produtos. Considere a coluna Size para este cálculo

SELECT
	COUNT(Size) AS 'Qtde de Tamanhos'
FROM
	DimProduct


-- Obs: A função COUNT não conta valores nulos da coluna, então tome cuidado com o resultado que você espera.