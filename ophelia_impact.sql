
WITH hours_table AS(
    SELECT
        datetime('2023-09-25 00:00') AS hour
    UNION ALL
    SELECT
        datetime(hour,'+1 hour') AS hour
    FROM
        hours_table
    WHERE
        hour<datetime('2023-10-03 23:00')
),
total AS 
(
    SELECT 
        strftime('%Y-%m-%d %H', pickup_datetime) AS hour
    FROM 
        yellow_taxi_trips
    WHERE strftime('%Y-%m-%d %H', pickup_datetime) BETWEEN '2023-09-25 00:00' and '2023-10-03 23:59'
UNION ALL
    SELECT 
        strftime('%Y-%m-%d %H', pickup_datetime) AS hour
    FROM 
        uber_trips
    WHERE strftime('%Y-%m-%d %H', pickup_datetime) BETWEEN '2023-09-25 00:00' and '2023-10-03 23:59'
),cnt AS(
    SELECT
        COUNT(*) AS ride_cnt,
        hour
    FROM total
    GROUP BY hour
),
weather AS(
    SELECT
        strftime('%Y-%m-%d %H', CAST(Date AS TEXT) || ' ' || printf('%02d', Hour)||':00:00' ) AS hour,

        HourlyPrecipitation
    FROM
        weather_hourly
    WHERE strftime('%Y-%m-%d', Date) BETWEEN '2023-09-25' and '2023-10-03'

)
SELECT
    strftime('%Y-%m-%d %H',h.hour),
    COALESCE(ride_cnt,0),
    COALESCE(HourlyPrecipitation,0)
FROM hours_table h
LEFT JOIN cnt c ON strftime('%Y-%m-%d %H', h.hour)= c.hour
LEFT JOIN weather w ON strftime('%Y-%m-%d %H', h.hour)=w.hour
