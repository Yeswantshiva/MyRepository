{{ config( materialized = 'table', database = 'QWT_analytics', schema = 'staging' ) }}
select * from  QWT_RAW.SALES.PRODUCTS