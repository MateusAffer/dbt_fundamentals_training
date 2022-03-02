{{
    config(
        materialized='view'
    )
}}


WITH all_days_2020 AS (

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2020-01-01' as date)",
    end_date="cast('2021-01-01' as date)"
   )
}}

)

SELECT * 
FROM all_days_2020