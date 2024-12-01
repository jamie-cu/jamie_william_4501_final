
WITH total AS 
(
    SELECT 
        trip_distance
    FROM 
        yellow_taxi_trips
    WHERE 
        strftime('%Y-%m', pickup_datetime) = '2024-01'
UNION ALL

    SELECT 
        trip_miles AS trip_distance
    FROM 
        uber_trips
    WHERE 
        strftime('%Y-%m', pickup_datetime) = '2024-01'
),
ordered_total AS
(
    SELECT
        trip_distance,
        ROW_NUMBER()OVER(ORDER BY trip_distance) AS row_num,
        COUNT(*) OVER() AS total_cnt
    FROM
        total
),
percentile AS
(
    SELECT
        trip_distance
    FROM
        ordered_total
    WHERE
        row_num >= CAST(total_cnt * 0.95 AS INTEGER)
)
    SELECT
        trip_distance
    FROM
        percentile
    ORDER BY trip_distance
    LIMIT 1
    