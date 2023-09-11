{{ config(materialized="view",  schema="reporting") }}
select * from  {{ ref("trf_order_payment_method_amounts") }}