-- JOIN --
/*
-- Estrutura b�sica de um INNER JOIN
SELECT
	Tabela_A.coluna_1,
	Tabela_A.coluna_2,
	Tabela_B.coluna_1,
	Tabela_B.coluna_2
FROM
	Tabela_A
INNER JOIN Tabela_B
	ON Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primaria*/

-- Criando uma tabela "produtos":
CREATE TABLE produtos(
	id_produto int,
	nome_produto varchar(30),
	id_subcategoria int
)

-- Inserindo informa��es � tabela "produtos":
INSERT INTO
	produtos(id_produto, nome_produto, id_subcategoria)
VALUES
	(1, 'Fone Bluetooth JBL', 5),
	(2, 'PS4', 6),
	(3, 'Notebook Samsung i3', 2),
	(4, 'iPhone 11', 1),
	(5, 'Moto G9', 1)

SELECT * FROM produtos

-- Criando uma tabela "subcategoria":
CREATE TABLE subcategoria(
id_subcategoria int,
nome_subcategoria varchar(30))

-- Inserindo dados � tabela "subcategoria":
INSERT INTO subcategoria(id_subcategoria, nome_subcategoria)
VALUES
	(1, 'Celular'),
	(2, 'Notebook'),
	(3, 'C�mera Digital'),
	(4, 'Televis�o'),
	(5, 'Fone de Ouvido')

SELECT * FROM subcategoria

-- Consulta com INNER JOIN:
SELECT
	produtos.id_produto AS 'ID Produto',
	produtos.nome_produto AS 'Nome do Produto',
	subcategoria.id_subcategoria AS 'ID Subcategoria',
	subcategoria.nome_subcategoria AS 'Nome da Subcategoria'
FROM
	produtos
INNER JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria


/*SELECT TOP(100) * FROM FactSales
SELECT * FROM DimProduct

-- Quantidade vendida por canal da tabela FactSales --
SELECT
	channelKey,
	SUM(SalesQuantity) AS 'Qtd Vendida'
FROM
	FactSales
GROUP BY
	channelKey*/

