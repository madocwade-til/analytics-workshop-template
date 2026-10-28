with dates as (SELECT * FROM {{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2026-01-01' as date)",
    end_date="cast('2028-01-01' as date)"
)}}),

tracks as (SELECT * FROM {{ref('_stg_tracks')}})

SELECT dates.date_day, COUNT(*) FROM
dates
LEFT JOIN tracks ON dates.date_day = tracks.release_day
GROUP BY dates.date_day