{{ config(schema="risk", materialized="table") }}


select prod as eyed_prd, eyed_dev
from spectrum.eyed_translate
