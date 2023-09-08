-- models/my_joined_orders.sql
-- Use Jinja to reference the source tables
{{ config(materialized="view", unique_key="eyed_prd") }}

with
eyed_translate as (
    select
        eyed_prd,
        eyed_dev
    from {{ ref("external_eyed_translate") }}
)

select
    t.eyed_dev,
    r.*
from {{ ref("external_risk_rtf") }} as r
inner join eyed_translate as t on t.eyed_prd = r.eyed
