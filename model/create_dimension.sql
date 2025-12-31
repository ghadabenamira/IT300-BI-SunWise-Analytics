-- Date Dimension
CREATE TABLE dim_date (
    time_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    hour INT,
    day INT,
    month INT,
    quarter INT,
    year INT,
    season VARCHAR(20)
);

-- Weather Dimension
CREATE TABLE dim_weather (
    weather_id INT AUTO_INCREMENT PRIMARY KEY,
    ghi FLOAT,
    temperature FLOAT,
    humidity INT,
    wind_speed FLOAT,
    isSun TINYINT
);

-- Location Dimension
CREATE TABLE dim_location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(100),
    region VARCHAR(100),
    latitude FLOAT,
    longitude FLOAT,
    mena_region VARCHAR(100)
);
