{{ config(materialized='table') }}

    select * from  {{ env_var('DBT_Source_database','RAW' ) }}.JAFFLE_SHOP.{{ env_var('DBT_source_Table', 'customers')
     }}
    where id >= {{ var('custid', 40) }}

----dbt run -s stg_customers --vars '{custid:80}  syntax to run at command line. 
--Precedence : first - command line , sec - yaml , thrid - model 