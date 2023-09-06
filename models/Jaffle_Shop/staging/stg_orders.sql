{{ config(materialized='incremental', unique_key='id') }}

select * from  RAW.JAFFLE_SHOP.orders

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where _ETL_Loaded_at >= (select max(_ETL_Loaded_at) from {{ this }})

{% endif %}

    

