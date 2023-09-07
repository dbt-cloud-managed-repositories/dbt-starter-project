
{{ config(materialized='view') }}


select 
root.eyed, 
finding.id,
finding.name,
finding.identifier,
finding.description_dev,
finding.category,
finding.destinations,
finding.is_combi,
finding.version,
finding.scan_date,
finding.translation_date,
finding.translation_status,
finding.motivation,
finding.sources,
finding.suffix,
finding.penalty,
finding.positive_score,
finding.confidence,
finding.risk_type,
finding.data,
finding.status,
finding.url,
finding.difficulty,
finding.keymap,
finding.raise_alert,
finding.alert_severity,
finding.executable
from spectrum.risk_rtf root, root.findings finding