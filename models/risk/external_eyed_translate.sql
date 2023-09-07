{{ config(materialized='view') }}


select prod, dev
from spectrum.eyed_translate 