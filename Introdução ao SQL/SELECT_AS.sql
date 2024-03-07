-- Comando AS - Renomeando os nomes das colunas para exibição (aliassign) - Não altera a tabela original

-- Selecione as 3 colunas da tabela DimProduct: ProductName, BrandName e ColorName
SELECT
	ProductName AS 'Produto',
	BrandName AS 'Marca',
	ColorName AS 'Cor'
FROM
	DimProduct

SELECT * FROM DimProduct