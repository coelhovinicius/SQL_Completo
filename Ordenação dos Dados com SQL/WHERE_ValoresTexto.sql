-- WHERE para Textos

/*SELECT DISTINCT
	BrandName
FROM
	DimProduct*/

SELECT
	*
FROM
	DimProduct
WHERE
	BrandName = 'Fabrikam'
/*AND
	ColorName = 'Black'*/