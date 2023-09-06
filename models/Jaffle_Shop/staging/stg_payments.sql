
{{ config(materialized='table') }}

select *,
{{ cents_to_dollars('amount') }} as amount_usd
 from RAW.STRIPE.PAYMENT

