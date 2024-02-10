-- WHERE para Datas

-- Clientes nascidos após 31/12/1970
SELECT
	*
FROM 
	DimCustomer
WHERE
	BirthDate > '1970-12-31'
ORDER BY
	BirthDate DESC