
{{ config(materialized='table') }}

select *
 from RAW.STRIPE.PAYMENT

