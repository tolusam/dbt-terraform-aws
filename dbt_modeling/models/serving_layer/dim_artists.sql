SELECT 
    {{ dbt_utils.generate_surrogate_key(['artist_id']) }} as artist_key,
    artist_id,
    artist_name,
    artist_familiarity,
    artist_hotttnesss
FROM {{var("transform_schema")}}.songs