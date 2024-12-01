
WITH snowiest_days AS (
    SELECT 
        strftime('%Y-%m-%d',date) AS date,
        DailySnowfall
    FROM 
        weather_daily
    WHERE 
        DailySnowfall > 0
    GROUP BY 
        date
    ORDER BY 
        DailySnowfall DESC
    LIMIT 10
),total AS 
(
    SELECT 
        strftime('%Y-%m-%d', pickup_datetime) AS date
    FROM 
        yellow_taxi_trips
UNION ALL
    SELECT 
        strftime('%Y-%m-%d', pickup_datetime) AS date
    FROM 
        uber_trips
),cnt AS(
    SELECT
        COUNT(*) AS ride_cnt,
        date
    FROM total
    GROUP BY date
)
    SELECT 
        s.date, 
        s.DailySnowfall,
        c.ride_cnt
    FROM 
        snowiest_days s
    LEFT JOIN 
        cnt c ON c.date = s.date
    GROUP BY 
        s.date
    ORDER BY 
        s.DailySnowfall DESC
