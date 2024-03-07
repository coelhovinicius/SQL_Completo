SELECT
	*
FROM
	DimProduct
WHERE
	UnitPrice
BETWEEN
	50
AND
	100	
ORDER BY
	UnitPrice ASC

--------------------------------------------------------------------

SELECT
	*
FROM
	DimProduct
WHERE NOT
	UnitPrice
BETWEEN
	50
AND
	100	
ORDER BY
	UnitPrice ASC