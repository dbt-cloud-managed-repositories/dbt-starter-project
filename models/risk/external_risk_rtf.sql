
{{ config(materialized='view') }}


select a.eyed, f.id from spectrum.risk_rtf a, a.findings f