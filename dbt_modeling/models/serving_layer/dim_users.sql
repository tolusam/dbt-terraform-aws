SELECT 
{{ dbt_utils.generate_surrogate_key(['user_id']) }} as user_key,
    user_id,	
    user_lastname,
    user_name,	
    user_since,
    country_code
FROM {{var("transform_schema")}}.users