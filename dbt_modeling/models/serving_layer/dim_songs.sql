SELECT 
{{ dbt_utils.generate_surrogate_key(['song_id']) }} as song_key,
    song_id,
    title as song_title,
    track_id,
    release,
    duration,
    year
FROM {{var("transform_schema")}}.songs