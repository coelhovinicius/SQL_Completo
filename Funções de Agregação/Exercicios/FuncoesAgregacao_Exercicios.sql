/*1. O gerente comercial pediu a voc� uma an�lise da Quantidade Vendida e Quantidade Devolvida para o canal de venda mais importante da empresa: Store.
Utilize uma fun��o SQL para fazer essas consultas no seu banco de dados. Obs: Fa�a essa an�lise considerando a tabela FactSales.*/

SELECT TOP(20) * FROM FactSales
SELECT TOP(20) * FROM DimChannel

SELECT
	SUM(SalesQuantity) AS 'Qtde Vendida',
	SUM(ReturnQuantity) AS 'Qtde Devolvida'
FROM
	FactSales
WHERE
	channelKey = 1

/*2. Uma nova a��o no setor de Marketing precisar� avaliar a m�dia salarial de todos os clientes da empresa, mas apenas de ocupa��o Professional. Utilize um comando SQL para atingir esse resultado.*/

SELECT TOP (20) * FROM DimCustomer

SELECT
	AVG(YearlyIncome) AS 'Media Salarial Anual'
FROM
	DimCustomer
WHERE
	Occupation = 'Professional'


/*3. Voc� precisar� fazer uma an�lise da quantidade de funcion�rios das lojas registradas na empresa. O seu gerente te pediu os seguintes n�meros e informa��es:
a) Quantos funcion�rios tem a loja com mais funcion�rios?
b) Qual � o nome dessa loja?
c) Quantos funcion�rios tem a loja com menos funcion�rios?
d) Qual � o nome dessa loja?*/

SELECT TOP (20) * FROM DimStore

-- a)
SELECT
	MAX(EmployeeCount) AS 'Qtde Maxima de Funcionarios'
FROM
	DimStore

-- b)
SELECT
	TOP(1)
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Numero de Funcionarios'
FROM
	DimStore
ORDER BY
	EmployeeCount DESC

-- c)
SELECT
	MIN(EmployeeCount) AS 'Qtde Minima de Funcionarios'
FROM
	DimStore 

-- d)
SELECT
	TOP(1)
	StoreName AS 'Nome da Loja',
	EmployeeCount AS 'Numero de Funcionarios'
FROM
	DimStore
WHERE
	EmployeeCount IS NOT NULL
ORDER BY
	EmployeeCount ASC


/*4. A �rea de RH est� com uma nova a��o para a empresa, e para isso precisa saber a quantidade total de funcion�rios do sexo Masculino e do sexo Feminino.
a) Descubra essas duas informa��es utilizando o SQL.
b) O funcion�rio e a funcion�ria mais antigos receber�o uma homenagem. Descubra as seguintes informa��es de cada um deles: Nome, E-mail, Data de Contrata��o.*/

SELECT TOP (20) * FROM DimEmployee

-- a)
-- MASCULINO
SELECT
	COUNT(Gender) AS 'Qtde Masculino'
FROM
	DimEmployee
WHERE
	Gender = 'M'

-- FEMININO
SELECT
	COUNT(Gender) AS 'Qtde Feminino'
FROM
	DimEmployee
WHERE
	Gender = 'F'

-- b) NOME EMAIL DATA DE CONTRATACAO DOS MAIS ANTIGOS MASCULINO E FEMININO
SELECT MIN(HireDate) FROM DimEmployee WHERE Gender = 'M'
SELECT MIN(HireDate) FROM DimEmployee WHERE Gender = 'F'

-- MASCULINO
SELECT
	TOP(1)
	FirstName AS 'Nome',
	EmailAddress AS 'E-mail',
	HireDate AS 'Data de Contratacao',
	Gender AS 'Genero'
FROM
	DimEmployee
WHERE
	Gender = 'M'
ORDER BY
	HireDate ASC

-- FEMININO
SELECT
	TOP(1)
	FirstName AS 'Nome',
	EmailAddress AS 'E-mail',
	HireDate AS 'Data de Contratacao',
	Gender AS 'Genero'
FROM
	DimEmployee
WHERE
	Gender = 'F'
ORDER BY
	HireDate ASC

/*5. Agora voc� precisa fazer uma an�lise dos produtos. Ser� necess�rio descobrir as seguintes informa��es:
a) Quantidade distinta de cores de produtos.
b) Quantidade distinta de marcas
c) Quantidade distinta de classes de produto
Para simplificar, voc� pode fazer isso em uma mesma consulta.*/
SELECT TOP(20) * FROM DimProduct

SELECT
	COUNT(DISTINCT ColorName) AS 'Qtde Cores Distintas',
	COUNT(DISTINCT BrandName) AS 'Qtde Marcas Distintas',
	COUNT(DISTINCT ClassName) AS 'Qtde Classes de Produtos Distintas'
FROM
	DimProduct
