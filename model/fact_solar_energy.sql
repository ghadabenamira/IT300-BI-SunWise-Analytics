-- Create Fact Table (without constraints)
-- ============================================

CREATE TABLE fact_solar_energy (
    fact_id INT AUTO_INCREMENT PRIMARY KEY,
    time_id INT,
    weather_id INT,
    location_id INT,
    energy_delta_wh FLOAT
);
