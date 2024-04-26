-- FULL ALTER JOIN - Traz todas as informa��es de todas as tabelas
-- O que n�o � encontrado em uma ou outra tabela � apresentado como NULL
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria, -- Traz os valores NULL da outra tabela
	nome_subcategoria
FROM
	produtos -- Tabela � ESQUERDA - Tabla consultada
FULL JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
