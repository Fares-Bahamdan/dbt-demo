{% test is_los_angeles(model, column_name) %}

with validation as (
    select
        {{ column_name }} as city_field
    from {{ model }}
),

validation_errors as (
    select
        city_field
    from validation
    where city_field = 'Los Angeles'
)

select *
from validation_errors

{% endtest %}