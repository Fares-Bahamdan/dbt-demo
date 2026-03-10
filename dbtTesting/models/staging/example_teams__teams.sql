{{ config(materialized="ephemeral")}}

with teams as (
    select 'Lakers' as Teams
    union all
    select 'Clippers' as Teams
    union all
    select '76ers' as Teams
    union all
    select 'Heat' as Teams
    union all
    select 'Bulls' as Teams
)

select *
from teams