{{
    config(materialized='table')
}}

select timer,
       extract(hour from timer) as hour,
	   extract(day from timer) as day,
       extract(week from timer) as week,
       extract(month from timer) as month,
       extract(year from timer) as "year",
       extract(dow from timer) as weekday
from {{ ref('logs_next_song') }}
