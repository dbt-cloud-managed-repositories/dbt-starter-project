{{ config(materialized="view") }} 

select * from spectrum.hubspot_customers
