{{config(materialized='view')}}

{%set var=2%}
{%set user_type = 2%}

{%if var == 1%}
yay it works!
{%else%}
boooooooo
{%endif%}



SELECT order_id, order_date, revenue
FROM {{ref('_stg_albums')}}
WHERE 1=1
{%if user_type == 1%}
AND region IN ('SW', 'NW', 'NE', 'SE')

{%elif user_type == 2%}
AND region = {{ manager_region }}
{%else%}
AND sales_rep == {{user_id}}
{%endif%}

