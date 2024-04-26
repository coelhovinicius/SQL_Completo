-- RIGHT OUTER JOIN - Traz toda a tabela à direita mais as informações da tabela da esquerda dentro da interseção --

SELECT
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria, -- Traz todos os valores NULL, de ambas tabelas
	--subcategoria.id_subcategoria, -- Traz, somente, os valores NULL da tabela consultada com o FROM e ignora os NULL da outra tabela
	subcategoria.nome_subcategoria
FROM
	produtos
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria