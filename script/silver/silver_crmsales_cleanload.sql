USE DataWarehouse
go

-- load and insert after cleaning and processing--
INSERT INTO silver.crm_sales_details (
sls_ord_num, sls_prd_key, sls_cust_id, sls_order_dt, sls_ship_dt, sls_due_dt, sls_sales, sls_quantity, sls_price
)

select sls_ord_num,
sls_prd_key,
sls_cust_id,
--handling and data type casting--
CASE WHEN sls_order_dt = 0 or len(sls_order_dt) != 8 then null
else CAST(CAST(sls_order_dt as VARCHAR) as DATE)
END AS sls_order_dt,
CASE WHEN sls_order_dt = 0 or len(sls_order_dt) != 8 then null
else CAST(CAST(sls_order_dt as VARCHAR) as DATE)
END AS sls_ship_dt,
CASE WHEN sls_due_dt = 0 or len(sls_due_dt) != 8 then null
else CAST(CAST(sls_due_dt as VARCHAR) as DATE)
END AS sls_due_dt,
CASE WHEN sls_sales is null or sls_sales <0 or sls_sales != sls_quantity * ABS(sls_price)
then sls_quantity * ABS(sls_price)
else sls_sales
END AS sls_sales,
sls_quantity,
CASE WHEN sls_price is null or sls_price <=0
then sls_sales / nullif(sls_quantity, 0)
else sls_price
END AS sls_price
from bronze.crm_sales_details
 