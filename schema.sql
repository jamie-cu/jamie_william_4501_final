CREATE TABLE yellow_taxi_trips (
	vendorid BIGINT, 
	pickup_datetime DATETIME, 
	dropoff_datetime DATETIME, 
	passenger_count BIGINT, 
	trip_distance FLOAT, 
	"RateCodeID" BIGINT, 
	store_and_fwd_flag BIGINT, 
	payment_type BIGINT, 
	fare_amount FLOAT, 
	"Miscellaneous_Extras" FLOAT, 
	mta_tax FLOAT, 
	tip_amount FLOAT, 
	tolls_amount FLOAT, 
	improvement_surcharge FLOAT, 
	total_amount FLOAT, 
	congestion_surcharge FLOAT, 
	airport_fee FLOAT, 
	pickup_latitude FLOAT, 
	pickup_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	dropoff_longitude FLOAT
);

CREATE TABLE uber_trips (
	request_datetime DATETIME, 
	on_scene_datetime DATETIME, 
	pickup_datetime DATETIME, 
	dropoff_datetime DATETIME, 
	trip_miles FLOAT, 
	trip_time FLOAT, 
	base_passenger_fare FLOAT, 
	tolls FLOAT, 
	"Black_Car_Fund" FLOAT, 
	sales_tax FLOAT, 
	congestion_surcharge FLOAT, 
	airport_fee FLOAT, 
	tips FLOAT, 
	driver_pay FLOAT, 
	shared_request_flag BIGINT, 
	shared_match_flag BIGINT, 
	access_a_ride_flag FLOAT, 
	wav_request_flag BIGINT, 
	wav_match_flag BIGINT, 
	pickup_latitude FLOAT, 
	pickup_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	dropoff_longitude FLOAT
);

CREATE TABLE weather_hourly (
	"Date" DATETIME, 
	"Hour" BIGINT, 
	"REPORT_TYPE" TEXT, 
	"SOURCE" BIGINT, 
	"HourlyAltimeterSetting" FLOAT, 
	"HourlyDewPointTemperature" FLOAT, 
	"HourlyDryBulbTemperature" FLOAT, 
	"HourlyPrecipitation" FLOAT, 
	"HourlyPressureChange" FLOAT, 
	"HourlyPressureTendency" FLOAT, 
	"HourlyRelativeHumidity" FLOAT, 
	"HourlySeaLevelPressure" FLOAT, 
	"HourlyStationPressure" FLOAT, 
	"HourlyVisibility" FLOAT, 
	"HourlyWetBulbTemperature" FLOAT, 
	"HourlyWindGustSpeed" FLOAT, 
	"HourlyWindSpeed" FLOAT
);

CREATE TABLE weather_daily (
	"Date" DATETIME, 
	"REPORT_TYPE" TEXT, 
	"SOURCE" BIGINT, 
	"Sunrise" FLOAT, 
	"Sunset" FLOAT, 
	"DailyAverageDewPointTemperature" FLOAT, 
	"DailyAverageDryBulbTemperature" FLOAT, 
	"DailyAverageRelativeHumidity" FLOAT, 
	"DailyAverageSeaLevelPressure" FLOAT, 
	"DailyAverageStationPressure" FLOAT, 
	"DailyAverageWetBulbTemperature" FLOAT, 
	"DailyAverageWindSpeed" FLOAT, 
	"DailyCoolingDegreeDays" FLOAT, 
	"DailyDepartureFromNormalAverageTemperature" FLOAT, 
	"DailyHeatingDegreeDays" FLOAT, 
	"DailyMaximumDryBulbTemperature" FLOAT, 
	"DailyMinimumDryBulbTemperature" FLOAT, 
	"DailyPeakWindSpeed" FLOAT, 
	"DailyPrecipitation" FLOAT, 
	"DailySnowDepth" FLOAT, 
	"DailySnowfall" FLOAT, 
	"DailySustainedWindSpeed" FLOAT
);

CREATE TABLE sunrise_daily (
	"Date" DATETIME, 
	"Sunrise" BIGINT
);

CREATE TABLE sunset_daily (
	"Date" DATETIME, 
	"Sunset" BIGINT
);

