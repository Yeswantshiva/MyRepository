{{ config(materialized='table' ,  schema = 'Transforming')}}
{% set payment_methods = get_payment_methods() %}
select
orderid,
{% for paymentmethod in payment_methods %}
sum(case when paymentmethod = '{{paymentmethod}}' then amount end) as {{paymentmethod}}_amount,
{% endfor %}
sum(amount) as total_amount,
sum({{ cents_to_dollars('amount') }}) as total_amount_usd

from {{ ref('stg_payments') }}
group by 1
