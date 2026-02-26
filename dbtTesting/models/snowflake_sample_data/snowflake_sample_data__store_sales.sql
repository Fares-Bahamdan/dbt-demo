with source_store_sales as(
    select * from {{ source('snowflake_sample_data', 'STORE_SALES') }}
),

final as (
    select * from source_store_sales
)

select * from final