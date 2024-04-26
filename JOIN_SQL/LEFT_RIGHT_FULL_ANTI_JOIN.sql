-- LEFT ANTI JOIN -- Todos os valores NULL da tabela à direita
-- Retorna todos os valores da tabela à esquerda que não aparecem na tabela à direita
-- Apresenta os valores da tabela à esquerda que não constam na tabela à direita
SELECT
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria, -- Ignora os NULL da tabela à esquerda e traz, somente, os valores NULL da tabela à direita
	--subcategoria.id_subcategoria, -- Traz NULL para todos os valores que não constem de ambas tabelas
	subcategoria.nome_subcategoria
FROM
	produtos -- Tabela à ESQUERDA - Tabela consultada
LEFT JOIN subcategoria -- 
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	nome_subcategoria IS NULL


-- RIGHT ANTI JOIN -- Todos os valores NULL da tabela à esquerda
-- Retorna todos os valores da tabela à direita que não aparecem na tabela à esquerda
-- Apresenta os valores da tabela à direita que não constam na tabela à esquerda
SELECT
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria, -- Ignora os NULL da tabela à esquerda e traz, somente, os valores NULL da tabela à direita
	--subcategoria.id_subcategoria, -- Traz todos os valores NULL, de ambas tabelas
	subcategoria.nome_subcategoria
FROM
	produtos -- Tabela à ESQUERDA - Tabela consultada
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	id_produto IS NULL

-- FULL ANTI JOIN --
-- Ignora os valores que estão na interseção das tabelas
-- Traz todos os valores que constam, somente, em uma ou outra tabela
SELECT
	id_produto,
	nome_produto,
	produtos.id_subcategoria,
	nome_subcategoria
FROM
	produtos -- Tabela à ESQUERDA - Tabla consultada
FULL JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
WHERE
	id_produto IS NULL
OR
	nome_subcategoria IS NULL