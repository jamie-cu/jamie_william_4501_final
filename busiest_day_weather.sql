
WITH total AS(
    SELECT
        trip_miles AS trip_distance,
        strftime('%Y-%m-%d',pickup_datetime) AS date
    FROM
        uber_trips
    WHERE
        strftime('%Y',pickup_datetime)='2023'
    UNION ALL
    SELECT
        trip_distance,
        strftime('%Y-%m-%d',pickup_datetime) AS date
    FROM
        yellow_taxi_trips
    WHERE
        strftime('%Y',pickup_datetime)='2023'
),
cnt AS(
    SELECT
        COUNT(*) as ride_cnt,
        AVG(trip_distance) AS DailyAverageTripDistance,
        date
    FROM
        total
    GROUP BY date
),
weather AS(
    SELECT
        DailyAverageWindSpeed,
        DailyPrecipitation/24 AS DailyAveragePrecipitation,
        strftime('%Y-%m-%d',date) AS date
    FROM
        weather_daily
)
    SELECT
        cnt.date,
        ride_cnt,
        DailyAverageTripDistance,
        DailyAveragePrecipitation,
        DailyAverageWindSpeed
    FROM
        cnt
    LEFT JOIN weather ON cnt.date=weather.date
    ORDER BY ride_cnt DESC
    LIMIT 10

