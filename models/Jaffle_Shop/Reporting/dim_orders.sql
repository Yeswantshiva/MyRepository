{{ config(materialized="view",  schema="reporting") }}
select * from  {{ ref("trf_Orders") }}