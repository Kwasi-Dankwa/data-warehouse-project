use DataWarehouse
go

INSERT INTO silver.erp_cust_az12(
cid, bdate, gen)

select 
CASE WHEN cid LIKE 'NAS%' THEN substring(cid, 4, LEN(cid)) -- removes nas prefix if present
 ELSE cid
 end as cid,
case when bdate > GETDATE() THEN NULL
ELSE bdate
END AS bdate,
CASE WHEN UPPER(TRIM(gen)) IN ('F', 'FEMALE') THEN 'Female'
     WHEN UPPER(TRIM(gen)) IN ('M', 'MALE') THEN 'MALE'
     ELSE 'n/a'
END AS gen -- normalizes gender values and handles unknown case values
from bronze.erp_cust_az12
