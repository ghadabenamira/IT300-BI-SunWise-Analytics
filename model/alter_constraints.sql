-- Add Foreign Key Constraints
-- ============================================

ALTER TABLE fact_solar_energy
ADD CONSTRAINT fk_time
FOREIGN KEY (time_id) REFERENCES dim_date(time_id);

ALTER TABLE fact_solar_energy
ADD CONSTRAINT fk_weather
FOREIGN KEY (weather_id) REFERENCES dim_weather(weather_id);

ALTER TABLE fact_solar_energy
ADD CONSTRAINT fk_location
FOREIGN KEY (location_id) REFERENCES dim_location(location_id);
