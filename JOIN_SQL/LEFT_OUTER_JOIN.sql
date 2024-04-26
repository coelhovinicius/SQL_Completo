-- LEFT OUTER JOIN - Traz toda a tabela � esquerda mais as informa��es da tabela da direita dentro da interse��o --
-- Apresenta os valores NULL, dependendo da consulta
--SELECT * FROM produtos
--SELECT * FROM subcategoria

SELECT
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria, -- Ignora os NULL da tabela consultada com o FROM e traz, somente, os valores NULL da outra tabela
	--subcategoria.id_subcategoria, -- Traz todos os valores NULL, de ambas tabelas
	subcategoria.nome_subcategoria
FROM
	produtos -- Tabela � ESQUERDA - Tabela consultada
LEFT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria

