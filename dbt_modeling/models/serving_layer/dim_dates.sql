WITH date_dimension AS (
    SELECT * FROM {{ ref('dates') }}
)

SELECT
    date_day as date_key
    month_of_year as month,
 --   month_name,
    year_number as year,
    day_of_week,
FROM
    date_dimension d