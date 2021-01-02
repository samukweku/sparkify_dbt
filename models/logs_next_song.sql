{{
    config(materialized='table')
}}

SELECT  to_timestamp((log_data->>'ts')::bigint/1000) as timer,
        log_data->>'userId' as user_id,
        log_data->>'firstName' as first_name,
        log_data->>'lastName' as last_name,
        log_data->>'gender' as gender,
        log_data->>'level' as level,
        log_data->>'song' as song,
        log_data->>'artist' as artist,
        log_data->>'length' as length
FROM logs
WHERE log_data->>'page' ='NextSong'