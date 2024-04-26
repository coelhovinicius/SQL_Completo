-- FULL ALTER JOIN - Traz todas as informações de todas as tabelas
-- O que não é encontrado em uma ou outra tabela é apresentado como NULL
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria, -- Traz os valores NULL da outra tabela
	nome_subcategoria
FROM
	produtos -- Tabela à ESQUERDA - Tabla consultada
FULL JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
