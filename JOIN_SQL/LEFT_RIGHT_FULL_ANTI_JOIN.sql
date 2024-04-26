-- LEFT ANTI JOIN -- Todos os valores NULL da tabela � direita
-- Retorna todos os valores da tabela � esquerda que n�o aparecem na tabela � direita
-- Apresenta os valores da tabela � esquerda que n�o constam na tabela � direita
SELECT
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria, -- Ignora os NULL da tabela � esquerda e traz, somente, os valores NULL da tabela � direita
	--subcategoria.id_subcategoria, -- Traz NULL para todos os valores que n�o constem de ambas tabelas
	subcategoria.nome_subcategoria
FROM
	produtos -- Tabela � ESQUERDA - Tabela consultada
LEFT JOIN subcategoria -- 
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	nome_subcategoria IS NULL


-- RIGHT ANTI JOIN -- Todos os valores NULL da tabela � esquerda
-- Retorna todos os valores da tabela � direita que n�o aparecem na tabela � esquerda
-- Apresenta os valores da tabela � direita que n�o constam na tabela � esquerda
SELECT
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria, -- Ignora os NULL da tabela � esquerda e traz, somente, os valores NULL da tabela � direita
	--subcategoria.id_subcategoria, -- Traz todos os valores NULL, de ambas tabelas
	subcategoria.nome_subcategoria
FROM
	produtos -- Tabela � ESQUERDA - Tabela consultada
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	id_produto IS NULL

-- FULL ANTI JOIN --
-- Ignora os valores que est�o na interse��o das tabelas
-- Traz todos os valores que constam, somente, em uma ou outra tabela
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos -- Tabela � ESQUERDA - Tabla consultada
FULL JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	id_produto IS NULL
OR
	nome_subcategoria IS NULL