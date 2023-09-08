-- models/my_joined_orders.sql
-- Use Jinja to reference the source tables
{{ config(schema='risk', materialized="table", unique_key="eyed_dev") }}

with
hubspot_customer as (
    select
        eyed_s,
        domain_s,
        city_s,
        country_s
    from {{ ref('external_hubspot_customers') }}
)

select
    h.domain_s,
    h.city_s,
    h.country_s,
    r.*
from {{ ref('risk_translate') }} as r
inner join hubspot_customer as h on h.eyed_s = r.eyed_dev
