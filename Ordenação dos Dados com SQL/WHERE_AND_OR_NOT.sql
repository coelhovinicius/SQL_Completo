-- WHERE com operadores l�gicos AND, OR e NOT
-- AND para atender a todas as condi��es
-- OR  para atender a, pelo menos, uma das condi��es
-- NOT para n�o atender a alguma condi��o espec�fica

SELECT
	*
FROM
	DimProduct
WHERE
	BrandName = 'Fabrikam'
AND
	ColorName = 'Black'

----------------------------------------------------------------------------

SELECT 
	*
FROM
	DimProduct
WHERE
	BrandName = 'Contoso'
OR
	BrandName = 'Fabrikam'

----------------------------------------------------------------------------

SELECT
	*
FROM
	DimEmployee
WHERE NOT
	DepartmentName = 'Marketing'