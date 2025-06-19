USE DataWarehouse
GO

INSERT INTO silver.erp_loc_a101(cid, cntry)


SELECT 
REPLACE(cid, '-', '') cid,
CASE WHEN TRIM(cntry) = 'DE' THEN 'Germany'
WHEN TRIM(cntry) IN ('US', 'USA') THEN 'United States'
WHEN TRIM(cntry) = '' or cntry is null then 'n/a'
ELSE TRIM(cntry)
end as cntry
from bronze.erp_loc_a101
