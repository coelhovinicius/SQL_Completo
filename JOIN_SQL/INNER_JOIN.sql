-- INNER JOIN - Traz os valores da interseção entre as tabelas --
-- Ignora todos os valores NULL
/*
-- Estrutura básica do INNER JOIN
SELECT
	Tabela_A.coluna_1,
	Tabela_A.coluna_2,
	Tabela_A.coluna_3,
	Tabela_B.coluna_4
FROM
	Tabela_A
INNER JOIN Tabela_B
	ON Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primaria*/

SELECT
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria,
	--subcategoria.id_subcategoria, -- Independente da tabela consultada para o id_subcategoria, o resultado será o mesmo
	subcategoria.nome_subcategoria
FROM
	produtos -- Tabela à ESQUERDA - Tabela consultada
INNER JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria