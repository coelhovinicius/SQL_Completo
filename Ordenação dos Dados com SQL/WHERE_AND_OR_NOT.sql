-- WHERE com operadores lógicos AND, OR e NOT
-- AND para atender a todas as condições
-- OR  para atender a, pelo menos, uma das condições
-- NOT para não atender a alguma condição específica

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