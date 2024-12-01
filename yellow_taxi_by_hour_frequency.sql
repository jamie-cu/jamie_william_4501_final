
    SELECT 
        strftime('%H', pickup_datetime) AS hour,
        COUNT(*) AS ride_cnt
    FROM 
        yellow_taxi_trips
    GROUP BY 
        hour
    ORDER BY 
        ride_cnt DESC;
