{{
    config(materialized='table')
}}

SELECT  user_id,
        first_name,
        last_name,
        gender,
        level
FROM {{ ref('logs_next_song') }}
