{{
    config(materialized='table')
}}

SELECT  data->>'song_id' as song_id,
		data->>'title' as title,
        data->>'artist_id' as artist_id,
        data->>'year' as year,
        data->>'duration' as duration
FROM songs
