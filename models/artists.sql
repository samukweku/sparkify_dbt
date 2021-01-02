{{
    config(materialized='table')
}}


SELECT  data->>'artist_id' as artist_id,
        data->>'artist_name' as name,
        data->>'artist_location' as location,
        data->>'artist_latitude' as latitude,
        data->>'artist_longitude' as longitude

FROM songs
