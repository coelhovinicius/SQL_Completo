SELECT
	*
FROM
	DimCustomer
WHERE
	CompanyName
IS NULL

--------------------------------------------------------------------------

SELECT
	*
FROM
	DimCustomer
WHERE
	CompanyName
IS NOT NULL