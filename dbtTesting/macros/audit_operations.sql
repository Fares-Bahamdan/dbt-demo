{% macro insert_audits(action_name) %}


insert into SNOWFLAKEDBT.public.HOOK_TEST (value)
values ('{{ action_name }}')


{% endmacro %}