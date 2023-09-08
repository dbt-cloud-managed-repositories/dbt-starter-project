{{ config(schema='public',materialized='table') }}

select * from spectrum.hubspot_customers
