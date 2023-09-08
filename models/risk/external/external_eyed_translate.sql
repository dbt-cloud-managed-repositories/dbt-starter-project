{{ config(schema="public", materialized="table") }}


select
    prod as eyed_prd,
    dev as eyed_dev
from spectrum.eyed_translate
