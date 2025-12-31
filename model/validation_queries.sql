-- Validation & Consistency Checks
-- ============================================

-- Check fact table row count
SELECT COUNT(*) AS total_fact_rows
FROM fact_solar_energy;

-- Check missing foreign keys
SELECT *
FROM fact_solar_energy
WHERE time_id IS NULL
   OR weather_id IS NULL
   OR location_id IS NULL;

-- Verify joins work correctly
SELECT 
    f.energy_delta_wh,
    d.date,
    l.region,
    w.ghi
FROM fact_solar_energy f
JOIN dim_date d ON f.time_id = d.time_id
JOIN dim_location l ON f.location_id = l.location_id
JOIN dim_weather w ON f.weather_id = w.weather_id
LIMIT 10;
