SELECT 
    {{ dbt_utils.generate_surrogate_key(['session_id', 'song_id']) }} as fact_key,
    session_id,
    song_id,
    {{ dbt_utils.generate_surrogate_key(['song_id']) }} as song_key,
    {{ dbt_utils.generate_surrogate_key(['user_id']) }} as user_key, 
    {{ dbt_utils.generate_surrogate_key(['artist_id']) }} as artist_key,
    session_start_time,
    price,	
    currency,	
    liked,	
    liked_since		
FROM {{var("transform_schema")}}.sessions
