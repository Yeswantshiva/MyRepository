{% snapshot orders_snapshot %}

{{  config(target_database = 'ANALYTICS', target_schema = 'SNAPSHOTS', unique_key = 'ID',strategy = 'timestamp' , updated_at = '_etl_loaded_at') }}

select * from {{ ref('stg_orders') }} 

{% endsnapshot %}