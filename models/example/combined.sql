with
    hubspot as (select * from {{ ref("hubspot_dbt") }}),

    pagerduty as (select * from {{ ref("pagerduty_dbt") }}),

    final as (
        select *
        from hubspot
        inner join pagerduty on hubspot.eyed_s = pagerduty."EID_EyeD_s"
    )

select *
from final
